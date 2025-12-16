#通常時に切り替え
tag @s remove op_open
tag @s remove op_reset
tag @s remove op_lives
tag @s remove op_team
tag @s remove op_other

#uiを配置
execute as @e[type=text_display,tag=holoui_close] at @s anchored eyes run tp @e[tag=holoui_open] ^ ^ ^

#他のuiはいらない
tp @e[tag=holoui_close] 0 0 0
tp @e[tag=holoui_reset] 0 0 0
tp @e[tag=holoui_reset_resetgame] 0 0 0
tp @e[tag=holoui_reset_reload] 0 0 0
tp @e[tag=holoui_team] 0 0 0
tp @e[tag=holoui_team_decision] 0 0 0
tp @e[tag=holoui_team_random] 0 0 0
tp @e[tag=holoui_lives] 0 0 0
tp @e[tag=holoui_lives_score] 0 0 0
tp @e[tag=holoui_lives_plus] 0 0 0
tp @e[tag=holoui_lives_minus] 0 0 0
tp @e[tag=holoui_other] 0 0 0
tp @e[tag=holoui_other_gather] 0 0 0
tp @e[tag=holoui_other_adventure] 0 0 0
tp @e[tag=holoui_other_start] 0 0 0

#演出
playsound ui.button.click master @s ~ ~ ~ 1 2 0