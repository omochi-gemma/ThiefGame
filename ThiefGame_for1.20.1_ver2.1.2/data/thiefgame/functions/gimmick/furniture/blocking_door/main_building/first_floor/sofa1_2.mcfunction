#ドアをブロック
playsound block.wooden_door.open master @a ~ ~ ~ 1 0.5 0
tp @e[tag=sofa1_2] -23.5 37.5 148.3125
summon interaction -23.5 37.5 148.3125 {Tags:["break_interaction","sofa1_2_break_interaction"],width:2.1f,height:2.0f,}
fill -24 37 148 -24 38 148 barrier
kill @e[tag=sofa1_2_place_interaction]