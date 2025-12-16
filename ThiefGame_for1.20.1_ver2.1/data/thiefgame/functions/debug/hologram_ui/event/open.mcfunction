#オープンに切り替え
tag @s add op_open

#uiを配置
execute as @e[type=text_display,tag=holoui_open] at @s anchored eyes run tp @e[tag=holoui_close] ^ ^ ^
execute as @e[type=text_display,tag=holoui_open] at @s anchored eyes run tp @e[tag=holoui_reset] ^-0.45 ^-0.2 ^1.07
execute as @e[type=text_display,tag=holoui_open] at @s anchored eyes run tp @e[tag=holoui_team] ^-0.25 ^-0.25 ^0.6
execute as @e[type=text_display,tag=holoui_open] at @s anchored eyes run tp @e[tag=holoui_lives] ^-0.45 ^-0.4 ^1.1
execute as @e[type=text_display,tag=holoui_open] at @s anchored eyes run tp @e[tag=holoui_other] ^-0.25 ^-0.45 ^0.6

#トリガーはいらない
tp @e[tag=holoui_open] 0 0 0

#演出
playsound ui.button.click master @s ~ ~ ~ 1 2 0