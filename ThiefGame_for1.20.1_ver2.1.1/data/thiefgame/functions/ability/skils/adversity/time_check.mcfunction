#ゲーム時間毎にスタン時間を反映
execute if entity @e[type=armor_stand,tag=timer,scores={timer=0..299}] run function thiefgame:ability/skils/adversity/stun/8
execute if entity @e[type=armor_stand,tag=timer,scores={timer=300..539}] run function thiefgame:ability/skils/adversity/stun/7
execute if entity @e[type=armor_stand,tag=timer,scores={timer=540..659}] run function thiefgame:ability/skils/adversity/stun/6
execute if entity @e[type=armor_stand,tag=timer,scores={timer=660..839}] run function thiefgame:ability/skils/adversity/stun/5
execute if entity @e[type=armor_stand,tag=timer,scores={timer=840..959}] run function thiefgame:ability/skils/adversity/stun/4
execute if entity @e[type=armor_stand,tag=timer,scores={timer=960..1019}] run function thiefgame:ability/skils/adversity/stun/3
execute if entity @e[type=armor_stand,tag=timer,scores={timer=1020..1079}] run function thiefgame:ability/skils/adversity/stun/2
execute if entity @e[type=armor_stand,tag=timer,scores={timer=1080..1200}] run function thiefgame:ability/skils/adversity/stun/1