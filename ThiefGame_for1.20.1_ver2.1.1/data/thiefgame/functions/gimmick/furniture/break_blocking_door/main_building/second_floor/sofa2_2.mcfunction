#ドアブロックを破壊
playsound entity.zombie.break_wooden_door master @a ~ ~ ~ 1 2 0
tp @e[tag=sofa2_2] 0 0 0
fill 23 43 160 23 44 160 air
kill @e[tag=sofa2_2_break_interaction]