#寿命時間毎に処理を分岐
#5秒は通常時に処理されているので省略
execute if entity @s[tag=ac1s] run function thiefgame:ability/skils/adversity/attack_cooldown/1
execute if entity @s[tag=ac3s] run function thiefgame:ability/skils/adversity/attack_cooldown/3
execute if entity @s[tag=ac6s] run function thiefgame:ability/skils/adversity/attack_cooldown/6
execute if entity @s[tag=ac7s] run function thiefgame:ability/skils/adversity/attack_cooldown/7
execute if entity @s[tag=ac8s] run function thiefgame:ability/skils/adversity/attack_cooldown/8
execute if entity @s[tag=ac9s] run function thiefgame:ability/skils/adversity/attack_cooldown/9
execute if entity @s[tag=ac10s] run function thiefgame:ability/skils/adversity/attack_cooldown/10