#2階のアイテムをリセット
execute as @e[type=armor_stand,tag=2] at @s run data merge block ~ ~ ~ {LootTable:"minecraft:commands/none"}

#2階にアイテムを配置
execute as @e[type=armor_stand,tag=2] at @s if predicate minecraft:set_uncommon run data merge block ~ ~ ~ {LootTable:"minecraft:commands/uncommon"}