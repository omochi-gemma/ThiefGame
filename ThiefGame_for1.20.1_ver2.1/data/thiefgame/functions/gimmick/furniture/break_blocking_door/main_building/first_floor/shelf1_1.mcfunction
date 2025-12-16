#ドアブロックを破壊
playsound entity.zombie.break_wooden_door master @a ~ ~ ~ 1 2 0
tp @e[tag=shelf1_1] 0 0 0
fill -32 37 148 -32 38 148 air
kill @e[tag=shelf1_1_break_interaction]