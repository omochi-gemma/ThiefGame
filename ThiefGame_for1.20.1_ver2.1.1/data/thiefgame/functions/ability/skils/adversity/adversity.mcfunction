#逆境
#攻撃力を設定
effect clear @s strength
execute if entity @s[scores={lord_attack_count=20..}] if entity @e[type=armor_stand,tag=timer,scores={timer=0..299}] run effect give @s strength 1 7 true
execute if entity @s[scores={lord_attack_count=20..}] if entity @e[type=armor_stand,tag=timer,scores={timer=0..299}] run particle dust 0.384 0 0 1 ~ ~1 ~ 0.2 0.2 0.2 1 5 force @a
execute if entity @s[scores={lord_attack_count=12..}] if entity @e[type=armor_stand,tag=timer,scores={timer=300..539}] run effect give @s strength 1 6 true
execute if entity @s[scores={lord_attack_count=12..}] if entity @e[type=armor_stand,tag=timer,scores={timer=300..539}] run particle dust 0.518 0.004 0.004 1 ~ ~1 ~ 0.2 0.2 0.2 1 5 force @a
execute if entity @s[scores={lord_attack_count=8..}] if entity @e[type=armor_stand,tag=timer,scores={timer=540..659}] run effect give @s strength 1 5 true
execute if entity @s[scores={lord_attack_count=8..}] if entity @e[type=armor_stand,tag=timer,scores={timer=540..659}] run particle dust 0.812 0 0 1 ~ ~1 ~ 0.2 0.2 0.2 1 5 force @a
execute if entity @s[scores={lord_attack_count=5..}] if entity @e[type=armor_stand,tag=timer,scores={timer=660..839}] run effect give @s strength 1 4 true
execute if entity @s[scores={lord_attack_count=5..}] if entity @e[type=armor_stand,tag=timer,scores={timer=660..839}] run particle dust 0.929 0 0 1 ~ ~1 ~ 0.2 0.2 0.2 1 5 force @a
execute if entity @s[scores={lord_attack_count=4..}] if entity @e[type=armor_stand,tag=timer,scores={timer=840..959}] run effect give @s strength 1 3 true
execute if entity @s[scores={lord_attack_count=4..}] if entity @e[type=armor_stand,tag=timer,scores={timer=840..959}] run particle dust 0.863 0.259 0 1 ~ ~1 ~ 0.2 0.2 0.2 1 5 force @a
execute if entity @s[scores={lord_attack_count=3..}] if entity @e[type=armor_stand,tag=timer,scores={timer=960..1019}] run effect give @s strength 1 2 true
execute if entity @s[scores={lord_attack_count=3..}] if entity @e[type=armor_stand,tag=timer,scores={timer=960..1019}] run particle dust 0.918 0.459 0 1 ~ ~1 ~ 0.2 0.2 0.2 1 5 force @a
execute if entity @s[scores={lord_attack_count=2..}] if entity @e[type=armor_stand,tag=timer,scores={timer=1020..1079}] run effect give @s strength 1 1 true
execute if entity @s[scores={lord_attack_count=2..}] if entity @e[type=armor_stand,tag=timer,scores={timer=1020..1079}] run particle dust 0.851 0.612 0 1 ~ ~1 ~ 0.2 0.2 0.2 1 5 force @a
execute if entity @s[scores={lord_attack_count=1..}] if entity @e[type=armor_stand,tag=timer,scores={timer=1080..1200}] run effect give @s strength 1 0 true
execute if entity @s[scores={lord_attack_count=1..}] if entity @e[type=armor_stand,tag=timer,scores={timer=1080..1200}] run particle dust 0.851 0.796 0 1 ~ ~1 ~ 0.2 0.2 0.2 1 5 force @a


#エリア進行によって最低攻撃力を調整
execute if entity @e[type=armor_stand,tag=area2] run effect give @s strength 1 0 true
execute if entity @e[type=armor_stand,tag=area3] run effect give @s strength 1 1 true
execute if entity @e[type=armor_stand,tag=area4] run effect give @s strength 1 3 true


#攻撃回数を表示
function thiefgame:ability/skils/adversity/attack_count_display/time_check


#特殊な攻撃後無力化の解除
#5秒は通常のものを使いまわしている
#interactionがいたら寿命が何秒かチェック
execute if entity @e[type=interaction,tag=attack_cooldown] as @e[type=interaction,tag=attack_cooldown] at @s run function thiefgame:ability/skils/adversity/attack_cooldown/check_count