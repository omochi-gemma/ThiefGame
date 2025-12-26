#ドアブロックを破壊
playsound entity.zombie.break_wooden_door master @a ~ ~ ~ 1 2 0
tp @e[tag=sofa3_2] 0 0 0
fill 17 49 158 18 50 158 air
kill @e[tag=sofa3_2_break_interaction]