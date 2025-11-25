#ドアをブロック
playsound block.wooden_door.open master @a ~ ~ ~ 1 0.5 0
tp @e[tag=shelf1_1] -31.5 38.4375 148.9375
summon interaction -31.5 37 148.9375 {Tags:["break_interaction","shelf1_1_break_interaction"],width:2.1f,height:2.0f,}
fill -32 37 148 -32 38 148 barrier
kill @e[tag=shelf1_1_place_interaction]