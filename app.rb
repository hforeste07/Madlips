require "sinatra"
require "sinatra/reloader"
require "dotenv/load"
require "better_errors"
require "openai"
require "active_support/core_ext/string"
require_relative 'services/mad_lib_service'

client = OpenAI::Client.new(access_token: ENV["OPENAI_API_KEY"])

get("/") do
  @genres = MadLibService::STORIES.keys

  erb(:homepage)
end

get("/:genre") do
  @genre = params.fetch("genre")
  @sub_genres = MadLibService::STORIES[@genre.to_sym].keys

  erb(:genre)
end

get("/:genre/:sub_genre/empty_story") do
  @genre = params.fetch("genre")
  @sub_genre = params.fetch("sub_genre")
  @story = MadLibService::STORIES.dig(@genre.to_sym, @sub_genre.to_sym)
  @title = @story[:title]
  @placeholders = MadLibService.placeholders_for(@story[:template])

  erb(:empty_story)
end

post("/:genre/:sub_genre/filled_story") do
  @genre = params.fetch("genre")
  @sub_genre = params.fetch("sub_genre")
  @story = MadLibService::STORIES.dig(@genre.to_sym, @sub_genre.to_sym)

  template = ERB.new(@story[:template])
  placeholders = MadLibService.placeholders_for(@story[:template])
  values = {}

  placeholders.each do |key|
    val = params[key]
    values[key.to_sym] = val.nil? || val.strip.empty? ? nil : val.strip
  end

  if params["mode"] == "use_ai"
    # Find missing keys
    missing_keys = values.select { |_, v| v.nil? }.keys

    if missing_keys.any?
      prompt = "You are an assistant for a Madlibs story. Fill in the following parts of speech with vivid, one-word responses:\n" +
               missing_keys.map { |k| "- #{k.to_s.gsub('_', ' ')}" }.join("\n")

      response = OpenAIClient.chat(
        parameters: {
          model: "gpt-4",
          messages: [{ role: "user", content: prompt }],
          temperature: 0.7
        }
      )

      content = response.dig("choices", 0, "message", "content")

      content.each_line do |line|
        if line =~ /- (\w[\w\s]*):\s*(\w+)/
          key, word = $1.strip.gsub(" ", "_").to_sym, $2
          values[key] ||= word
        end
      end
    end
  end

  @filled_story = template.result_with_hash(values)
  @title = @story[:title]

  erb(:filled_story)
end
