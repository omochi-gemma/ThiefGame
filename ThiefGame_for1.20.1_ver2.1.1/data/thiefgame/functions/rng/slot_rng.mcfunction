summon area_effect_cloud ~ ~ ~ {Tags:["SLOT_RNG"]}
execute store result score @s slot_rng run data get entity @e[tag=SLOT_RNG,distance=..0.01,limit=1] UUID[0]
scoreboard players operation @s slot_rng %= #10 rng