#使用回数に応じて停止時間を設定
execute if entity @s[scores={moon_hourglass_usecount=1}] run scoreboard players set @s timestop_count 200
execute if entity @s[scores={moon_hourglass_usecount=2}] run scoreboard players set @s timestop_count 160
execute if entity @s[scores={moon_hourglass_usecount=3}] run scoreboard players set @s timestop_count 140
execute if entity @s[scores={moon_hourglass_usecount=4}] run scoreboard players set @s timestop_count 100
execute if entity @s[scores={moon_hourglass_usecount=5}] run scoreboard players set @s timestop_count 60
execute if entity @s[scores={moon_hourglass_usecount=6..}] run scoreboard players set @s timestop_count 20