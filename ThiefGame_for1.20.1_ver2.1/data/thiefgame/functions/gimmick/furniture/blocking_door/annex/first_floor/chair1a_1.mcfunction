#ドアをブロック
playsound block.wooden_door.open master @a ~ ~ ~ 1 0.5 0
tp @e[tag=chair1a_1] -7.5 38.75 211.5
summon interaction -7.5 38.25 211.5 {Tags:["break_interaction","chair1a_1_break_interaction"],width:2.1f,height:2.0f,}
fill -8 38 211 -8 39 211 barrier
kill @e[tag=chair1a_1_place_interaction]