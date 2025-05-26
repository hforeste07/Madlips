require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

#--------------------------------------Horror------------------------------------#

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
  @place = params.fetch("place")
  @object = params.fetch("object")
  @noun = params.fetch("noun")
  @verb_one = params.fetch("verb_one")
  @verb_two = params.fetch("verb_two")
  @verb_three = params.fetch("verb_three")
  @verb_four = params.fetch("verb_four")
  @adj_one = params.fetch("adjective_one")
  @adj_two = params.fetch("adjective_two")
  @adj_three = params.fetch("adjective_three")
  @adj_four = params.fetch("adjective_four")
  @adj_five = params.fetch("adjective_five")
  @adj_six = params.fetch("adjective_six")
  @adj_seven = params.fetch("adjective_seven")
  @adj_eight = params.fetch("adjective_eight")
  @adj_nine = params.fetch("adjective_nine")
  @adj_ten = params.fetch("adjective_ten")
  @adj_eleven = params.fetch("adjective_eleven")
  @adv_one = params.fetch("adverb_one")
  @adv_two = params.fetch("adverb_two")
  @adv_three = params.fetch("adverb_three")
  @adv_four = params.fetch("adverb_four")

  erb(:horror_asylum_result)
end

get("/horror/murder/form") do
  erb(:horror_murder_form)
end

get("/horror/murder/madlib") do
  @adj_one = params.fetch("adjective_one")
  @adj_two = params.fetch("adjective_two")
  @adj_three = params.fetch("adjective_three")
  @adj_four = params.fetch("adjective_four")
  @adj_five = params.fetch("adjective_five")
  @adj_six = params.fetch("adjective_six")
  @name_one = params.fetch("name_one")
  @name_two = params.fetch("name_two")
  @name_three = params.fetch("name_three")
  @name_four = params.fetch("name_four")
  @name_five = params.fetch("name_five")
  @object_one = params.fetch("object_one")
  @object_two = params.fetch("object_two")
  @furniture_one = params.fetch("furniture_one")
  @furniture_two = params.fetch("furniture_two")
  @village = params.fetch("village")
  @building = params.fetch("building")
  @occupation = params.fetch("occupation")
  @sound = params.fetch("sound")
  @emotion = params.fetch("emotion")
  @color = params.fetch("color")
  @liquid = params.fetch("liquid")
  @room = params.fetch("room")
  @beverage = params.fetch("beverage")
  @adverb = params.fetch("adverb")

  erb(:horror_murder_result)
end

get("/horror/nature/form") do
  erb(:horror_nature_form)
end

get("/horror/nature/madlib") do
  @adj_one = params.fetch("adjective_one")
  @adj_two = params.fetch("adjective_two")
  @adj_three = params.fetch("adjective_three")
  @adj_four = params.fetch("adjective_four")
  @adj_five = params.fetch("adjective_five")
  @adj_six = params.fetch("adjective_six")
  @adv_one = params.fetch("adverb_one")
  @adv_two = params.fetch("adverb_two")
  @adv_three = params.fetch("adverb_three")
  @adv_four = params.fetch("adverb_four")
  @adv_five = params.fetch("adverb_five")
  @adv_six = params.fetch("adverb_six")
  @adv_seven = params.fetch("adverb_seven")
  @adv_eight = params.fetch("adverb_eight")
  @adv_nine = params.fetch("adverb_nine")
  @animal_one = params.fetch("animal_one")
  @animal_two = params.fetch("animal_two")
  @plural_noun_one = params.fetch("plural_noun_one")
  @plural_noun_two = params.fetch("plural_noun_two")
  @noun = params.fetch("noun")
  @name = params.fetch("name")
  @number = params.fetch("number")
  @verb = params.fetch("verb")
  @color = params.fetch("color")
  @scent = params.fetch("scent")
  @emotion = params.fetch("emotion")
  @musical_instrument = params.fetch("musical_instrument")

  erb(:horror_nature_result)
end

#--------------------------------------Scifi------------------------------------#

get("/Scifi") do
  erb(:Scifi)
end

get("/Scifi/aliens/form") do
  erb(:Scifi_aliens_form)
end

get("/Scifi/aliens/madlibs") do
  @noun_one = params.fetch("noun_one")
  @noun_two = params.fetch("noun_two")
  @noun_three = params.fetch("noun_three")
  @noun_four = params.fetch("noun_four")
  @noun_five = params.fetch("noun_five")
  @adj_one = params.fetch("adjective_one")
  @adj_two = params.fetch("adjective_two")
  @adj_three = params.fetch("adjective_three")
  @adj_four = params.fetch("adjective_four")
  @adj_five = params.fetch("adjective_five")
  @adj_six = params.fetch("adjective_six")
  @plural_noun_one = params.fetch("plural_noun_one")
  @plural_noun_two = params.fetch("plural_noun_two")
  @emotion_one = params.fetch("emotion_one")
  @emotion_two = params.fetch("emotion_two")
  @captain = params.fetch("captain")
  @galaxy = params.fetch("galaxy")
  @aliens = params.fetch("aliens")
  @planet = params.fetch("planet")
  @verb = params.fetch("verb")
  @color = params.fetch("color")

  erb(:Scifi_aliens_result)
end

get("/Scifi/robots/form") do
  erb(:Scifi_robots_form)
end

get("/Scifi/robots/madlibs") do
  @adj_one = params.fetch("adjective_one")
  @adj_two = params.fetch("adjective_two")
  @adj_three = params.fetch("adjective_three")
  @adj_four = params.fetch("adjective_four")
  @adj_five = params.fetch("adjective_five")
  @verb_one = params.fetch("verb_one")
  @verb_two = params.fetch("verb_two")
  @verb_three = params.fetch("verb_three")
  @verb_four = params.fetch("verb_four")
  @verb_five = params.fetch("verb_five")
  @robot = params.fetch("robot")
  @planet = params.fetch("planet")
  @plural_noun = params.fetch("plural_noun")
  @adv = params.fetch("adverb")
  @number = params.fetch("number")
  @chemical = params.fetch("chemical")
  @color = params.fetch(color)

  erb(:Scifi_robots_result)
end

get("/Scifi/space/form") do
  erb(:Scifi_space_form)
end

get("/Scifi/space/madlibs") do
  @adj_one = params.fetch("adjective_one")
  @adj_two = params.fetch("adjective_two")
  @adj_three = params.fetch("adjective_three")
  @adj_four = params.fetch("adjective_four")
  @adj_five = params.fetch("adjective_five")
  @plural_noun_one = params.fetch("plural_noun_one")
  @plural_noun_two = params.fetch("plural_noun_two")
  @plural_noun_three = params.fetch("plural_noun_three")
  @color_one = params.fetch("color_one")
  @color_two = params.fetch("color_two")
  @noun = params.fetch("noun")
  @verb = params.fetch("ver")
  @adv = params.fetch("adverb")
  @captain = params.fetch("captain")
  @starship = params.fetch("starship")
  @nebula = params.fetch("nebula")
  @equipment = params.fetch("equipment")
  @officer = params.fetch("officer")

  erb(:Scifi_space_result)
end

get("/Scifi/lab/form") do
  erb(:Scifi_lab_form)
end

get("/Scifi/lab/madlibs") do
  @adj_one = params.fetch("adjective_one")
  @adj_two = params.fetch("adjective_two")
  @adj_three = params.fetch("adjective_three")
  @verb_one = params.fetch("verb_one")
  @verb_two = params.fetch("verb_two")
  @verb_three = params.fetch("verb_three")
  @noun_one = params.fetch("noun_one")
  @noun_two = params.fetch("noun_two")
  @city  = params.fetch("city")
  @lab = params.fetch("lab")
  @scientist = params.fetch("scientist")
  @hero = params.fetch("hero")
  @villian = params.fetch("villian")
  @name = params.fetch("name")
  @rdiation = params.fetch("radiation")
  @color = params.fetch("color")
  @plural_noun = params.fetch("plural_noun")
  @being = params.fetch("being")
  @neighborhood = params.fetch("neighborhood")
  @adv  = params.fetch("adverb")

  erb(:Scifi_lab_result)
end
