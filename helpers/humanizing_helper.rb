def part_of_speech_label(placeholder)
  case placeholder
  when /^adj/i
    "Adjective"
  when /^adv/i
    "Adverb"
  when /^verb/i
    "Verb"
  when /^noun/i
    "Noun"
  when /^plural_noun/i
    "Plural Noun"
  when /^place/i
    "Place"
  when /^name/i
    "Name"
  when /^emotion/i
    "Emotion"
  when /^number/i
    "Number"
  when /^color/i
    "Color"
  when /^object/i
    "Object"
  when /^animal/i
    "Animal"
  when /^body_part/i
    "Body Part"
  when /^scent/i
    "Scent"
  when /^liquid/i
    "Liquid"
  when /^beverage/i
    "Beverage"
  when /^food/i
    "Food"
  when /^gadget/i
    "Gadget"
  when /^weapon/i
    "Weapon"
  when /^clothing/i
    "Clothing Item"
  when /^item/i
    "Item"
  when /^sound/i
    "Sound"
  when /^furniture/i
    "Furniture"
  when /^vehicle/i
    "Vehicle"
  when /^sound/i
    "Sound"
  when /^name/i
    "Name"
  when /^knight/i
    "Knight's Name"
  when /^captain/i
    "Captain's Name"
  when /^galaxy/i
    "Galaxy's Name"
  when /^scientist/i
    "Scientist's Name"
  when /^lab/i
    "Laboratory's Name"
  when /^radiation/i
    "Radiation Type"
  when /^city/i
    "City's Name"
  when /^being/i
    "State of Being"
  when /^hero/i
    "Hero's Name"
  when /^villain/i
    "Villain's Name"
  when /^magical_land/i
    "Magical Land's Name"
  when /^wiz/i
    "Wizard's Name"
  when /^queen/i
    "Queen's Name"
  when /^king/i
    "King's Name"
  when /^tool/i
    "Tool"
  when /^unit/i
    "Unit of Measurement"
  when /^creature/i
    "Creature"
  when /^artifact/i
    "Artifact"
  when /^prep/i
    "Preposition"
  when /^occupation/i
    "Occupation"
  when /^hobby/i
    "Hobby"
  when /^realm/i
    "Realm's Name"
  when /^ability/i
    "Ability"
  when /^mountain/i
    "Mountain's Name"
  when /^dwarven_name/i
    "Dwarven Name"
  when /^dragon/i
    "Dragon's Name"
  when /^building_material/i
    "Building Material"
  when /^instrument/i
    "Musical Instrument"
  when /^metal/i
    "Type of Metal"
  when /^monster/i
    "Monster's Name"
  when /^nebula/i
    "Nebula's Name"
  when /^chemical/i
    "Chemical"
  when /^gadget/i
    "Gadget"
  when /^officer/i
    "Officer's Name"
  when /^musical_instrument/i
    "Musical Instrument"
  else
    placeholder.humanize
  end
end
