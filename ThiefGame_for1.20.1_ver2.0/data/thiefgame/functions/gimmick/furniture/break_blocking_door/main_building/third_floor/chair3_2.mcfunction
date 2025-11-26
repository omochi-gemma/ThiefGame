#ドアブロックを破壊
playsound entity.zombie.break_wooden_door master @a ~ ~ ~ 1 2 0
tp @e[tag=chair3_2] 0 0 0
fill -8 49 144 -8 50 144 air
kill @e[tag=chair3_2_break_interaction]