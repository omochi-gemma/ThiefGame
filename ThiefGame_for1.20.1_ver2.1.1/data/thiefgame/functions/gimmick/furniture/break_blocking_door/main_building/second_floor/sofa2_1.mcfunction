#ドアブロックを破壊
playsound entity.zombie.break_wooden_door master @a ~ ~ ~ 1 2 0
tp @e[tag=sofa2_1] 0 0 0
fill 23 43 145 23 44 145 air
kill @e[tag=sofa2_1_break_interaction]