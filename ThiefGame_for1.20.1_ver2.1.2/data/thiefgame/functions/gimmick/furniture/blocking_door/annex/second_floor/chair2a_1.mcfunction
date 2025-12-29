#ドアをブロック
playsound block.wooden_door.open master @a ~ ~ ~ 1 0.5 0
tp @e[tag=chair2a_1] 10.25 43.75 222.5
summon interaction 10.25 43.25 222.5 {Tags:["break_interaction","chair2a_1_break_interaction"],width:2.1f,height:2.0f,}
fill 10 43 222 10 44 222 barrier
kill @e[tag=chair2a_1_place_interaction]