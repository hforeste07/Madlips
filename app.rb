require "sinatra"
require "sinatra/reloader"
require "dotenv/load"


get("/") do
  erb(:homepage)
end

#--------------------------------------Randomize Button------------------------------------#

<script>
class UserProfile {
  constructor(data) {
    for (let key in data) {
      this[key] = data[key];
    }
  
  }

  describe() {
    return Object.entries(this)
      .map(([k, v]) => `${k}: ${v}`)
      .join('\n');
  }
}

document.getElementById("adventure_archaeology").addEventListener("submit", async function(e) {
  e.preventDefault();

  const formData = new FormData(e.target);
  const data = {};

  for (const [key, value] of formData.entries()) {
    data[key] = value.trim() || null;
  }

  const response = await fetch("https://api.openai.com/v1/chat/completions", {
    method: "POST",
    headers: {
      "Authorization": "Bearer " + process.env.OPENAI_API_KEY,
      "Content-Type": "application/json"
    },

    body: JSON.stringify({
      model: "gpt-4",
      messages: [
        {
          role: "system",
          content: "You are an assistant that completes missing values based on their key in a user profile hash."
        },
        {
          role: "user",
          content: `Here is the user data: ${JSON.stringify(data)}. Please fill in any missing or guessable values. Respond with the complete hash as a JSON object only.`
        }
      ]
    })
  });

  const result = await response.json();
  const reply = result.choices[0].message.content;

  try {
    const completedData = JSON.parse(reply);
    const user = new UserProfile(completedData);

    document.getElementById("response").textContent = user.describe();
  } catch (error) {
    document.getElementById("response").textContent = "Failed to parse response:\n" + reply;
  }
});

</script>

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
  @color = params.fetch("color")

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
  @adv = params.fetch("adverb")

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
  @item_one = params.fetch("item_one")
  @item_two = params.fetch("item_two")
  @clothing_one = params.fetch("clothing_one")
  @clothing_two = params.fetch("clothing_two")
  @gadget_one = params.fetch("gadget_one")
  @gadget_two = params.fetch("gadget_two")
  @name_one = params.fetch("name_one")
  @name_two = params.fetch("name_two")
  @name_three = params.fetch("name_three")
  @beverage = params.fetch("beverage")
  @noun = params.fetch("noun")
  @plural_noun = params.fetch("plural_noun")
  @security = params.fetch("security")
  @food = params.fetch("food")
  @adv = params.fetch("adverb")
  @restaurant = params.fetch("restaurant")
  @weapon = params.fetch("weapon")
  @beverage = params.fetch("beverage")
  @color = params.fetch("color")
  @city  = params.fetch("city")

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
  @object_one = params.fetch("object_one")
  @object_two = params.fetch("object_two")
  @name_one = params.fetch("name_one")
  @name_two = params.fetch("name_two")
  @weapon = params.fetch("weapon")
  @noun = params.fetch("noun")
  @adv = params.fetch("adverb")
  @color = params.fetch("color")
  @plural_noun = params.fetch("plural_noun")
  @sound = params.fetch("sound")

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
  @name_one = params.fetch("name_one")
  @name_two = params.fetch("name_two")
  @name_three = params.fetch("name_three")
  @name_four = params.fetch("name_four")
  @name_five = params.fetch("name_five")
  @vehicle_one = params.fetch("vehicle_one")
  @vehicle_two = params.fetch("vehicle_two")
  @plural_noun_one = params.fetch("plural_noun_one")
  @plural_noun_two = params.fetch("plural_noun_two")
  @city  = params.fetch("city")
  @device = params.fetch("device")
  @time = params.fetch("time")
  @color = params.fetch("color")
  @sound = params.fetch("sound")
  @number = params.fetch("number")
  @furniture = params.fetch("furniture")
  @animal = params.fetch("animal")
  @container = params.fetch("container")
  @object = params.fetch("object")

  erb(:adventure_bank_result)
end

get("/adventure/archaeology/form") do
  erb(:adventure_archaeology_form)
end

get("/adventure/archaeology/madlibs") do
  document.getElementById("adverb_one").textContent = user.adv_one;
  document.getElementById("adverb_two").textContent = user.adv_two;
  document.getElementById("adverb_three").textContent = user.adv_three;
  document.getElementById("adverb_four").textContent = user.adv_four;
  document.getElementById("name_one").textContent = user.name_one;
  document.getElementById("name_two").textContent = user.name_two;
  document.getElementById("adverb_one").textContent = user.adv_one;
  document.getElementById("tool_one").textContent = user.tool_one;
  document.getElementById("tool_two").textContent = user.tool_two;
  document.getElementById("tool_three").textContent = user.tool_three;
  document.getElementById("number_one").textContent = user.number_one;
  document.getElementById("number_two").textContent = user.number_two;
  document.getElementById("number_three").textContent = user.number_three;
  document.getElementById("verb_one").textContent = user.verb_one;
  document.getElementById("verb_two").textContent = user.verb_two;
  document.getElementById("verb_three").textContent = user.verb_three;
  document.getElementById("artifact_one").textContent = user.artifact_one;
  document.getElementById("artifact_two").textContent = user.artifact_two;
  document.getElementById("animal_one").textContent = user.animal_one;
  document.getElementById("animal_two").textContent = user.animal_two;
  document.getElementById("adjective").textContent = user.adj;
  document.getElementById("place").textContent = user.place;
  document.getElementById("color").textContent = user.color;
  document.getElementById("noun").textContent = user.noun;

  erb(:adventure_archaeology_result)
end
