#1階と3階と屋上のアイテムをリセット
execute as @e[type=armor_stand,tag=1] at @s run data merge block ~ ~ ~ {LootTable:"minecraft:commands/none"}
execute as @e[type=armor_stand,tag=3] at @s run data merge block ~ ~ ~ {LootTable:"minecraft:commands/none"}
execute as @e[type=armor_stand,tag=r] at @s run data merge block ~ ~ ~ {LootTable:"minecraft:commands/none"}
#1階と3階と屋上にアイテムを配置
execute as @e[type=armor_stand,tag=1] at @s if predicate minecraft:set_common run data merge block ~ ~ ~ {LootTable:"minecraft:commands/common"}
execute as @e[type=armor_stand,tag=3] at @s if predicate minecraft:set_common run data merge block ~ ~ ~ {LootTable:"minecraft:commands/common"}
execute as @e[type=armor_stand,tag=r] at @s if predicate minecraft:set_common run data merge block ~ ~ ~ {LootTable:"minecraft:commands/common"}

#1階と3階と屋上のチェストのために乱数生成
execute as @e[type=armor_stand,tag=rng] at @s run function thiefgame:rng/rng

#3階と屋上のチェストと乱数を比較して鍵を配置
execute if entity @e[type=armor_stand,tag=rng,scores={rng=..19}] as @e[type=armor_stand,tag=3_1] at @s run tag @s add ck1_3_1
execute if entity @e[type=armor_stand,tag=rng,scores={rng=20..39}] as @e[type=armor_stand,tag=3_2] at @s run tag @s add ck1_3_2
execute if entity @e[type=armor_stand,tag=rng,scores={rng=40..59}] as @e[type=armor_stand,tag=3_3] at @s run tag @s add ck1_3_3
execute if entity @e[type=armor_stand,tag=rng,scores={rng=60..79}] as @e[type=armor_stand,tag=3_4] at @s run tag @s add ck1_3_4
execute if entity @e[type=armor_stand,tag=rng,scores={rng=80..99}] as @e[type=armor_stand,tag=3_5] at @s run tag @s add ck1_3_5

execute if entity @e[type=armor_stand,tag=rng,scores={rng=..24}] as @e[type=armor_stand,tag=r_1] at @s run tag @s add 2ndkey_r_1
execute if entity @e[type=armor_stand,tag=rng,scores={rng=25..49}] as @e[type=armor_stand,tag=r_2] at @s run tag @s add 2ndkey_r_2
execute if entity @e[type=armor_stand,tag=rng,scores={rng=50..74}] as @e[type=armor_stand,tag=r_3] at @s run tag @s add 2ndkey_r_3
execute if entity @e[type=armor_stand,tag=rng,scores={rng=75..99}] as @e[type=armor_stand,tag=r_4] at @s run tag @s add 2ndkey_r_4