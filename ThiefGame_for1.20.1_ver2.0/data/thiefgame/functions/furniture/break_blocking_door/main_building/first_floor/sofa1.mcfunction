#ドアブロックを破壊
playsound entity.zombie.break_wooden_door master @a ~ ~ ~ 1 2 0
tp @e[tag=sofa1] 0 0 0
fill -28 37 156 -29 38 156 air
kill @e[tag=sofa1_break_interaction]