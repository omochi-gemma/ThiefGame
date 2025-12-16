#ドアをブロック
playsound block.wooden_door.open master @a ~ ~ ~ 1 0.5 0
tp @e[tag=sofa1_1] -27.9375 37.5 156.6875
summon interaction -28.01 37 156.6875 {Tags:["break_interaction","sofa1_1_break_interaction"],width:2.1f,height:2.0f,}
fill -28 37 156 -29 38 156 barrier
kill @e[tag=sofa1_1_place_interaction]