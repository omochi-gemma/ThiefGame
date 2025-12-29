scoreboard players add @a[team=lord] footprint 1
scoreboard players add @e[type=armor_stand,tag=footprint] footprint 1

execute at @a[team=lord,scores={footprint=100..}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["footprint"]}
scoreboard players set @a[team=lord,scores={footprint=100..}] footprint 0

execute at @e[type=armor_stand,tag=footprint] run particle dust 0 0 0 1 ~ ~ ~ 0.2 0.1 0.2 0.1 10 force @a[team=thief,tag=psychic]
execute at @e[type=armor_stand,tag=footprint] run particle dust 0.5 0 0 1 ~ ~ ~ 0.2 0.1 0.2 0.1 10 force @a[team=thief,tag=psychic]

kill @e[type=armor_stand,tag=footprint,scores={footprint=100..}]