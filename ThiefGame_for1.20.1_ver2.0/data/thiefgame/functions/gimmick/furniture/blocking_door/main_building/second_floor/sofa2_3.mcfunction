#ドアをブロック
playsound block.wooden_door.open master @a ~ ~ ~ 1 0.5 0
tp @e[tag=sofa2_3] -25.0 43.5 145.6875
summon interaction -25.0 43.5 145.6875 {Tags:["break_interaction","sofa2_3_break_interaction"],width:2.1f,height:2.0f,}
fill -26 43 145 -25 44 145 barrier
kill @e[tag=sofa2_3_place_interaction]