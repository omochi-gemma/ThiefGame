#蘇生
execute as @e[type=interaction,tag=soul_interaction] on target at @s if entity @s[team=thief,tag=!down,tag=nurse] as @e[type=interaction,tag=soul_interaction,nbt={interaction:{}},sort=nearest] run scoreboard players add @s revive 1
execute as @e[type=interaction,tag=soul_interaction,scores={revive=5}] at @s run particle soul_fire_flame ~ ~0.7 ~ 0.2 0.2 0.2 0.03 5 force @a
execute as @e[type=interaction,tag=soul_interaction,scores={revive=5}] at @s run playsound block.note_block.chime master @a ~ ~ ~ 1 1.5 0
execute as @e[type=interaction,tag=soul_interaction,scores={revive=5}] at @s run playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 1.5 0
execute as @e[type=interaction,tag=soul_interaction,scores={revive=5}] at @s run scoreboard players add @s revive 1
execute as @e[type=interaction,tag=soul_interaction,scores={revive=11}] at @s run particle soul_fire_flame ~ ~0.7 ~ 0.2 0.2 0.2 0.03 10 force @a
execute as @e[type=interaction,tag=soul_interaction,scores={revive=11}] at @s run playsound block.note_block.chime master @a ~ ~ ~ 1 1.6 0
execute as @e[type=interaction,tag=soul_interaction,scores={revive=11}] at @s run playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 1.7 0
execute as @e[type=interaction,tag=soul_interaction,scores={revive=11}] at @s run scoreboard players add @s revive 1
execute as @e[type=interaction,tag=soul_interaction,scores={revive=17}] at @s run particle soul_fire_flame ~ ~0.7 ~ 0.2 0.2 0.2 0.03 20 force @a
execute as @e[type=interaction,tag=soul_interaction,scores={revive=17}] at @s run playsound block.note_block.chime master @a ~ ~ ~ 1 1.7 0
execute as @e[type=interaction,tag=soul_interaction,scores={revive=17}] at @s run playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 1.8 0
execute as @e[type=interaction,tag=soul_interaction,scores={revive=17}] at @s run scoreboard players add @s revive 1
execute as @e[type=interaction,tag=soul_interaction,scores={revive=23}] at @s run particle soul_fire_flame ~ ~0.7 ~ 0.2 0.2 0.2 0.03 50 force @a
execute as @e[type=interaction,tag=soul_interaction,scores={revive=23}] at @s run playsound block.note_block.chime master @a ~ ~ ~ 1 1.8 0
execute as @e[type=interaction,tag=soul_interaction,scores={revive=23}] at @s run playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 2 0
execute as @e[type=interaction,tag=soul_interaction,scores={revive=23}] at @s run scoreboard players add @s revive 1
execute as @e[type=interaction,tag=soul_interaction,scores={revive=29}] at @s run particle minecraft:flame ~ ~0.7 ~ 0.2 0.2 0.2 0.1 70 force @a
execute as @e[type=interaction,tag=soul_interaction,scores={revive=29}] at @s run playsound entity.player.levelup master @a ~ ~ ~ 1 2 0
execute as @e[type=interaction,tag=soul_interaction,scores={revive=29}] at @s run playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 2 0
execute as @e[type=interaction,tag=soul_interaction,scores={revive=29}] at @s run scoreboard players add @s revive 1
execute as @e[type=interaction,tag=soul_interaction,scores={revive=30..}] at @s positioned ~ ~-1 ~ run tag @p[team=thief,tag=down] add live
execute as @e[type=interaction,tag=soul_interaction,scores={revive=30..}] at @s positioned ~ ~-1 ~ run effect give @p[team=thief,tag=down] health_boost infinite 4 true
execute as @e[type=interaction,tag=soul_interaction,scores={revive=30..}] at @s positioned ~ ~-1 ~ run effect give @p[team=thief,tag=down] instant_health 1 4 true
execute as @e[type=interaction,tag=soul_interaction,scores={revive=30..}] at @s positioned ~ ~-1 ~ run tag @p[team=thief,tag=down,tag=spawn] remove spawn
execute as @e[type=interaction,tag=soul_interaction,scores={revive=30..}] at @s positioned ~ ~-1 ~ run tag @p[team=thief,tag=down] remove down
execute as @e[type=interaction,tag=soul_interaction,scores={revive=30..}] at @s run tp @e[tag=souls,distance=..1,limit=3,sort=nearest] ~ -1000 ~
execute as @e[type=interaction,tag=soul_interaction,scores={revive=30..}] at @s positioned ~ -1000 ~ run kill @e[tag=souls,distance=..1,limit=3,sort=nearest]