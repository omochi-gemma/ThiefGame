#bossbar
execute store result bossbar thiefgame:timer value run scoreboard players get @e[type=armor_stand,tag=rng,tag=timer,limit=1] timer
bossbar set thiefgame:timer name ["",{"text":"\u6b8b\u308a\u6642\u9593 ","color":"white"},{"score":{"name":"@e[type=armor_stand,tag=rng,tag=timer]","objective":"timer_minute"},"bold":true,"color":"white"},{"text":":","bold":true,"color":"white"},{"score":{"name":"@e[type=armor_stand,tag=rng,tag=timer]","objective":"timer_second"},"bold":true,"color":"white"}]

#カウント処理
scoreboard players add @e[type=armor_stand,tag=rng,tag=timer,tag=!timestop] timer_count 1
scoreboard players remove @e[type=armor_stand,tag=rng,tag=timer,scores={timer_count=20}] timer_second 1
scoreboard players remove @e[type=armor_stand,tag=rng,tag=timer,scores={timer_count=20}] timer 1
scoreboard players set @e[type=armor_stand,tag=rng,tag=timer,scores={timer_count=20}] timer_count 0
scoreboard players remove @e[type=armor_stand,tag=rng,tag=timer,scores={timer_second=-1}] timer_minute 1
scoreboard players set @e[type=armor_stand,tag=rng,tag=timer,scores={timer_second=-1}] timer_second 59




#タイマー終了
execute if entity @e[type=armor_stand,tag=rng,tag=timer,scores={timer=..-1}] run bossbar set thiefgame:timer visible false
tag @e[type=armor_stand,tag=rng,tag=timer,scores={timer=..-1}] add end
tag @e[type=armor_stand,tag=rng,tag=timer,scores={timer=..-1}] remove timer
scoreboard players set @e[type=armor_stand,tag=rng,tag=!timer,scores={timer=..-1}] timer 0