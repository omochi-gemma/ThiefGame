#ドアブロックを破壊
playsound entity.zombie.break_wooden_door master @a ~ ~ ~ 1 2 0
tp @e[tag=shelf3_1] 0 0 0
fill 4 49 160 4 50 160 air
kill @e[tag=shelf3_1_break_interaction]