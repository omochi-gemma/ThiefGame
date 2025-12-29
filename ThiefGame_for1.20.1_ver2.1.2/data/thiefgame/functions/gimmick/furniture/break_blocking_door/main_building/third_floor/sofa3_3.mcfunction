#ドアブロックを破壊
playsound entity.zombie.break_wooden_door master @a ~ ~ ~ 1 2 0
tp @e[tag=sofa3_3] 0 0 0
fill -16 49 152 -16 50 152 air
kill @e[tag=sofa3_3_break_interaction]