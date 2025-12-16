#ドアをブロック
playsound block.wooden_door.open master @a ~ ~ ~ 1 0.5 0
tp @e[tag=sofa2_4] -25.0 43.5 160.3125
summon interaction -25.0 43.5 160.3125 {Tags:["break_interaction","sofa2_4_break_interaction"],width:2.1f,height:2.0f,}
fill -26 43 160 -25 44 160 barrier
kill @e[tag=sofa2_4_place_interaction]