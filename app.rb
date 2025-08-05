require "sinatra"
require "sinatra/reloader"
require "dotenv/load"
require "openai"

require "active_support/core_ext/string"
require_relative 'services/mad_lib_service'
require_relative 'helpers/madlib_helper'


OpenAIClient = OpenAI::Client.new(access_token: ENV["OPENAI_API_KEY"])

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
  puts "@story[:template]:"
  pp @story[:template]
  puts "params:"
  pp params
  placeholders = MadLibService.placeholders_for(@story[:template])
  values = {}


  placeholders.each do |key|
    val = params[key.to_s] || params[key.to_sym]
    values[key.to_sym] = val.nil? || val.strip.empty? ? nil : val.strip
  end

  if params["mode"] == "use_ai"
    # Find missing keys
    missing_keys = values.select { |_, v| v.nil? }.keys

    if missing_keys.any?
      prompt = <<~PROMPT
        "You are an assistant for a MadLibs story. Some fields were left empty. Please help fill in the following keys with vivid, one-word responses.

        Respond strictly in this format:
        - key: word

        Here are the keys:
         #{missing_keys.map { |k| "- #{k}:" }.join("\n")}
      PROMPT

      response = OpenAIClient.chat(
        parameters: {
          model: "gpt-4",
          messages: [{ role: "user", content: prompt }],
          temperature: 0.7
        }
      )

      content = response.dig("choices", 0, "message", "content")
      puts "GPT response:\n#{content}"

      content.each_line do |line|
        if line.strip =~ /^- (\w+):\s*(.+)$/
          key = $1.to_sym
          word = $2.strip
          values[key] ||= word
        end
      end
    end
  

  puts "Final values used for story:"
  pp values
end

  @filled_story = template.result_with_hash(values)
  @title = @story[:title]

  erb(:filled_story)
end
