#ドアをブロック
playsound block.wooden_door.open master @a ~ ~ ~ 1 0.5 0
tp @e[tag=shelf2_1] -1.0625 44.5 146.5
summon interaction -1.5625 43 146.5 {Tags:["break_interaction","shelf2_1_break_interaction"],width:2.1f,height:2.0f,}
fill -2 43 146 -2 44 146 barrier
kill @e[tag=shelf2_1_place_interaction]