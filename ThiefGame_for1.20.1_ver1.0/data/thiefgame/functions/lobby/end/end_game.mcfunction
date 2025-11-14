execute unless entity @a[team=thief] run execute if entity @e[type=armor_stand,tag=rng,tag=timer] run tag @e[type=armor_stand,tag=rng] add end_count
execute unless entity @a[team=thief] run execute if entity @e[type=armor_stand,tag=rng,tag=timer] run scoreboard players set @e[type=armor_stand,tag=rng,tag=timer] timer 0
