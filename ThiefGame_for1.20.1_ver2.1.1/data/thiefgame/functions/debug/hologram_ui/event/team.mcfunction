#チームメニュー展開
tag @s add op_team

#uiを配置
execute as @e[type=text_display,tag=holoui_team] at @s anchored eyes run tp @e[tag=holoui_team_decision] ^ ^0.5 ^
execute as @e[type=text_display,tag=holoui_team] at @s anchored eyes run tp @e[tag=holoui_team_random] ^ ^0.2 ^

#演出
playsound ui.button.click master @s ~ ~ ~ 1 2 0