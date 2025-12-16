effect give @a[team=lord,distance=..10] slowness 10 6 true
effect give @a[team=lord,distance=..10] jump_boost 10 199 true
particle minecraft:flame ~ ~1 ~ 4 4 4 0.05 1000 force @a
particle minecraft:soul_fire_flame ~ ~1 ~ 4 4 4 0.05 1000 force @a
playsound minecraft:block.sculk_shrieker.shriek master @a ~ ~ ~ 1 0.8 0
playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 0.3 0.8 0
execute if entity @a[team=lord,distance=..10] run scoreboard players add @s revenge 1