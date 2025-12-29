#30秒増加して反映と通知
scoreboard players add @e[type=armor_stand,tag=rng] timer 30
execute store result bossbar thiefgame:timer max run scoreboard players get @e[type=armor_stand,tag=rng,limit=1] timer
execute store result bossbar thiefgame:timer value run scoreboard players get @e[type=armor_stand,tag=rng,limit=1] timer
tellraw @s ["",{"text":"\u73fe\u5728\u306e\u5236\u9650\u6642\u9593\u306f"},{"score":{"name":"@e[type=armor_stand,tag=rng]","objective":"timer"},"color":"yellow"},{"text":"\u79d2\u3067\u3059\u3002"}]