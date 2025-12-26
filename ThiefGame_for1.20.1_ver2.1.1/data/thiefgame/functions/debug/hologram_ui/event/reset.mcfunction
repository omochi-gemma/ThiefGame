#リセットメニュー展開
tag @s add op_reset

#uiを配置
execute as @e[type=text_display,tag=holoui_reset] at @s anchored eyes run tp @e[tag=holoui_reset_resetgame] ^ ^0.2 ^
execute as @e[type=text_display,tag=holoui_reset] at @s anchored eyes run tp @e[tag=holoui_reset_reload] ^-0.5 ^ ^

#演出
playsound ui.button.click master @s ~ ~ ~ 1 2 0