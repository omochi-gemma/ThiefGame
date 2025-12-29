summon area_effect_cloud ~ ~ ~ {Tags:["AREA4_RNG"]}
execute store result score @s rng run data get entity @e[tag=AREA4_RNG,distance=..0.01,limit=1] UUID[0]
scoreboard players operation @s rng %= #180 rng