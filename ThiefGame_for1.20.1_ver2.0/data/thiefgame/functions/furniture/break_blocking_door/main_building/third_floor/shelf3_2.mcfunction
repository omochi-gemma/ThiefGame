#ドアブロックを破壊
playsound entity.zombie.break_wooden_door master @a ~ ~ ~ 1 2 0
tp @e[tag=shelf3_2] 0 0 0
fill -8 49 160 -8 50 160 air
kill @e[tag=shelf3_2_break_interaction]