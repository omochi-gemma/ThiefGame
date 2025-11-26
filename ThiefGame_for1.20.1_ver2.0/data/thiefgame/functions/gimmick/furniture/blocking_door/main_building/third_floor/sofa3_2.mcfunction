#ドアをブロック
playsound block.wooden_door.open master @a ~ ~ ~ 1 0.5 0
tp @e[tag=sofa3_2] 18.0 49.5 158.3125
summon interaction 18.0 49.5 158.3125 {Tags:["break_interaction","sofa3_2_break_interaction"],width:2.1f,height:2.0f,}
fill 17 49 158 18 50 158 barrier
kill @e[tag=sofa3_2_place_interaction]