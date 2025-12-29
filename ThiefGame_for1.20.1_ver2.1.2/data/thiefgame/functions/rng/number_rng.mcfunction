summon area_effect_cloud ~ ~ ~ {Tags:["NUM_RNG"]}
execute store result score @s rng run data get entity @e[tag=NUM_RNG,distance=..0.01,limit=1] UUID[0]
scoreboard players operation @s rng %= #9 rng