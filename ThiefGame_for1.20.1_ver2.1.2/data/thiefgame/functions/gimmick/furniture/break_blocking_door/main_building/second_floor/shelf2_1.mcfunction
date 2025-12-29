#ドアブロックを破壊
playsound entity.zombie.break_wooden_door master @a ~ ~ ~ 1 2 0
tp @e[tag=shelf2_1] 0 0 0
fill -2 43 146 -2 44 146 air
kill @e[tag=shelf2_1_break_interaction]