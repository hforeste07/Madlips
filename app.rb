require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end



get("/horror") do
  erb(:horror)
end

get("/horror/ghost/form") do
  erb(:horror_ghost_form)
end

get("/horror/ghost/madlib") do
  @village = params.fetch("village")
  @haunted_place = params.fetch("haunted_place")
  @place = params.fetch("place")
  @animal_one = params.fetch("animal_one")
  @animal_two = params.fetch("animal_two")
  @body_part_one = params.fetch("body_part_one")
  @body_part_one = params.fetch("body_part_one")
  @object = params.fetch("object")
  @emotion = params.fetch("emotion")
  @liquid = params.fetch("liquid")
  @scent = params.fetch("scent")
  @clothing = params.fetch("clothing")
  @color = params.fetch("color")
  @adj_one = params.fetch("adjective_one")
  @adj_two = params.fetch("adjective_two")
  @adj_three = params.fetch("adjective_three")
  @adj_four = params.fetch("adjective_four")
  @adj_five = params.fetch("adjective_five")
  @noun_one = params.fetch("noun_one")
  @noun_two = params.fetch("noun_two")
  @noun_three = params.fetch("noun_three")
  @noun_four = params.fetch("noun_four")
  @plural_noun_one = params.fetch("plural_noun_one")

  erb(:horror_ghost_result)
end

get("/horror/asylum/form") do
  erb(:horror_asylum_form)
end

get("/horror/asylum/madlib") do
  erb(:horror_asylum_result)
end

get("/horror/murder/form") do
  erb(:horror_murder_form)
end

get("/horror/murder/madlib") do
  erb(:horror_murder_result)
end

get("/horror/nature/form") do
  erb(:horror_nature_form)
end

get("/horror/nature/madlib") do
  erb(:horror_nature_result)
end



get("/scify") do
  erb(:scify)
end
