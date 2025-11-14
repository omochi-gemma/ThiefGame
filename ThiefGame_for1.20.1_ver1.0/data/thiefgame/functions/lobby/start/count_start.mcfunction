#rngアーマースタンドにstart_countタグを付与すると開始
scoreboard players add @s start_count 1
execute if entity @s[scores={start_count=20}] run title @a title {"text":"---3---","color":"yellow"}
execute if entity @s[scores={start_count=20}] as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0 0
execute if entity @s[scores={start_count=40}] run title @a title {"text":"---2---","color":"yellow"}
execute if entity @s[scores={start_count=40}] as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0 0
execute if entity @s[scores={start_count=60}] run title @a title {"text":"---1---","color":"yellow"}
execute if entity @s[scores={start_count=60}] as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0 0
execute if entity @s[scores={start_count=80}] run title @a title {"text":"\u30b9\u30bf\u30fc\u30c8\uff01","color":"yellow"}
execute if entity @s[scores={start_count=80}] run title @a[team=thief] subtitle {"text":"\u5236\u9650\u6642\u9593\u5185\u306b\u8131\u51fa\u3057\u3088\u3046\uff01","color":"blue"}
execute if entity @s[scores={start_count=80}] run title @a[team=lord] subtitle {"text":"\u5236\u9650\u6642\u9593\u307e\u3067\u6ce5\u68d2\u306e\u8131\u51fa\u3092\u963b\u6b62\u3057\u3088\u3046\uff01","color":"red"}
execute if entity @s[scores={start_count=80}] run function thiefgame:lobby/start/start_game
execute if entity @s[scores={start_count=80}] run tag @s remove start_count
execute if entity @s[scores={start_count=80}] run scoreboard players set @s start_count 0