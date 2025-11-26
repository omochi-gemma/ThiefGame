#ドアブロックを破壊
playsound entity.zombie.break_wooden_door master @a ~ ~ ~ 1 2 0
tp @e[tag=sofa2_4] 0 0 0
fill -26 43 160 -25 44 160 air
kill @e[tag=sofa2_4_break_interaction]