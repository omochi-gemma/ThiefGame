#ドアブロックを破壊
playsound entity.zombie.break_wooden_door master @a ~ ~ ~ 1 2 0
tp @e[tag=chair3_1] 0 0 0
fill 4 49 144 4 50 144 air
kill @e[tag=chair3_1_break_interaction]