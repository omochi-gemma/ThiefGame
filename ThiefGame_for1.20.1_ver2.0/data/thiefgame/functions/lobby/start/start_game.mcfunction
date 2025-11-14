scoreboard players set @a use_carrot1 0
scoreboard players set @a use_carrot2 0
scoreboard players set @a use_carrot3 0
scoreboard players set @a use_carrot4 0
scoreboard players set @a use_carrot5 0
scoreboard players set @a use_carrot6 0
scoreboard players set @a revenge 0
tag @a remove in_lobby
tp @a[team=thief] -3.0 37 141.0 0 0
tp @a[team=spectator] -3.0 37 141.0 0 0
tp @a[team=lord] -36 62 145 -90 0
function thiefgame:lobby/start/give_skilitem
playsound entity.experience_orb.pickup master @a -3.0 37 141.0 1 1 0
playsound entity.experience_orb.pickup master @a -36 62 145 1 1 0
playsound entity.horse.death master @a -3.0 37 141.0 1 1 0
playsound entity.horse.death master @a -36 62 145 1 1 0
tag @e[type=armor_stand,tag=rng] add timer
scoreboard players set @e[type=armor_stand,tag=rng,tag=timer] timer_count 0
execute as @e[type=armor_stand,tag=rng,tag=timer] store result score @s operation_score run scoreboard players get @s timer
execute as @e[type=armor_stand,tag=rng,tag=timer] store result score @s timer_minute run scoreboard players operation @s operation_score /= #60 timer
execute as @e[type=armor_stand,tag=rng,tag=timer] store result score @s operation_score run scoreboard players get @s timer
execute as @e[type=armor_stand,tag=rng,tag=timer] store result score @s timer_second run scoreboard players operation @s operation_score %= #60 timer
execute store result bossbar thiefgame:timer max run scoreboard players get @e[type=armor_stand,tag=rng,tag=timer,limit=1] timer
execute store result bossbar thiefgame:timer value run scoreboard players get @e[type=armor_stand,tag=rng,tag=timer,limit=1] timer
bossbar set thiefgame:timer visible true
difficulty hard