#残機メニュー展開
tag @s add op_lives

#uiを配置
execute as @e[type=text_display,tag=holoui_lives] at @s anchored eyes run tp @e[tag=holoui_lives_score] ^ ^-0.2 ^
execute as @e[type=text_display,tag=holoui_lives] at @s anchored eyes run tp @e[tag=holoui_lives_plus] ^-0.2 ^-0.2 ^
execute as @e[type=text_display,tag=holoui_lives] at @s anchored eyes run tp @e[tag=holoui_lives_minus] ^0.2 ^-0.2 ^

#演出
playsound ui.button.click master @s ~ ~ ~ 1 2 0