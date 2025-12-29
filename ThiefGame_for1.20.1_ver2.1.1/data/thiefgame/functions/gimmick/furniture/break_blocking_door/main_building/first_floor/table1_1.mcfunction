#ドアブロックを破壊
playsound entity.zombie.break_wooden_door master @a ~ ~ ~ 1 2 0
tp @e[tag=table1_1] 0 0 0
fill 18 37 148 18 38 148 air
kill @e[tag=table1_1_break_interaction]