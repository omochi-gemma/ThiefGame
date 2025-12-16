#ドアブロックを破壊
playsound entity.zombie.break_wooden_door master @a ~ ~ ~ 1 2 0
tp @e[tag=sofa3_1] 0 0 0
fill 17 49 146 18 50 146 air
kill @e[tag=sofa3_1_break_interaction]