#エラー処理
execute if entity @e[type=armor_stand,tag=rng,scores={timer=..30}] run tellraw @s {"text":"\u305d\u308c\u4ee5\u4e0a\u5024\u3092\u6e1b\u3089\u305b\u307e\u305b\u3093\u3002","color":"red"}
execute if entity @e[type=armor_stand,tag=rng,scores={timer=..30}] run return 0

#30秒減少して反映と通知
scoreboard players remove @e[type=armor_stand,tag=rng,scores={timer=31..}] timer 30
execute store result bossbar thiefgame:timer max run scoreboard players get @e[type=armor_stand,tag=rng,limit=1] timer
execute store result bossbar thiefgame:timer value run scoreboard players get @e[type=armor_stand,tag=rng,limit=1] timer
tellraw @s ["",{"text":"\u73fe\u5728\u306e\u5236\u9650\u6642\u9593\u306f"},{"score":{"name":"@e[type=armor_stand,tag=rng]","objective":"timer"},"color":"yellow"},{"text":"\u79d2\u3067\u3059\u3002"}]