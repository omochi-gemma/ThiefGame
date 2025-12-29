#ドアをブロック
playsound block.wooden_door.open master @a ~ ~ ~ 1 0.5 0
tp @e[tag=sofa3_3] -15.6875 49.5 152.5
summon interaction -15.6875 49.5 152.5 {Tags:["break_interaction","sofa3_3_break_interaction"],width:2.1f,height:2.0f,}
fill -16 49 152 -16 50 152 barrier
kill @e[tag=sofa3_3_place_interaction]