#ドアブロックを破壊
playsound entity.zombie.break_wooden_door master @a ~ ~ ~ 1 2 0
tp @e[tag=sofa1_2] 0 0 0
fill -24 37 148 -24 38 148 air
kill @e[tag=sofa1_2_break_interaction]