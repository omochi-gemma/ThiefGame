#その他メニュー展開
tag @s add op_other

#uiを配置
execute as @e[type=text_display,tag=holoui_other] at @s anchored eyes run tp @e[tag=holoui_other_gather] ^0.3 ^-0.15 ^0.2
execute as @e[type=text_display,tag=holoui_other] at @s anchored eyes run tp @e[tag=holoui_other_adventure] ^0.3 ^-0.3 ^0.1
execute as @e[type=text_display,tag=holoui_other] at @s anchored eyes run tp @e[tag=holoui_other_start] ^0.3 ^-0.45 ^

#演出
playsound ui.button.click master @s ~ ~ ~ 1 2 0