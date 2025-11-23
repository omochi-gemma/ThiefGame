#ダウン検知
tag @s[scores={Health=..20},tag=!live,tag=!in_lobby] add down
tag @s[tag=down,scores={Health=21..}] remove down
tag @s[tag=live,scores={Health=21..}] remove live

#体力増強
effect give @s[tag=!down] health_boost infinite 4 true
effect clear @s[tag=down] health_boost

#ダウン状態
execute if entity @s[tag=down,tag=!spawn] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["souls","soul_arm"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,AttachFace:0b,Color:6b,Tags:["souls","soul"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:-1,ShowParticles:0b}]}]}
execute if entity @s[tag=down,tag=!spawn] run summon interaction ~ ~1 ~ {Tags:["souls","soul_interaction"],width:1.1,height:1.1}
execute if entity @s[tag=down,tag=!spawn] run give @s potion{display:{Name:'{"text":"怪しい薬","color":"dark_purple"}',Lore:['{"text":"飲むと致死量のダメージを受けるが、","color":"light_purple"}','{"text":"極稀に復活できる事がある。","color":"light_purple"}']},CustomModelData:1} 1
execute if entity @s[tag=down,tag=!spawn] run effect give @s instant_health 1 5 true
execute if entity @s[tag=down,tag=!spawn] run tellraw @a ["",{"selector":"@s"},{"text":"\u306f\u30c0\u30a6\u30f3\u3057\u305f"}]
execute if entity @s[tag=down,tag=!spawn] run tag @s add spawn
execute as @s[tag=down] at @s run tp @e[type=armor_stand,tag=soul_arm,sort=nearest,limit=1] ~ ~1 ~
execute as @s[tag=down] at @s run tp @e[type=interaction,tag=soul_interaction,sort=nearest,limit=1] @e[type=shulker,tag=soul,limit=1,sort=nearest]
execute as @e[type=interaction,tag=soul_interaction] at @s run particle minecraft:dust 0.376 0.678 1 1 ~ ~0.5 ~ 0.1 0.1 0.1 0.01 5 force @a

#ダウン状態のダメージ
execute as @s[tag=down] at @s run scoreboard players add @s down_damage_count 1
execute as @s[tag=down,scores={down_damage_count=100..}] at @s run damage @s 2 wither
execute as @s[tag=down,scores={down_damage_count=100..}] at @s run scoreboard players set @s down_damage_count 0

#血痕
execute if entity @s[tag=bloodstain] run function thiefgame:lobby/bloodstain/add_score
execute as @e[type=armor_stand,tag=bloodstain,nbt={OnGround:true}] run data merge entity @s {Marker:true}
scoreboard players add @e[type=armor_stand,tag=bloodstain] bloodstain_lifespan 1
execute as @e[type=armor_stand,tag=bloodstain] at @s run particle item redstone_block ~ ~ ~ 0.2 0.001 0.2 0.00001 30 force @a
execute as @e[type=armor_stand,tag=bloodstain,scores={bloodstain_lifespan=100..}] run kill @s