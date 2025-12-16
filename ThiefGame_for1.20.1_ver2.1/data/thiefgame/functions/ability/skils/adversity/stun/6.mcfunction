#6段階
execute if entity @s[scores={lord_attack_count=8..}] run effect give @s slowness 3 6 true
execute if entity @s[scores={lord_attack_count=8..}] run effect give @s jump_boost 3 199 true
execute if entity @s[scores={lord_attack_count=8..}] run effect give @s blindness 3 0 true
execute if entity @s[scores={lord_attack_count=8..}] run effect give @s weakness 3 255 true
execute if entity @s[scores={lord_attack_count=8..}] run particle dust 0.376 0 0 1 ~ ~ ~ 0.6 0.6 0.6 1 500 force @a
execute if entity @s[scores={lord_attack_count=8..}] run particle dust 0.161 0 0.204 1 ~ ~ ~ 0.6 0.6 0.6 1 500 force @a
execute if entity @s[scores={lord_attack_count=8..}] run playsound item.totem.use master @a ~ ~ ~ 0.2 0 0
execute if entity @s[scores={lord_attack_count=8..}] run summon interaction ~ ~1 ~ {Tags:["attack_cooldown","ac3s"],width:1,height:1}
#攻撃回数が規定値未満だった場合、エリア進行度に応じて決定
execute if entity @s[scores={lord_attack_count=..7}] if entity @e[type=armor_stand,tag=!area2,tag=!area3,tag=!area4] run function thiefgame:ability/skils/adversity/stun/area1
execute if entity @s[scores={lord_attack_count=..7}] if entity @e[type=armor_stand,tag=area2,tag=!area3,tag=!area4] run function thiefgame:ability/skils/adversity/stun/area2
execute if entity @s[scores={lord_attack_count=..7}] if entity @e[type=armor_stand,tag=area2,tag=area3,tag=!area4] run function thiefgame:ability/skils/adversity/stun/area3
execute if entity @s[scores={lord_attack_count=..7}] if entity @e[type=armor_stand,tag=area2,tag=area3,tag=area4] run function thiefgame:ability/skils/adversity/stun/area4