#ドアをブロック
playsound block.wooden_door.open master @a ~ ~ ~ 1 0.5 0
tp @e[tag=chair3_1] 4.3125 49.75 144.5
summon interaction 4.3125 49.25 144.5 {Tags:["break_interaction","chair3_1_break_interaction"],width:2.1f,height:2.0f,}
fill 4 49 144 4 50 144 barrier
kill @e[tag=chair3_1_place_interaction]