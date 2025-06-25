require "sinatra"
require "sinatra/reloader"
require "dotenv/load"
require_relative 'services/mad_lib_service'


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

  # get template
  template = ERB.new(@story[:template])

  # fill in with submitted params
  @filled_story = template.result_with_hash(params)

  erb(:filled_story)
end
