#ドアをブロック
playsound block.wooden_door.open master @a ~ ~ ~ 1 0.5 0
tp @e[tag=shelf2_2] -11.9375 44.5 146.5
summon interaction -11.4375 43 146.5 {Tags:["break_interaction","shelf2_2_break_interaction"],width:2.1f,height:2.0f,}
fill -12 43 146 -12 44 146 barrier
kill @e[tag=shelf2_2_place_interaction]