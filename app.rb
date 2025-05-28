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

get("/scifi") do
  erb(:scifi)
end

get("/scifi/aliens/form") do
  erb(:scifi_aliens_form)
end

get("/scifi/aliens/madlibs") do
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

  erb(:scifi_aliens_result)
end

get("/scifi/robots/form") do
  erb(:scifi_robots_form)
end

get("/scifi/robots/madlibs") do
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

  erb(:scifi_robots_result)
end

get("/scifi/space/form") do
  erb(:scifi_space_form)
end

get("/scifi/space/madlibs") do
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

  erb(:scifi_space_result)
end

get("/scifi/lab/form") do
  erb(:scifi_lab_form)
end

get("/scifi/lab/madlibs") do
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

  erb(:scifi_lab_result)
end

#--------------------------------------Fantasy------------------------------------#

get("/fantasy") do
  erb(:fantasy)
end

get("/fantasy/magic/form") do
  erb(:fantasy_magic_form)
end

get("/fantasy/magic/madlibs") do
  @adj_one = params.fetch("adjective_one")
  @adj_two = params.fetch("adjective_two")
  @adj_three = params.fetch("adjective_three")
  @adj_four = params.fetch("adjective_four")
  @adj_five = params.fetch("adjective_five")
  @adj_six = params.fetch("adjective_six")
  @noun_one = params.fetch("noun_one")
  @noun_two = params.fetch("noun_two")
  @object_one = params.fetch("object_one")
  @object_two = params.fetch("object_two")
  @color_one = params.fetch("color_one")
  @color_two = params.fetch("color_two")
  @magical_land = params.fetch("magical_land")
  @wiz = params.fetch("wiz")
  @creature = params.fetch("creature")
  @queen = params.fetch("queen")
  @villian = params.fetch("villian")
  @tool = params.fetch("tool")
  @number  = params.fetch("number")
  @unit = params.fetch("unit")
  @verb = params.fetch("verb")
  @prep = params.fetch("prep")
  @emotion = params.fetch("emotion")
  @sound = params.fetch("sound")

  erb(:fantasy_magic_result)
end

get("/fantasy/fairy/form") do
  erb(:fantasy_fairy_form)
end

get("/fantasy/fairy/madlibs") do
  @name_one = params.fetch("name_one")
  @name_two = params.fetch("name_two")
  @name_three = params.fetch("name_three")
  @adj_one = params.fetch("adjective_one")
  @adj_two = params.fetch("adjective_two")
  @adj_three = params.fetch("adjective_three")
  @adj_four = params.fetch("adjective_four")
  @adj_five = params.fetch("adjective_five")
  @noun_one = params.fetch("noun_one")
  @noun_two = params.fetch("noun_two")
  @noun_three = params.fetch("noun_three")
  @occupation = params.fetch("occupation")
  @color = params.fetch("color")
  @number = params.fetch("number")
  @ability = params.fetch("ability")
  @hobby = params.fetch("hobby")
  @item = params.fetch("item")
  @adv = params.fetch("adverb")
  @realm = params.fetch("realm")

  erb(:fantasy_fairy_result)
end

get("/fantasy/dawrf/form") do
  erb(:fantasy_dawrf_form)
end

get("/fantasy/dwarf/madlibs") do
  @adj_one = params.fetch("adjective_one")
  @adj_two = params.fetch("adjective_two")
  @adj_three = params.fetch("adjective_three")
  @adj_four = params.fetch("adjective_four")
  @color_one = params.fetch("color_one")
  @color_two = params.fetch("color_two")
  @adv_one = params.fetch("adverb_one")
  @adv_two = params.fetch("adverb_two")
  @mountain = params.fetch("mountain")
  @dwarven_name = params.fetch("dwarven_name")
  @dragon_name = params.fetch("dragon_name")
  @noun = params.fetch("noun")
  @cavern = params.fetch("cavern")
  @metal = params.fetch("metal")
  @weapon = params.fetch("weapon")
  @beverage = params.fetch("beverage")
  @food = params.fetch("food")
  @instrument = params.fetch("instrument")
  @building_material = params.fetch("building_material")
  @creature = params.fetch("creature")
  @animal = params.fetch("animal")
  @object = params.fetch("object")

  erb(:fantasy_dwarf_result)
end

get("/fantasy/knights/form") do
  erb(:fantasy_knights_form)
end

get("/fantasy/knights/madlibs") do
  @adj_one = params.fetch("adjective_one")
  @adj_two = params.fetch("adjective_two")
  @color_one = params.fetch("color_one")
  @color_two = params.fetch("color_two")
  @metal_one = params.fetch("metal_one")
  @metal_two = params.fetch("metal_two")
  @knight_one = params.fetch("knight_one")
  @knight_two = params.fetch("knight_two")
  @noun = params.fetch("noun")
  @adv = params.fetch("adverb")
  @armor = params.fetch("armor")
  @kingdom = params.fetch("kingdom")
  @number = params.fetch("number")
  @instrument = params.fetch("instrument")
  @lady = params.fetch("lady")
  @villian = params.fetch("villian")

  erb(:fantasy_knights_result)
end

#--------------------------------------Adventure------------------------------------#


get("/adventure") do
  erb(:adventure)
end

get("/adventure/spy/form") do
  erb(:adventure_spy_form)
end

get("/adventure/spy/madlibs") do
  @adj_one = params.fetch("adjective_one")
  @adj_two = params.fetch("adjective_two")
  @adj_three = params.fetch("adjective_three")

  erb(:adventure_spy_result)
end

get("/adventure/jungle/form") do
  erb(:adventure_jungle_form)
end

get("/adventure/jungle/madlibs") do
   @adj_one = params.fetch("adjective_one")
  @adj_two = params.fetch("adjective_two")
  @adj_three = params.fetch("adjective_three")
  @adj_four = params.fetch("adjective_four")

  erb(:adventure_jungle_result)
end

get("/adventure/bank/form") do
  erb(:adventure_bank_form)
end

get("/adventure/bank/madlibs") do
    @adj_one = params.fetch("adjective_one")
  @adj_two = params.fetch("adjective_two")
  @adj_three = params.fetch("adjective_three")
  @adj_four = params.fetch("adjective_four")
  @adj_five = params.fetch("adjective_five")
  
  erb(:adventure_bank_result)
end

get("/adventure/archaeology/form") do
  erb(:adventure_archaeology_form)
end

get("/adventure/archaeology/madlibs") do
  
  erb(:adventure_archaeology_result)
end
