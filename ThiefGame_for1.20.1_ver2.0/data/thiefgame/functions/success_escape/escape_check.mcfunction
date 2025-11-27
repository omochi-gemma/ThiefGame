#脱出処理
title @s title {"text":"\u8131\u51fa\u6210\u529f\uff01\uff01","bold":true,"color":"yellow"}
tellraw @a ["",{"selector":"@s","color":"green"},{"text":"\u304c\u8131\u51fa\u3057\u307e\u3057\u305f\u3002","color":"yellow"}]
gamemode spectator @s
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.5 0
scoreboard players set @e[type=interaction,tag=soul_interaction,sort=nearest,limit=1,distance=..2] revive 30
clear @s
function thiefgame:debug/give_opbook
team leave @s
tag @s remove ninja
tag @s remove engineer
tag @s remove psychic
tag @s remove nurse
tag @s add success_escape
#誰かが脱出したら人数を確認
function thiefgame:area/unlock/area5