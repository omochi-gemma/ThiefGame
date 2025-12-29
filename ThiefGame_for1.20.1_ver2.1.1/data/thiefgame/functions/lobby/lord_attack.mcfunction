execute unless entity @s[tag=adversity] run effect give @s slowness 5 6 true
execute unless entity @s[tag=adversity] run effect give @s jump_boost 5 199 true
execute unless entity @s[tag=adversity] run effect give @s blindness 5 0 true
execute unless entity @s[tag=adversity] run effect give @s weakness 5 255 true
execute unless entity @s[tag=adversity] run particle dust 0.376 0 0 1 ~ ~ ~ 0.6 0.6 0.6 1 500 force @a
execute unless entity @s[tag=adversity] run particle dust 0.161 0 0.204 1 ~ ~ ~ 0.6 0.6 0.6 1 500 force @a
execute unless entity @s[tag=adversity] run playsound item.totem.use master @a ~ ~ ~ 0.2 0 0
execute unless entity @s[tag=adversity] run summon interaction ~ ~1 ~ {Tags:["attack_cooldown","ac5s"],width:1,height:1}

#逆境の処理
execute if entity @s[tag=adversity] run function thiefgame:ability/skils/adversity/time_check
execute if entity @s[tag=adversity] run scoreboard players add @s lord_attack_count 1

advancement revoke @s only thiefgame:system/lord_attack