effect give @s slowness 5 6 true
effect give @s jump_boost 5 199 true
effect give @s blindness 5 0 true
effect give @s weakness 5 255 true
particle dust 0.376 0 0 1 ~ ~ ~ 0.6 0.6 0.6 1 500 force @a
particle dust 0.161 0 0.204 1 ~ ~ ~ 0.6 0.6 0.6 1 500 force @a
playsound item.totem.use master @a ~ ~ ~ 0.2 0 0
summon interaction ~ ~1 ~ {Tags:["attack_cooldown"],width:1,height:1}
execute if entity @s[tag=adversity] run scoreboard players add @s lord_attack_count 1

advancement revoke @s only thiefgame:lord_attack