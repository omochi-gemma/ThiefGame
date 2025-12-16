#ドアをブロック
playsound block.wooden_door.open master @a ~ ~ ~ 1 0.5 0
tp @e[tag=longtable2a_1] 8.5 44.0 206.25
summon interaction 8.5 43.0 206.25 {Tags:["break_interaction","longtable2a_1_break_interaction"],width:2.1f,height:2.0f,}
fill 8 43 206 8 44 206 barrier
kill @e[tag=longtable2a_1_place_interaction]