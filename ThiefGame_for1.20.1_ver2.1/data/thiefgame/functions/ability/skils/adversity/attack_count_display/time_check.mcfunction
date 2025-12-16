#ゲーム時間毎に表示回数を表示
execute if entity @e[type=armor_stand,tag=timer,scores={timer=0..299}] run function thiefgame:ability/skils/adversity/attack_count_display/8
execute if entity @e[type=armor_stand,tag=timer,scores={timer=300..539}] run function thiefgame:ability/skils/adversity/attack_count_display/7
execute if entity @e[type=armor_stand,tag=timer,scores={timer=540..659}] run function thiefgame:ability/skils/adversity/attack_count_display/6
execute if entity @e[type=armor_stand,tag=timer,scores={timer=660..839}] run function thiefgame:ability/skils/adversity/attack_count_display/5
execute if entity @e[type=armor_stand,tag=timer,scores={timer=840..959}] run function thiefgame:ability/skils/adversity/attack_count_display/4
execute if entity @e[type=armor_stand,tag=timer,scores={timer=960..1019}] run function thiefgame:ability/skils/adversity/attack_count_display/3
execute if entity @e[type=armor_stand,tag=timer,scores={timer=1020..1079}] run function thiefgame:ability/skils/adversity/attack_count_display/2
execute if entity @e[type=armor_stand,tag=timer,scores={timer=1080..1200}] run function thiefgame:ability/skils/adversity/attack_count_display/1