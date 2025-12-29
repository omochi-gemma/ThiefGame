#ドアをブロック
playsound block.wooden_door.open master @a ~ ~ ~ 1 0.5 0
tp @e[tag=shelf3_1] 4.9375 50.5 160.5
summon interaction 4.4375 49 160.5 {Tags:["break_interaction","shelf3_1_break_interaction"],width:2.1f,height:2.0f,}
fill 4 49 160 4 50 160 barrier
kill @e[tag=shelf3_1_place_interaction]