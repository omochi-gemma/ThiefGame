scoreboard players add @a[tag=avenger] revenge 1
execute at @a[tag=avenger] run playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 0.7 0
execute at @a[tag=avenger] run particle minecraft:damage_indicator ~ ~1 ~ 0.2 0.2 0.2 0.4 20 force @a
execute if entity @s[tag=avenger,scores={adrenaline=1..60}] run tag @s add damage
advancement revoke @s only thiefgame:thief_damage