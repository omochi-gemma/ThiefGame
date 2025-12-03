#別館のアイテムをリセット
execute as @e[type=armor_stand,tag=a] at @s run data merge block ~ ~ ~ {LootTable:"minecraft:commands/none"}

#別館にアイテムを配置
execute as @e[type=armor_stand,tag=a] at @s if predicate minecraft:set_rare run data merge block ~ ~ ~ {LootTable:"minecraft:commands/rare"}


#色鍵を配置
##黄の鍵
execute if entity @e[type=armor_stand,tag=rng,scores={rng=..24}] as @e[type=armor_stand,tag=a1_1] at @s run tag @s add yellowkeya1_1
execute if entity @e[type=armor_stand,tag=rng,scores={rng=25..49}] as @e[type=armor_stand,tag=a1_2] at @s run tag @s add yellowkeya1_2
execute if entity @e[type=armor_stand,tag=rng,scores={rng=50..74}] as @e[type=armor_stand,tag=a1_3] at @s run tag @s add yellowkeya1_3
execute if entity @e[type=armor_stand,tag=rng,scores={rng=75..99}] as @e[type=armor_stand,tag=a1_4] at @s run tag @s add yellowkeya1_4
##緑の鍵
execute if entity @e[type=armor_stand,tag=rng,scores={rng=..16}] as @e[type=armor_stand,tag=a2_1] at @s run tag @s add greenkeya2_1
execute if entity @e[type=armor_stand,tag=rng,scores={rng=17..33}] as @e[type=armor_stand,tag=a2_2] at @s run tag @s add greenkeya2_2
execute if entity @e[type=armor_stand,tag=rng,scores={rng=34..50}] as @e[type=armor_stand,tag=a2_3] at @s run tag @s add greenkeya2_3
execute if entity @e[type=armor_stand,tag=rng,scores={rng=51..66}] as @e[type=armor_stand,tag=a2_4] at @s run tag @s add greenkeya2_4
execute if entity @e[type=armor_stand,tag=rng,scores={rng=67..83}] as @e[type=armor_stand,tag=a2_5] at @s run tag @s add greenkeya2_5
execute if entity @e[type=armor_stand,tag=rng,scores={rng=84..99}] as @e[type=armor_stand,tag=a2_6] at @s run tag @s add greenkeya2_6
##赤の鍵
execute if entity @e[type=armor_stand,tag=rng,scores={rng=..19}] as @e[type=armor_stand,tag=a1_5] at @s run tag @s add redkeya1_1
execute if entity @e[type=armor_stand,tag=rng,scores={rng=20..39}] as @e[type=armor_stand,tag=a1_6] at @s run tag @s add redkeya1_2
execute if entity @e[type=armor_stand,tag=rng,scores={rng=40..59}] as @e[type=armor_stand,tag=a1_7] at @s run tag @s add redkeya1_3
execute if entity @e[type=armor_stand,tag=rng,scores={rng=60..79}] as @e[type=armor_stand,tag=a1_8] at @s run tag @s add redkeya1_4
execute if entity @e[type=armor_stand,tag=rng,scores={rng=80..99}] as @e[type=armor_stand,tag=a1_9] at @s run tag @s add redkeya1_5
##青の鍵
execute if entity @e[type=armor_stand,tag=rng,scores={rng=..16}] as @e[type=armor_stand,tag=a2_7] at @s run tag @s add bluekeya2_1
execute if entity @e[type=armor_stand,tag=rng,scores={rng=17..33}] as @e[type=armor_stand,tag=a2_8] at @s run tag @s add bluekeya2_2
execute if entity @e[type=armor_stand,tag=rng,scores={rng=34..50}] as @e[type=armor_stand,tag=a2_9] at @s run tag @s add bluekeya2_3
execute if entity @e[type=armor_stand,tag=rng,scores={rng=51..66}] as @e[type=armor_stand,tag=a2_10] at @s run tag @s add bluekeya2_4
execute if entity @e[type=armor_stand,tag=rng,scores={rng=67..83}] as @e[type=armor_stand,tag=a2_11] at @s run tag @s add bluekeya2_5
execute if entity @e[type=armor_stand,tag=rng,scores={rng=84..99}] as @e[type=armor_stand,tag=a2_12] at @s run tag @s add bluekeya2_6