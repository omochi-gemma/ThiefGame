#ドアをブロック
playsound block.wooden_door.open master @a ~ ~ ~ 1 0.5 0
tp @e[tag=sofa2_2] 23.5 43.5 160.3125
summon interaction 23.5 43.5 160.3125 {Tags:["break_interaction","sofa2_2_break_interaction"],width:2.1f,height:2.0f,}
fill 23 43 160 23 44 160 barrier
kill @e[tag=sofa2_2_place_interaction]