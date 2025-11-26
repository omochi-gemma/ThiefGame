#ドアをブロック
playsound block.wooden_door.open master @a ~ ~ ~ 1 0.5 0
tp @e[tag=sofa2a_1] -9.6875 43.5 224.5
summon interaction -9.6875 43.5 224.5 {Tags:["break_interaction","sofa2a_1_break_interaction"],width:2.1f,height:2.0f,}
fill -10 43 224 -10 44 224 barrier
kill @e[tag=sofa2a_1_place_interaction]