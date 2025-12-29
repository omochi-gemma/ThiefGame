#ドアブロックを破壊
playsound entity.zombie.break_wooden_door master @a ~ ~ ~ 1 2 0
tp @e[tag=chair2a_1] 0 0 0
fill 10 43 222 10 44 222 air
kill @e[tag=chair2a_1_break_interaction]