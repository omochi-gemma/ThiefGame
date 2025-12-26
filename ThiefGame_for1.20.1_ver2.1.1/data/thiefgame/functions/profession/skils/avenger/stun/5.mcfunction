effect give @a[team=lord,distance=..3] slowness 3 6 true
effect give @a[team=lord,distance=..3] jump_boost 3 199 true
particle minecraft:flame ~ ~1 ~ 1.2 1.2 1.2 0.05 150 force @a
particle minecraft:soul_fire_flame ~ ~1 ~ 1.2 1.2 1.2 0.05 150 force @a
playsound minecraft:block.sculk_shrieker.shriek master @a ~ ~ ~ 1 0.8 0
playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 0.3 0.8 0
execute if entity @a[team=lord,distance=..3] run scoreboard players add @s revenge 1