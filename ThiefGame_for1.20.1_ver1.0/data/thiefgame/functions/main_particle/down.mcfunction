execute unless entity @e[type=armor_stand,tag=down_p,distance=..3] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["down_p"],Marker:true}
tp @e[type=armor_stand,tag=down_p,sort=nearest,limit=1] ~ ~ ~ facing entity @p[team=thief,tag=down]

execute as @e[type=armor_stand,tag=down_p,sort=nearest,limit=1] at @s run function thiefgame:main_particle/down_particle