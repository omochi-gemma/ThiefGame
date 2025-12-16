#参加人数をリセット
scoreboard players set @s joined_player_count 0

#参加人数をカウント
execute as @a[team=thief] run scoreboard players add @e[type=minecraft:armor_stand,tag=rng] joined_player_count 1
execute as @a[team=lord] run scoreboard players add @e[type=minecraft:armor_stand,tag=rng] joined_player_count 1

#誰もいなかったとき、-1
execute if entity @s[scores={joined_player_count=0}] run scoreboard players set @s joined_player_count -1