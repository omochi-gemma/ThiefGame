#ドアブロックを破壊
playsound entity.zombie.break_wooden_door master @a ~ ~ ~ 1 2 0
tp @e[tag=shelf2_2] 0 0 0
fill -12 43 146 -12 44 146 air
kill @e[tag=shelf2_2_break_interaction]