#召喚前にキル
kill @e[tag=profession_decision]

#召喚
summon interaction 85 38.5 51 {Tags:["ninja_decision","profession_decision"]}
summon interaction 81 38.3 51 {Tags:["engineer_decision","profession_decision"]}
summon interaction 85 38.5 54 {Tags:["psychic_decision","profession_decision"]}
summon interaction 81 38.3 54 {Tags:["nurse_decision","profession_decision"]}
summon interaction 85 38.3 57 {Tags:["avenger_decision","profession_decision"]}
summon interaction 81 38.3 57 {Tags:["chronomancer_decision","profession_decision"]}
summon interaction 83 38 59 {Tags:["random_decision","profession_decision"],width:1.01,height:1.01}


summon item_display 85 38.5 51 {Tags:["ninja_decision","profession_decision"],transformation:[0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.5000f,-1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],item:{id:"minecraft:red_dye",Count:1b,tag:{CustomModelData:1}}}
summon item_display 81.63 39 51.42 {Tags:["engineer_decision","profession_decision"],transformation:[-0.0000f,0.0000f,-1.0000f,0.0000f,0.0000f,2.0000f,0.0000f,0.5000f,2.0000f,0.0000f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}
summon item_display 85.55 39 54.55 {Tags:["psychic_decision","profession_decision"],item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:4}}}
summon item_display 81.63 38.9 54.42 {Tags:["nurse_decision","profession_decision"],transformation:[-0.0000f,0.0000f,-1.0000f,0.0000f,0.0000f,2.0000f,0.0000f,0.5000f,2.0000f,0.0000f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:5}}}
