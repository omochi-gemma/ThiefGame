#ドアをブロック
playsound block.wooden_door.open master @a ~ ~ ~ 1 0.5 0
tp @e[tag=sofa2_1] 23.5 43.5 145.6875
summon interaction 23.5 43.5 145.6875 {Tags:["break_interaction","sofa2_1_break_interaction"],width:2.1f,height:2.0f,}
fill 23 43 145 23 44 145 barrier
kill @e[tag=sofa2_1_place_interaction]