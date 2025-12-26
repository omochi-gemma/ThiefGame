#ドアブロックを破壊
playsound entity.zombie.break_wooden_door master @a ~ ~ ~ 1 2 0
tp @e[tag=sofa2_3] 0 0 0
fill -26 43 145 -25 44 145 air
kill @e[tag=sofa2_3_break_interaction]