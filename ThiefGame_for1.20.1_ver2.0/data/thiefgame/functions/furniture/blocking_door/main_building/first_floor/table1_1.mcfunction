#ドアをブロック
playsound block.wooden_door.open master @a ~ ~ ~ 1 0.5 0
tp @e[tag=table1_1] 18.5 38.0 148.1875
summon interaction 18.5 37.0 148.1875 {Tags:["break_interaction","table1_1_break_interaction"],width:2.1f,height:2.0f,}
fill 18 37 148 18 38 148 barrier
kill @e[tag=table1_1_place_interaction]