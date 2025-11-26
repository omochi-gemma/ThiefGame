#ドアブロックを破壊
playsound entity.zombie.break_wooden_door master @a ~ ~ ~ 1 2 0
tp @e[tag=chair1a_1] 0 0 0
fill -8 38 211 -8 39 211 air
kill @e[tag=chair1a_1_break_interaction]