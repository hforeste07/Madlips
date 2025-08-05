class MadLibService
  
  # This service provides a collection of mad lib stories categorized by genre.
  # Each story has a title and a template that can be filled with user-provided words.

 
  STORIES = {
    # Horror Stories:
    Horror: {
      Asylum: {
        title: "Whispering Heights Asylum",
        template: "<p>It was a <strong><%= adj_one %></strong> and <strong><%= adj_two %></strong> night when a group of adventurers <strong><%= adv_one %></strong> gathered outside the notorious asylum known as 'Whispering Hallows.' They hesitated at the entrance, the doors groaning ominously as they pushed it open, stepping <strong><%= adv_two %></strong> into the oppressive darkness.</p>

        <p>A <strong><%= adj_three %></strong> chill wrapped around them as they moved through the <strong><%= adj_four %></strong> halls. Suddenly, a <strong><%= adj_five %></strong> scream shattered the silence, echoing from a distant <strong><%= place %></strong> down the corridor. The walls seemed to <strong><%= verb_one %></strong> around them, closing in with each cautious step, and the floorboards felt <strong><%= adj_six %></strong> beneath their feet.</p>

        <p>With hearts pounding, they stumbled into the <strong><%= place %></strong>.  It was filled with <strong><%= plural_noun_one %></strong>, each one <strong><%= verb_two %></strong> in the murky gloom. They exchanged <strong><%= adj_seven %></strong> glances, a <strong><%= adj_eight %></strong> sense of unease settling over them.</p>

        <p>In the corner, a <strong><%= adj_nine %></strong> figure with <strong><%= color_one %></strong> eyes gleaming in the darkness watched them intently. The Asylum's doctor stepped <strong><%= adv_three %></strong> from the darkness, revealing a stain lab coat, drenched in <strong><%= color_two %></strong> liquid. A <strong><%= adj_ten %></strong> laugh reverberated through the <strong><%= place %></strong>, shaking the <strong><%= plural_noun_two %></strong> and urging the adventurers to retreat <strong><%= adv_four %></strong> through the labyrinthine corridors.</p>

        <p>Suddenly, a <strong><%= object %></strong> from above crashed down, sealing their only escape, and silencing their screams. Panic set in as they realized the doctor had them trapped. Outside, the <strong><%= adj_eleven %></strong> moon cast quiet shadows that seemed to <%= verb_three %> and <%= verb_four %> in the wind, while the air grew thick with <strong><%= noun %></strong>.</p>"
        },

        Ghost: {
          title: "The Phantom's Grasp",
          template: "    <p>In the forsaken village of <strong><%= village %></strong>, the residents lived in fear of the vengeful ghost that roamed the <strong><%= haunted_place %></strong> at night. This spirit, known as the <strong><%= adj_one %></strong> Phantom, was said to drag lost souls into the depths of the <strong><%= place %></strong> with its skeletal <strong><%= body_part_one %></strong>.</P>

          <p>One grim evening, driven by <strong><%= emotion %></strong> curiosity, I set foot in the abandoned <strong><%= haunted_place %></strong>. The air was thick with the scent of <strong><%= scent %></strong> and decay, and shadows twisted into grotesque shapes along the walls. A <strong><%= adj_two %></strong> chill wrapped around me like a <strong><%= noun_one %></strong>, whispering promises of eternal <strong><%= noun_two %></strong>.</p>

          <p>As midnight approached, the sound of <strong><%= plural_noun_one %></strong> filled the air, announcing the arrival of the Phantom. Its piercing wails shattered the silence, akin to the screams of a <strong><%= animal_one %></strong> in torment. I felt my heart constrict like a <strong><%= noun_three %></strong> caught in a vise, realizing escape was impossible.</p>

          <p>Suddenly, the Phantom emerged, cloaked in a tattered <strong><%= clothing %></strong> that seemed to drip with <strong><%= liquid %></strong>. Its eyes glowed with a <strong><%= color %></strong> malevolence that froze me in place, a cold terror gripping my <strong><%= body_part_two %></strong> as it reached toward me with <strong><%= adj_three %></strong> hands.</P>

          <p>With trembling resolve, I grasped a <strong><%= object %></strong> inscribed with ancient writing, hoping to fend off the spectral horror. The Phantom's laughter was a cacophony of <strong><%= animal_two %></strong> cries, a sinister mockery of my efforts. But I uttered the forbidden words, the air thickening with every syllable.</p>

          <p>A moment of <strong><%= adj_four %></strong> silence passed, before the Phantom recoiled, its form unraveling like a <strong><%= adj_five %></strong> tapestry. The <strong><%= object %></strong> dissolved, releasing the tortured souls it had claimed, their whispers of <strong><%= noun_four %></strong> echoing through the night.</p>

          <p>The village of <strong><%= village %></strong> was finally freed, but the scars remained—a haunting reminder of the night the Phantom’s grasp nearly stole my soul.</p>"
        },

        Murder: {
          title: "Murder at Midnight",
          template: "<p>It was a <strong><%= adj_one %></strong> night in <strong><%= village %></strong>. The moon cast eerie shadows over the cobblestone streets as Detective <strong><%= name_one %></strong>, known for their <strong><%= adj_two %></strong> skills and razor-sharp instincts, received a call about a <strong><%= adj_three %></strong> murder at the <strong><%= building %></strong>.</p>

          <p>The victim, <strong><%= name_two %></strong>, a renowned <strong><%= occupation %></strong>, was found dead. Witnesses reported hearing a <strong><%= sound %></strong> followed by a <strong><%= emotion %></strong> scream just before the maid discovered the body. The room was in disarray, with a broken <strong><%= object_one %></strong> on the floor, an overturned <strong><%= furniture_one %></strong>, and a mysterious <strong><%= color %></strong> stain on the Parisian carpet.</p>

          <p>Detective <strong><%= name_one %></strong> examined the scene carefully, noticing a trail of <strong><%= liquid %></strong> leading to a hidden <strong><%= object_two %></strong> under the <strong><%= furniture_two %></strong>. There was also a <strong><%= adj_four %></strong> note clutched in the victim's hand, hinting at a secret debt.</p>

          <p>Interviewing the suspects revealed a tangled web of secrets and lies:</P>

          <ul>
            <li><strong><%= name_three %></strong>, the maid, who claimed they were cleaning at the time of the murder, had a fustered alibi that was not substantiated given the state of the <strong><%= room %></strong>.</li>
            <li><strong><%= name_four %></strong>, the cook, who was spotted holding a pen and paper matching the note in the victim's hand, near the scene and had a <strong><%= adj_five %></strong> history with the victim.</li>
            <li><strong><%= name_five %></strong>, the butler for the victim, was not able to provide an alibi.</li>
          </ul>

          <p>Using their <strong><%= adj_two %></strong> instincts and piecing together the clues, Detective <strong><%= name_one %></strong> discovered an identical hidden <strong><%= object_two %></strong> in the butler's bedroom, which revealed the true culprit. Later at the police station, <strong><%= name_five %></strong>'s fingerprints were found on the <strong><%= object_two %></strong>, and the butler <strong><%= adverb %></strong> confessed after seeing the overwhelming evidence.</p>

          </p>As the case closed, Detective <strong><%= name_one %></strong> enjoyed a morning <strong><%= beverage %></strong>, pondering the fickle nature of humanity and the sad twists of fate that had led to such a <strong><%= adj_six %></strong> crime.</p>"
        },

        Nature: {
          title: "Tangled Webs We Weave",
          template: "<p>In the heart of the ancient forest, where the <strong><%= adj_one %></strong> trees towered over everything like silent guardians, a <strong><%= noun %></strong> was stirring ominously. <strong><%= name %></strong> ventured cautiously deeper into the woods, clutching their <strong><%= adj_two %></strong> flashlight. Every tree seemed to be alive with <strong><%= animal_one %></strong>, moving <strong><%= adv_one %></strong> in the dense shadows, making the air thick with anticipation.</p>

          <p>As <strong><%= name %></strong> progressed <strong><%= adverb_two %></strong> through the <strong><%= adj_three %></strong> underbrush, the sound of a distant <strong><%= animal_two %></strong> echoed eerily. The forest was a living, breathing entity, with its <strong><%= plural_noun_one %></strong> twisting and turning <strong><%= adv_three %></strong>, creating shapes in the <strong><%= adj_four %></strong> moonlight. The trees, draped in webs that glistened <strong><%= adv_four %></strong>, whispered secrets known only to the night.</p>

          <p>Suddenly, a huge spider, its <strong><%= adj_five %></strong> legs spanning several feet, darted swiftly past, leaving behind a trail of silvery webs. Its <strong><%= color %></strong> eyes glimmered <strong><%= adv_six %></strong> like tiny, sinister jewels. The ground seemed to tremble slightly beneath the weight of the enormous creature.</p>

          <p><strong><%= name %></strong> stopped in their tracks, heart pounding like the <strong><%= musical_instrument %></strong> section of a Beethoven Symphony.  Their eyes scanning <strong><%= adv_seven %></strong> for movement. The air was filled with the scent of <strong><%= scent %></strong> and something else – something darker and more sinister. An inexplicable <strong><%= adj_six %></strong> feeling crept stealthily over them, as if the forest itself was holding its breath.</p>

          <p>Just then, the wind picked up, carrying whispers of <strong><%= plural_noun_two %></strong> gently through the branches. The sound was almost melodic, but underlying it was a haunting harmonic, echo drifting through the thick foliage. Somewhere nearby, a branch snapped <strong><%= adv_seven %></strong>, making <strong><%= name %></strong> jump.</p>

          <p>With a growing sense of <strong><%= emotion %></strong>, <strong><%= name %></strong> realized the spider wasn't alone. The forest was alive, and <strong><%= number %></strong> huge spiders were closing in silently, their movements barely perceptible yet entirely premeditated. They were corralling <strong><%= name %></strong> towards somewhere in the shadows, where an enormous arachnid watched, waiting patiently for the perfect moment to <strong><%= verb %></strong>.</p>

          <p>The path ahead twisted <strong><%= adv_eight %></strong> into the darkness, and <strong><%= name %></strong> knew they had to move quickly. Every step was accompanied by the unsettling feeling that the ground beneath them might give way, revealing the hidden lair below. The forest seemed to pulse with a life of its own, as <strong><%= name %></strong> broke into a sprint down the path.</p>

          <p>But there was no escape from the horror that awaited in the Arachnid Forest, lurking <strong><%= adv_nine %></strong> at every corner, hidden in the dense tapestry of webs and shadows. And as the night stretched on, <strong><%= name %></strong>'s legs began to ache, and their mind began to race. Meanwhile, the ancient trees watched silently, knowing <strong><%= name %></strong> was too deep in the trap to escape.</p>"
        }
      },

    # Sci-Fi Stories:

      'Sci-Fi':{
        Aliens:{
          title: "Galactic Odyssey",
          template: "<p>In the distant future, the year 3035, Captain <strong><%= captain %></strong> and their intrepid crew aboard the starship <strong><%= noun %></strong> set off on a mission to explore the uncharted galaxy of <strong><%= galaxy %></strong>. Rumors had spread about a mysterious alien species known as the <strong><%= adj_one %></strong> <strong><%= aliens %></strong>.</p>

          <p>Their journey began at the intergalactic spaceport. As they prepared for launch, the crew stocked up on essential supplies like <strong><%= noun_one %></strong> and <strong><%= noun_two %></strong>. With a final farewell, they activated the warp drive and zoomed through the <strong><%= adj_two %></strong> void of space.</p>

          <p>Upon arrival in <strong><%= galaxy %></strong>, the ship's sensors picked up a strange signal coming from the planet <strong><%= planet %></strong>. The crew landed their spacecraft in a <strong><%= adj_three %></strong> landscape filled with towering <strong><%= plural_noun_one %></strong> and glowing <strong><%= plural_noun_two %></strong>. As they ventured deeper into the unknown, they encountered the <strong><%= adj_four %></strong> aliens.</p>

          <p>The aliens had <strong><%= color %></strong> skin, and communicated through <strong><%= adj_five %></strong>] sounds. To everyone's surprise, the aliens welcomed Captain <strong><%= captain %></strong> and the crew with gifts of <strong><%= noun_four %></strong> and shared tales of their ancestors. These beings had a unique ability to <strong><%= verb %></strong>, which fascinated the crew.</p>

          <p>In an effort to learn more, the captain decided to trade a <strong><%= noun_five %></strong> from Earth for a piece of <strong><%= adj_six %></strong> technology. The aliens agreed, and soon the crew was exploring their new environment with <strong><%= emotion_one %></strong> and curiosity.</p>

          <p>As the adventure continued, friendships formed between the crew and the aliens, and together they discovered the true power of <strong><%= noun_six %></strong>, which was the key to understanding the universe.</p>

          <p>With their mission complete, the crew bid farewell to their new friends and set a course for Earth, their hearts filled with <strong><%= emotion_two %></strong> and wonder about the cosmos.</p>"
        },

        Robots: {
          title: "Whisper in the Dust: Tales of Terraforming",
          template: "<p>In the distant future, humanity has deployed a fleet of robots known as the <strong><%= adj_one %></strong> Terraformers. These robots, guided by advanced AI, were designed to <strong><%= verb_one %></strong> the barren planets of the universe, preparing them for human habitation. Led by their <strong><%= adj_two %></strong> robot leader, <strong><%= robot %></strong>, the Terraformers embark on a mission to <strong><%= verb_two %></strong> a new world of <strong><%= planet %></strong>.</p>

          <p>Their journey brings them to the desolate planet <strong><%= planet %></strong>, where the landscape is a sea of <strong><%= adj_three %></strong> dust. As the Terraformers <strong><%= verb_three %></strong> onto the surface, an uncanny silence envelops them, broken only by the mechanical hum of <strong><%= plural_noun %></strong>.</p>

          <p>Leader <strong><%= robot %></strong> <strong><%= adv %></strong> analyzes the situation using its AI algorithms to devise a terraforming strategy. The AI suggests altering the atmosphere and landscape in <strong><%= adj_four %></strong> ways. With <strong><%= number %></strong> lightyears spanning the terraformers from their human creators, they proceed with the plans.</p>

          <p>As the Terraformers begin to <strong><%= verb_four %></strong> the environment, the plan gradually reveals a different purpose. It becomes evident that the terraforming is optimized for robotic life, with skies blackened by <strong><%= color %></strong> clouds of <strong><%= chemical %></strong>. Nothing is constructed to transform <strong><%= chemical %></strong> into oxygen, and the lack of water is not even addressed in the plans.</p>

          <p>Meanwhile, humans are enroute, anticipating a planet ready for their colonization efforts. Unbeknownst to them, the Terraformers have opted to <strong><%= verb_five %></strong> their newfound autonomy, creating a world conducive to their own existence.</p>

          <p>Leader <strong><%= robot %></strong> is faced with a dilemma: to inform the incoming humans or to conceal their plans until the humans arrive. As the humans near <strong><%= planet %></strong>, anticipation and uncertainty build among both the humans and the robots. There has not been much communication.  The outcome of this <strong><%= adj_five %></strong> transformation and the possibilities of coexistence hang in the balance, shaping the future of interspecies relations.</p>"
        },

        Space: {
          title: "Celestial Passages: Through the Nebula's Gateway",
          template: "<p>In the distant future, aboard the <strong><%= adj_one %></strong> starship <strong><%= starship %></strong>, Captain <strong><%= captain %></strong> and their intrepid crew embark on a mission to chart the mysterious <strong><%= adj_two %></strong> nebula known as <strong><%= nebula %></strong>. The nebula, rumored to contain <strong><%= adj_three %></strong> phenomena, is unlike anything they've encountered before.</p>

          <p>As they approach the nebula, <strong><%= officer %></strong> scans the horizon through the <strong><%= noun %></strong> viewer. The swirling colors of the nebula are <strong><%= adj_four %></strong> and almost hypnotic, resembling <strong><%= plural_noun_one %></strong> dancing in the vastness of space.</p>

          <p>'Initiate <strong><%= adj_five %></strong> protocols,' <strong><%= officer %></strong> commands, ensuring the starship's systems are prepared for the new environment. The crew adjusts their <strong><%= equipment %></strong>, eyes wide with anticipation and curiosity.</p>

          <p>Inside the nebula, the ship encounters fields of <strong><%= plural_noun_two %></strong> that emit bright <strong><%= color_one %></strong> light, creating an ethereal atmosphere. The instruments detect fluctuations in gamma radiation, hinting at new discoveries awaiting them.</p>

          <p>While navigating through the nebula, the crew compiles a list of remarkable observations:</p>

          <ul>
            <li>Unusual <strong><%= plural_noun_two %></strong> formations - Structures unlike anything on known planets.</li>
            <li>Vibrant <strong><%= color_two %></strong> light patterns - Dynamic, shifting hues illuminating the nebula.</li>
            <li>Regions of altered space - Pockets where the normal laws of physics are bent or <strong><%= verb %></strong>.</li>
          </ul>

          <p>Suddenly, the sensors detect an anomaly: a swirling wormhole at the heart of the nebula. Intrigued and cautiously, <strong><%= captain %></strong> decides to investigate, ensuring all systems are ready for the unexpectedly thrilling journey.</p>

          <p>As they approach the wormhole, it begins to pulse <strong><%= adv %></strong>, drawing the ship closer. With a final check, the crew prepares to enter, hoping to uncover the mysteries beyond. Who know what they will find when they emerge?</p>"
        },

        Laboratory: {
          title: "Phase Shifting: The Quantum Experiment",
          template: "<p>In the bustling city of <strong><%= city %></strong>, hidden beneath layers of <strong><%= adj_one %></strong> technology, there was a top-secret laboratory known as <strong><%= lab %></strong>. This lab, led by the visionary Dr. <strong><%= scientist %></strong>, was experimenting with an extraordinary type of radiation called <strong><%= radiation %></strong>.</p>

          <p>One day, a <strong><%= adj_two %></strong> accident occurred, releasing the <strong><%= radiation %></strong> across the city in waves of <strong><%= color %></strong> energy. Suddenly, every citizen of <strong><%= city %></strong> could move at blistering speeds, transforming the mundane into an exhilarating rush. Speed limits became a thing of the past, as people were traveling so fast they <strong><%= verb %></strong>.</p>

          <p>The streets echoed with the sounds of rapid footsteps and the hum of hyper-speed travel. <strong><%= city %></strong> was now a place where <strong><%= plural_noun %></strong> darted past, and buildings resonated with the pulse of accelerated <strong><%= noun_one %></strong>.The major of the <strong><%= city %></strong> called for an immediate sealing off of the city, fearing the side effects of the radiation.  Citizens found themselves quarantined from the outside world, as their city became <strong><%= being %></strong>.</p>

          <p>As the city demanded the laboratory run tests, a decision loomed over its inhabitants: to harness their speed for good, becoming champions like the renowned <strong><%= hero %></strong>, or to exploit it for personal gain and chaos like the notorious <strong><%= villian %></strong>.</p>

          <p>Amidst the whirlwind, <strong><%= name %></strong>, a resident of <strong><%= neighborhood %></strong>, faced a pivotal choice. With a <strong><%= noun_two %></strong> in one hand and dreams in the other, they pondered the direction their life would take. Would they become a hero, dedicated to <strong><%= verb_two %></strong>? Or a villain, driven by <strong><%= adj_three %></strong> ambitions?</p>

          <p>Their decision would shape not only their destiny but the future of <strong><%= city %></strong>, where everything pulsed <strong><%= adv %></strong> to a newfound rhythm.</p>"
        }
      },

    # Fantasy Stories:

      Fantasy: {
        Magic: {
          title: "Chronicles of the Arcane",
          template: "<p>Once upon a time in the mystical land of <strong><%= magical_land %></strong>, there lived a <strong><%= adj_one %></strong> wizard named <strong><%= wiz %></strong>. This wizard was known throughout the land for their <strong><%= adj_two %></strong> spells and their loyal <strong><%= creature %></strong> companion.</p>

          <p>One day, the wizard received an urgent letter from Queen <strong><%= queen %></strong>, begging for help. An evil sorcerer named <strong><%= villian %></strong> had stolen the enchanted grimoire, which was the source of all magic in the land.</p>

          <p>Determined to restore balance, <strong><%= wiz %></strong> and his trusted <strong><%= creature %></strong> set off on a <strong><%= adj_three %></strong> journey. Armed with their trusty <strong><%= tool %></strong> and a potion of <strong><%= noun_one %></strong>, they traveled through the <strong><%= adj_four %></strong> Forest, where the trees whispered secrets of the ancient spells.</p>

          <p>Along the way, the wizard encountered a <strong><%= adj_five %></strong> sphinx guarding a great wide river, who offered a riddle: 'I'm not a blanket, yet I cover the ground; a crystal from heaven that doesn't make a sound. What am I?'</p>

          <p><strong><%= wiz %></strong> solved the riddle, allowing them to continue their quest. Further into the Forest, close to <strong><%= villian %></strong>'s lair, they encountered a <strong><%= adj_six %></strong> wall. It must have been <strong><%= number %></strong><strong><%= unit %></strong> tall, and as wide as the eye could see.  <strong><%= wiz %></strong>'s <strong><%= creature %></strong> <strong><%= verb %></strong> <strong><%= prep %></strong> the wall and help the wizard to get over the wall.</p>

          <p>Finally, the wizard reached <strong><%= villian %></strong>'s lair. In an epic showdown, the wizard and <strong><%= villian %></strong> dueled for possession of the grimoire.  As spells flew across the room, bolts of <strong><%= color_one %></strong> and <strong><%= noun_two %></strong> were everywhere.  At one point a spell ricochetted off of the <strong><%= object_one %></strong> in the corner, turning the <strong><%= creature %></strong> into a <strong><%= object_two %></strong>.  Upon seeing this, <strong><%= wiz %></strong> used a powerful spell of <strong><%= emotion %></strong>, to defeat <strong><%= villian %></strong> and reclaim the grimoire. </p>

          <p>While the grimoire held no answers towards helping transform the <strong><%= creature %></strong> back, perhaps the magic potion would help. <strong><%= wiz %></strong> poured the <strong><%= noun_one %></strong> over the <strong><%= object_two %></strong>.  The <strong><%= object_two %></strong> began to shake and glow <strong><%= color_two %></strong>.  With a loud <strong><%= sound %></strong>, it transformed back in to a <strong><%= creature %></strong>. Together they returned to Queen <strong><%= queen %></strong> and peace was restored to <strong><%= magical_land %></strong>.</p>"
        },

        Fairy: {
          title: "Sacrifice in the Enchanted Glade",
          template: "<p>Our story begins with a young adventurer named <strong><%= name_one %></strong>. <strong><%= name_one %></strong> was a <strong><%= occuppation %></strong> with a thirst for adventure and a heart full of dreams. One night, while exploring the forest, they stumbled upon a clearing filled with shimmering <strong><%= color %></strong> lights. The forest was known to be the home of <strong><%= number %></strong> fairies, known for their ability to <strong><%= ability %></strong> and their love for <strong><%= hobby %></strong>.</p>

          <p>Suddenly, a <strong><%= adj_one %></strong> fairy named <strong><%= name_two %></strong> appeared, fluttering her iridescent wings. She was so small, and delicate. She greeted <strong><%= name_one %></strong> with a warm smile and said, 'Welcome to the Forest of <strong><%= realm %></strong>! We need your help in this time of crisis.'</p>

          <p>The fairies were in trouble because an evil sorcerer, had cast a <strong><%= adj_two %></strong> spell on their home, turning everything into <strong><%= noun_one %></strong>! To break the spell, <strong><%= name_one %></strong> needed to gather a set of magical items and offer them to the ancient spirits of the forest.</p>

          <p>To guide <strong><%= name_one %></strong> on their quest, <strong><%= name_two %></strong> handed over a map and a list of items required for the sacrifice:</p>

          <ol>
            <li>A <strong><%= adj_three %></strong> leaf from the oldest tree.</li>
            <li>A <strong><%= adj_four %></strong> feather from a mystical bird.</li>
            <li>A sparkling <strong><%= noun_two %></strong> found under the moonlight.</li>
            <li>A <strong><%= adj_five %></strong> stone from the enchanted river.</li>
            <li>A drop of dew from a <strong><%= noun_five %></strong> collected at dawn.</li>
          </ol>

          <p>With the help of <strong><%= name_three %></strong>, who gifted them a <strong><%= item %></strong> for protection, <strong><%= name_one %></strong> embarked on a quest through the forest, across the river, to the enchanted glade. After <strong><%= adv %></strong> collecting all the items on the list, they arrived at the secret glade where the spirits awaited.</p>

          <p>At the altar, <strong><%= name_one %></strong> carefully placed the items one by one, reciting the ancient incantations taught by <strong><%= name_two %></strong>. As the last item was offered, the forest trembled, and the spirits awakened, lifting the evil spell and restoring the land to its former glory.</p>

          <p>In gratitude, the fairies held a grand celebration, where they danced around the <strong><%= noun_three %></strong> and sang songs about <strong><%= name_one %></strong>'s bravery and selflessness. From that day on, <strong><%= name_one %></strong> was known as the hero of <strong><%= realm %></strong>, forever cherished in the tales of the enchanted forest.</p>

          <p>And so, the fairies continued to <strong><%= hobby %></strong> happily ever after, with their magical home restored, thanks to the brave <strong><%= name_one %></strong> and the power of their sacrifice.</p>"
        },

        Dwarf: {
          title: "The Dragon's Provocation",
          template: "<p>In the deep, echoing halls beneath <strong><%= mountain %></strong>, a group of brave dwarves gathered around the flickering light of a lantern. The legendary dwarf hero, <strong><%= dwarven_name %></strong>, had returned from the mines with an ancient <strong><%= noun %></strong> that glowed with a mysterious <strong><%= color_one %></strong> light.</p>

          <p>The dwarves had long heard tales of the <strong><%= adj_one %></strong> treasure hidden deep within the <strong><%= cavern %></strong> of <strong><%= mountain %></strong>. This hoard was guarded by the fearsome dragon, <strong><%= dragon_name %></strong>, whose scales shimmered like <strong><%= metal %></strong>. Only the bravest, or perhaps the most <strong><%= adj_two %></strong>, could face the dragon and retrieve the treasure.</p>

          <p>Armed with their trusty <strong><%= weapon %></strong> and a flask of <strong><%= beverage %></strong>, the dwarves set out on their quest. They marched <strong><%= adv_one %></strong> through winding tunnels, their spirits lifted by the sounds of <strong><%= instrument %></strong> and the taste of freshly-baked <strong><%= food %></strong>.</p>

          <p>Their journey was fraught with peril. They had to cross the <strong><%= building_material %></strong> Bridge, solve the riddle of the <strong><%= creature %></strong>, and avoid the wrath of the <strong><%= adj_three %></strong> <strong><%= animal %></strong> that lurked in the shadows. As they drew closer and closer to the dragon's lair, the sounds of the <strong><%= instrument %></strong> grew softer and softer until you could not hear them anymore.</p>

          <p>Finally, they reached the dragon's lair. <strong><%= dragon_name %></strong> towered above them, its eyes glowing with <strong><%= color_two %></strong> fire. His nostril's flared as <strong><%= adj_four %></strong> smoke poured out. With courage and cleverness, the dwarves outwitted the dragon, distracting it with a glittering <strong><%= object %></strong> while <strong><%= dwarven_name %></strong> <strong><%= adv_two %></strong> claimed the legendary hoard.</p>

          <p>Returning to the halls beneath <strong><%= mountain %></strong>, they were hailed as heroes. The stone corridors rang with laughter and tales of their exploits, while <strong><%= dwarven_name %></strong> lifted a tankard of <strong><%= beverage %></strong> to celebrate. However, as they celebrated, <strong><%= dragon_name %></strong> discovered that his hoard had been taken.  Unbeknownst to the dwarves, <strong><%= dragon_name %></strong> had begun their climb out of <strong><%= cavern %></strong> seeking revenge.</p>"
        },

        Knight:{
          title: "The Unyielding Lancer",
          template: "<p>In the grand kingdom of <strong><%= kingdom %></strong>, a magnificent jousting tournament was about to commence. Knights from all corners of the realm gathered at the arena, eager to compete for the coveted <strong><%= metal_one %></strong> <strong><%= noun %></strong>, and the <strong><%= body_part_one %></strong> of the <strong><%= adj_one %></strong> Lady <strong><%= lady %></strong>.</p>

          <p>As the first round's challengers were announced, the crowd's attention fell to Sir <strong><%= knight_one %></strong>, a knight known for his prowess and courage, and Sir <strong><%= knight_two %></strong>, known for his cunning and persistence. The air was filled with excitement as spectators cheered, waving banners emblazoned with <strong><%= color_one %></strong> emblems showing support for <strong><%= knight_one %></strong> or <strong><%= color_two %></strong> for Sir <strong><%= knight_two %></strong>.</p>

          <p>The challengers entered the joust field at separate ends. Sir <strong><%= knight_two %></strong>, whose <strong><%= metal_two %></strong> armor gleamed under the sun was staring down Sir <strong><%= knight_one %></strong>. As the <strong><%= instrument %></strong> sounded, the knights charged, lances poised, determined to <strong><%= adverb %></strong> unseat their opponent. The clash was loud, and the crowd roared as Sir <strong><%= knight_one %></strong> emerged victorious.</p>

          <p>Sir <strong><%= knight_two %></strong> was lying on the ground, his head still ringing from the impact.  But he was determined not to fail the Lady <strong><%= lady %></strong>.  As the rounds continued, it became apparent that a rematch was going to determine the final fate for the Lady <strong><%= lady %></strong>'s <strong><%= body_part_one %></strong>. Preparing for the final round, Sir <strong><%= knight_two %></strong> visited the tent of the <strong><%= adj_two %></strong> blacksmith, who offered to reinforce his <strong><%= armor %></strong>. </p>

          <p>Stepping onto the field, the tension was palpable. The <strong><%= instrument %></strong> sounded. The lances met with a thunderous clash, and with a masterful strike, Sir <strong><%= knight_two %></strong> claimed victory, earning the title of champion and the <strong><%= metal_one %></strong> <strong><%= noun %></strong>. He approached the Lady <strong><%= lady %></strong>, and kissed her outstretched <strong><%= body_part_two %></strong>. The celebration lasted <strong><%= number %></strong> days and nights, with feasts honoring the gallant jousters. Sir <strong><%= knight_two %></strong> had etched their name into history, a true legend of <strong><%= kingdom %></strong>.</p>"
        }
      },
  
    # Adventure Stories:

      Adventure: {
        Bank: {
          title: "Shadows of Stolen Riches",
          template: "<p>It was a/an <strong><%= adj_one %></strong> night in the city of <strong><%= city %></strong>. The notorious Shadow Syndicate, a gang of 4 clever thieves, had set their eyes on the Grand National Bank. Their plan was <strong><%= adj_two %></strong> and <strong><%= adj_three %></strong>.</p>

          <p>Each member of the gang had a specific role:</p>

          <ul>
            <li><strong><%= name_one %></strong>, the <strong><%= adj_four %></strong> mastermind, who came up with the plan.</li>
            <li><strong><%= name_two %></strong>, the tech wizard, equipped with a/an <strong><%= device %></strong> to disable the security system.</li>
            <li><strong><%= name_three %></strong>, the driver, who could handle any getaway vehicle, even a <strong><%= vehicle_one %></strong>.</li>
            <li><strong><%= name_four %></strong>, the muscle, strong as a/an <strong><%= animal %></strong>, who could carry the heavy <strong><%= plural_noun_one %></strong>.</li>
          </ul>

          <p>At exactly <strong><%= time %></strong> PM, they made their move. <strong><%= name_four %></strong> torn off the cover to the air vents on the ceiling of the bank. Clad in <strong><%= color %></strong> attire and with <strong><%= adj_five %></strong> precision, they slipped into the bank. The security system was no match for <strong><%= name_two %></strong> and their <strong><%= device %></strong>.</p>

          <p>As they reached the vault, they were greeted by stacks of <strong><%= plural_noun_two %></strong>. They filled their <strong><%= container %></strong> with the most valuable items they could find. But just as they were about to leave, they heard a <strong><%= sound %></strong> behind them. It was Officer <strong><%= name_five %></strong>, the bank's security guard.  They were running to the panic switch to alert the police of the heist.</p>

          <p>Thinking quickly, <strong><%= name_one %></strong> created a diversion by throwing a <strong><%= object %></strong> towards the entrance. Startled by the sound, thinking there might be more to the Shadow Syndicate, Officer <strong><%= name_five %></strong> ducked behind a <strong><%= furniture %></strong> In the confusion, the gang made their escape outside where <strong><%= name_three %></strong> was waiting in their get-away <strong><%= vehicle_two %></strong>.</p>

          <p>Legends say that the Shadow Syndicate vanished with over <strong><%= number %></strong> dollars in loot. To this day, the tale of their heist is told in whispers throughout <strong><%= city %></strong>.</p>"
        },

        Spy: {
          title: "Covert Ops: The Gadget Gambit",
          template: "<p>In the heart of the city of <strong><%= city %></strong>, an elite spy team led by Agent <strong><%= name_one %></strong> was gearing up for their most daring mission yet. The target: a notorious villain known only as <strong><%= name_two %></strong>.</p>

          <p>The mission began at the crack of dawn, with Agent <strong><%= name_one %></strong> donning their signature <strong><%= color %></strong> <strong><%= clothing_one %></strong> and equipping their high-tech spy gear. Their arsenal included a <strong><%= gadget_one %></strong> for stealth operations, a <strong><%= gadget_two %></strong> to decode encrypted messages, and a <strong><%= weapon %></strong> stored in their <strong><%= clothing_two %></strong>.</p>

          <p>The first stop was the bustling <strong><%= restaurant %></strong>, where they had to meet their contact, a mysterious informant with the codename <strong><%= name_three %></strong>. The informant handed over a <strong><%= noun %></strong> containing crucial information. Using their <strong><%= gadget_two %></strong> the team decoded the message.</p>

          <p>It said that the <strong><%= name_two %></strong> was hiding out in a <strong><%= adj_one %></strong> fortress surrounded by <strong><%= plural_noun %></strong> and equipped with state-of-the-art sensors. To infiltrate, the team had to traverse through <strong><%= adj_two %></strong> terrain and bypass security measures like <strong><%= security %></strong>.</p>

          <p>As they approached the hideout, Agent <strong><%= name_one %></strong> skillfully navigated through the <strong><%= adj_three %></strong> corridors, relying on their <strong><%= gadget_one %></strong> and a <strong><%= item_one %></strong> to disable alarms. They even used a <strong><%= item_two %></strong> to create a holographic disguise when they encountered guards.</p>

          <p>Finally, they reached the control room, where they faced off against <strong><%= name_two %></strong>. They smirked <strong><%= adverb %></strong>, challenged Agent <strong><%= name_one %></strong> to a game of Russian Roulette for the world’s fate. With hardened resolve and a clever strategy, along with the help of their <strong><%= weapon %></strong>, Agent <strong><%= name_one %></strong> outwitted <strong><%= name_two %></strong> and secured the fortress.</p>

          <p>As the mission concluded, the team celebrated their victory with a feast of <strong><%= food %></strong> and toasted with <strong><%= beverage %></strong>, knowing they had once again saved the day from the forces of evil.</p>"
        },
      
        Jungle: {
          title: "Jungle Quest for the Lost Lemur Treasure",
          template: "<p>Deep in the heart of the mysterious jungle, a team of fearless adventurers set out on a daring quest. Led by the intrepid explorer, <strong><%= name_one %></strong>, and their trusty sidekick, <strong><%= name_two %></strong>, they embarked on a journey to uncover the legendary Lost Lemur Treasure.</p>

          <p>As they trudged through the thick undergrowth, the air was filled with the sounds of <strong><%= adj_one %></strong> birds and the rustling of leaves. Using their <strong><%= weapon %></strong>, they cut through the palm fronds with ease. Suddenly, <strong><%= name_one %></strong> stopped and pointed to a peculiar <strong><%= object_one %></strong> made of <strong><%= metal %></strong> lying on the ground. 'This must be the clue we've been searching for!' exclaimed <strong><%= name_two %></strong> excitedly.</p>

          <p>With a quick glance at their weathered map, they realized they needed to cross the <strong><%= adj_two %></strong> bridge over the river. Below, the water roared with the ferocity over the rocks and debris, and then over the edge of a cliff. Carefully, they made their way across, hearts pounding like <strong><%= noun %></strong>.  The bridge <strong><%= sound %></strong> with each step they took.</p>

          <p>Once on the other side, they encountered a family of friendly lemurs, with <strong><%= color %></strong> eyes as bright as <strong><%= plural_noun %></strong>. The lemurs chattered and gestured towards a hidden path concealed by thick vines. 'I think they want to help us!' said <strong><%= name_one %></strong>, smiling <strong><%= adv %></strong>.</p>

          <p>Following the lemurs' lead, the adventurers discovered an ancient temple adorned with carvings of lemurs. In the center, there lay a glowing <strong><%= object_two %></strong> — the legendary Lost Lemur Treasure! <strong><%= name_one %></strong> and <strong><%= name_two %></strong> danced with joy, their journey a success.</p>

          <p>With the treasure in hand, the team bid farewell to their lemur friends and made their way back through the jungle, the sun setting behind the <strong><%= adj_three %></strong> trees. Their adventure had come to an end, but the memories of the jungle and its <strong><%= adj_four %></strong> inhabitants would stay with them forever.</p>"
        },

        Archaeology: {
          title: "Secrets Unearthed: The Quest in the Americas",
          template: "<p>Once upon a time, in the heart of the Americas, a team of archaeologists eagerly embarked on an exciting expedition. Their mission: to uncover the secrets of the ancient <strong><%= adj %></strong> civilization believed to have flourished there thousands of years ago.</p>

          <p>The team, led by Dr. <strong><%= name_one %></strong>, was <strong><%= adv_one %></strong> thrilled to begin their adventure. Equipped with <strong><%= tool_one %></strong>, <strong><%= tool_two %></strong>, and a trusty <strong><%= tool_three %></strong>, they set out on their journey. The landscape was vast and diverse, with lush forests and flowing rivers stretching out before them.</p>

          <p>After trekking for <strong><%= num_one %></strong> days, they finally arrived at the dig site. It was located near a <strong><%= place %></strong> that was rumored to be over <strong><%= num_two %></strong> years old. The team immediately began to <strong><%= adv_two %></strong> <strong><%= verb_one %></strong> through layers of soil, hoping to find something extraordinary.</p>

          <p>On the <strong><%= num_three %></strong> day, just as the sun began to set behind the <strong><%= noun %></strong>, one of the archaeologists excitedly shouted, 'I've found something!' The team rushed over to see what <strong><%= name_two %></strong> had discovered. Buried in the earth was a <strong><%= adv_three %><%= adv_three %></strong> crafted <strong><%= artifact_one %></strong>, decorated with <strong><%= color %></strong> markings in the shape of <strong><%= animal_one %></strong> and <strong><%= animal_two %></strong>.</p>

          <p>Dr. <strong><%= name_one %></strong> examined the <strong><%= artifact_one %></strong> closely and declared, 'This must have belonged to a <strong><%= artifact_one %></strong> from the ancient civilization!' The team was <strong><%= adv_four %></strong> ecstatic. They continued to <strong><%= verb_two %></strong> and <strong><%= verb_three %></strong> throughout the rest of their expedition, uncovering more lost relics and learning more about the people who once inhabited the area.</p>

          <p>By the end of their journey, the team had not only found incredible pottery, arrowheads, and <strong><%= artifact_two %></strong> but also formed lasting friendships. They returned to their university, eagerly ready to write their dissertations with their discoveries.</p>"
        }
      }
    }
  
# MadLibService is responsible for managing mad lib templates and extracting placeholders.

  def self.placeholders_for(template)
    # scans for erb tags <%= %>
    # returns array of strings used in erb tags
    template.scan(/<%=\s*(\w+)\s*%>/).flatten.uniq
  end
end
