#どこに何色があるか記録
execute as @e[type=armor_stand,tag=CP] at @s if block ~ ~ ~ red_concrete_powder run tag @s add CP_red
execute as @e[type=armor_stand,tag=CP] at @s if block ~ ~ ~ blue_concrete_powder run tag @s add CP_blue
execute as @e[type=armor_stand,tag=CP] at @s if block ~ ~ ~ yellow_concrete_powder run tag @s add CP_yellow
execute as @e[type=armor_stand,tag=CP] at @s if block ~ ~ ~ green_concrete_powder run tag @s add CP_green
execute as @e[type=armor_stand,tag=CP] at @s if block ~ ~ ~ purple_concrete_powder run tag @s add CP_purple
execute as @e[type=armor_stand,tag=CP] at @s if block ~ ~ ~ orange_concrete_powder run tag @s add CP_orange

#条件を満たしているかチェック
execute as @e[type=armor_stand,tag=CP] at @s run function thiefgame:concrete/cp_colorcheck


#失敗処理
execute unless entity @e[type=armor_stand,tag=rng,scores={success_colorcheck=18}] run function thiefgame:concrete/faile

#成功処理
execute if entity @e[type=armor_stand,tag=rng,scores={success_colorcheck=18}] run function thiefgame:concrete/success


#スコアリセット
scoreboard players set @e[type=armor_stand,tag=rng] success_colorcheck 0