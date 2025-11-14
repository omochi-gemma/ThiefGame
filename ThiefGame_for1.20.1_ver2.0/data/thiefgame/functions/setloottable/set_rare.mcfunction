#別館のアイテムをリセット
execute as @e[type=armor_stand,tag=a] at @s run data merge block ~ ~ ~ {LootTable:"minecraft:commands/none"}

#別館にアイテムを配置
execute as @e[type=armor_stand,tag=a] at @s if predicate minecraft:set_rare run data merge block ~ ~ ~ {LootTable:"minecraft:commands/rare"}