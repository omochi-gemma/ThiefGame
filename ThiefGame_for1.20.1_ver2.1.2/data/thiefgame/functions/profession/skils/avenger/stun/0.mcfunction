effect give @a[team=lord,distance=..1] slowness 1 6 true
effect give @a[team=lord,distance=..1] jump_boost 1 199 true
particle flame ~ ~1 ~ 0.6 0.6 0.6 0.05 100 force @a
particle soul_fire_flame ~ ~1 ~ 0.6 0.6 0.6 0.05 100 force @a
playsound minecraft:block.sculk_shrieker.shriek master @a ~ ~ ~ 1 0.8 0
playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 0.3 0.8 0
execute if entity @a[team=lord,distance=..1] run scoreboard players add @s revenge 1