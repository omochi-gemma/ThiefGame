#簡易煙玉
execute as @e[type=egg] at @s run summon area_effect_cloud ~ ~ ~ {Duration:3,Tags:["simple_smoke"]}
execute as @e[type=area_effect_cloud,tag=simple_smoke,nbt={Age:2}] at @s unless entity @e[type=area_effect_cloud,tag=simple_smoke,nbt={Age:1}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["simple_smoke_point"]}
execute as @e[type=armor_stand,tag=simple_smoke_point] at @s run particle cloud ~ ~ ~ 1.2 1.2 1.2 0.001 60 force @a
execute as @e[type=armor_stand,tag=simple_smoke_point] at @s run scoreboard players add @s simple_smoke_count 1
execute as @e[type=armor_stand,tag=simple_smoke_point,scores={simple_smoke_count=600..}] run kill @s

#ニワトリが生まれた...？うーん...。
execute as @e[type=chicken] at @s run tp @s ~ -1000 ~