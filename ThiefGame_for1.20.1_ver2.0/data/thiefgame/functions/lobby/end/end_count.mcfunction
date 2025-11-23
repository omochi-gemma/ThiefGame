tag @e[type=armor_stand,tag=rng,tag=end] remove end
scoreboard players add @e[type=armor_stand,tag=rng] end_count 1

execute if entity @e[type=armor_stand,tag=rng,scores={end_count=1}] run gamemode spectator @a
execute if entity @e[type=armor_stand,tag=rng,scores={end_count=1}] if entity @a[tag=success_escape] run title @a title {"text":"\u6ce5\u68d2\u306e\u52dd\u5229\uff01","bold":true,"color":"blue"}
execute if entity @e[type=armor_stand,tag=rng,scores={end_count=1}] if entity @a[tag=success_escape] at @a run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1 0
execute if entity @e[type=armor_stand,tag=rng,scores={end_count=1}] unless entity @a[tag=success_escape] run title @a title {"text":"\u9928\u306e\u4e3b\u306e\u52dd\u5229\uff01","bold":true,"color":"red"}
execute if entity @e[type=armor_stand,tag=rng,scores={end_count=1}] unless entity @a[tag=success_escape] at @a run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1 0
scoreboard players set @e[type=interaction,tag=soul_interaction] revive 30

execute if entity @e[type=armor_stand,tag=rng,scores={end_count=60}] run gamemode adventure @a
execute if entity @e[type=armor_stand,tag=rng,scores={end_count=60}] run clear @a
execute if entity @e[type=armor_stand,tag=rng,scores={end_count=60}] run function thiefgame:debug/give_opbook
execute if entity @e[type=armor_stand,tag=rng,scores={end_count=60}] run tp @a 80 37 37 0 0
execute if entity @e[type=armor_stand,tag=rng,scores={end_count=60}] run team leave @a
execute if entity @e[type=armor_stand,tag=rng,scores={end_count=60}] run effect clear @a
execute if entity @e[type=armor_stand,tag=rng,scores={end_count=60}] run difficulty peaceful
execute if entity @e[type=armor_stand,tag=rng,scores={end_count=60}] run scoreboard players set @a bloodstain_count 0
execute if entity @e[type=armor_stand,tag=rng,scores={end_count=60}] run kill @e[type=armor_stand,tag=bloodstain]
execute if entity @e[type=armor_stand,tag=rng,scores={end_count=60}] run tag @a remove success_escape
execute if entity @e[type=armor_stand,tag=rng,scores={end_count=60}] run tag @a remove down
execute if entity @e[type=armor_stand,tag=rng,scores={end_count=60}] run tag @a remove spawn
execute if entity @e[type=armor_stand,tag=rng,scores={end_count=60}] run tag @a remove ninja
execute if entity @e[type=armor_stand,tag=rng,scores={end_count=60}] run tag @a remove engineer
execute if entity @e[type=armor_stand,tag=rng,scores={end_count=60}] run tag @a remove psychic
execute if entity @e[type=armor_stand,tag=rng,scores={end_count=60}] run tag @a remove nurse
execute if entity @e[type=armor_stand,tag=rng,scores={end_count=60}] run tag @a remove avenger
execute if entity @e[type=armor_stand,tag=rng,scores={end_count=60}] run tag @a remove chronomancer
execute if entity @e[type=armor_stand,tag=rng,scores={end_count=60}] run tag @a remove bloodstain
execute if entity @e[type=armor_stand,tag=rng,scores={end_count=60}] run tag @a remove intelligent
execute if entity @e[type=armor_stand,tag=rng,scores={end_count=60}] run tag @a remove rush_forward
execute if entity @e[type=armor_stand,tag=rng,scores={end_count=60}] run tag @a remove adversity
execute if entity @e[type=armor_stand,tag=rng,scores={end_count=60}] run tag @a remove gambler
execute if entity @e[type=armor_stand,tag=rng,scores={end_count=60}] run tag @a add in_lobby
execute as @e[type=armor_stand,tag=rng,scores={end_count=61}] run tag @s remove end_count
execute as @e[type=armor_stand,tag=rng,scores={end_count=61}] run scoreboard players set @s end_count 0