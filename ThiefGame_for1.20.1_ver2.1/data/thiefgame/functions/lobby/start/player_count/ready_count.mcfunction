#準備完了人数をリセット
scoreboard players set @s ready_count 0

#準備完了人数をカウント
execute as @a[tag=ready] run scoreboard players add @e[type=armor_stand,tag=rng] ready_count 1