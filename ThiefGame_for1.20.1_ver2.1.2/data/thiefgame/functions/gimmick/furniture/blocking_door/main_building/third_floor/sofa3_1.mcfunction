#ドアをブロック
playsound block.wooden_door.open master @a ~ ~ ~ 1 0.5 0
tp @e[tag=sofa3_1] 18.0 49.5 146.6875
summon interaction 18.0 49.5 146.6875 {Tags:["break_interaction","sofa3_1_break_interaction"],width:2.1f,height:2.0f,}
fill 17 49 146 18 50 146 barrier
kill @e[tag=sofa3_1_place_interaction]