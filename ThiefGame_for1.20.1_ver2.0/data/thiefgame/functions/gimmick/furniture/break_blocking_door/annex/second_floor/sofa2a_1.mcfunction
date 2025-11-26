#ドアブロックを破壊
playsound entity.zombie.break_wooden_door master @a ~ ~ ~ 1 2 0
tp @e[tag=sofa2a_1] 0 0 0
fill -10 43 224 -10 44 224 air
kill @e[tag=sofa2a_1_break_interaction]