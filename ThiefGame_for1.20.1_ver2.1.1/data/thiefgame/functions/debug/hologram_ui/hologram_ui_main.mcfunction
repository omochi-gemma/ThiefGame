#向きは常にopへ
execute positioned ~ ~1.5 ~ run tp @e[tag=holoui_core] ~ ~ ~
execute as @e[tag=holoui] at @s run tp @s ~ ~ ~ facing entity @e[type=text_display,tag=holoui_core,limit=1]
execute as @e[tag=holouiInteraction] at @s run tp @s ~ ~ ~ facing entity @e[type=text_display,tag=holoui_core,limit=1]

#通常時
execute unless predicate is_sneaking unless entity @s[tag=op_open] anchored eyes run function thiefgame:debug/hologram_ui/ui_tp/normal
#オープン時
execute unless predicate is_sneaking if entity @s[tag=op_open] anchored eyes run function thiefgame:debug/hologram_ui/ui_tp/open
#リセットメニュー
execute unless predicate is_sneaking if entity @s[tag=op_open,tag=op_reset] anchored eyes run function thiefgame:debug/hologram_ui/ui_tp/reset
#残機メニュー
execute unless predicate is_sneaking if entity @s[tag=op_open,tag=op_lives] anchored eyes run function thiefgame:debug/hologram_ui/ui_tp/lives
#チームメニュー
execute unless predicate is_sneaking if entity @s[tag=op_open,tag=op_team] anchored eyes run function thiefgame:debug/hologram_ui/ui_tp/team
#その他メニュー
execute unless predicate is_sneaking if entity @s[tag=op_open,tag=op_other] anchored eyes run function thiefgame:debug/hologram_ui/ui_tp/other

#右クリックイベント
#開閉
execute as @e[type=interaction,tag=holoui_open] on target if entity @s[tag=op] run function thiefgame:debug/hologram_ui/event/open
execute as @e[type=interaction,tag=holoui_close] on target if entity @s[tag=op] run function thiefgame:debug/hologram_ui/event/close
#リセットメニュー
execute as @e[type=interaction,tag=holoui_reset] on target if entity @s[tag=op] run function thiefgame:debug/hologram_ui/event/reset
execute as @e[type=interaction,tag=holoui_reset_reload] on target if entity @s[tag=op] run reload
execute as @e[type=interaction,tag=holoui_reset_resetgame] on target if entity @s[tag=op] run function thiefgame:debug/hologram_ui/event/reset/resetgame
execute as @e[type=interaction,tag=holoui_lives] on target if entity @s[tag=op] run function thiefgame:debug/hologram_ui/event/lives
execute as @e[type=interaction,tag=holoui_lives_score] on target if entity @s[tag=op] run function thiefgame:debug/hologram_ui/event/lives/reset_lives
execute as @e[type=interaction,tag=holoui_lives_plus] on target if entity @s[tag=op] run function thiefgame:debug/hologram_ui/event/lives/add_lives
execute as @e[type=interaction,tag=holoui_lives_minus] on target if entity @s[tag=op] run function thiefgame:debug/hologram_ui/event/lives/remove_lives
execute as @e[type=interaction,tag=holoui_team] on target if entity @s[tag=op] run function thiefgame:debug/hologram_ui/event/team
execute as @e[type=interaction,tag=holoui_team_decision] on target if entity @s[tag=op] run function thiefgame:debug/hologram_ui/event/team/team_decision
execute as @e[type=interaction,tag=holoui_team_random] on target if entity @s[tag=op] run function thiefgame:debug/hologram_ui/event/team/random_team_decision
execute as @e[type=interaction,tag=holoui_other] on target if entity @s[tag=op] run function thiefgame:debug/hologram_ui/event/other
execute as @e[type=interaction,tag=holoui_other_adventure] on target if entity @s[tag=op] run function thiefgame:debug/hologram_ui/event/other/adventure
execute as @e[type=interaction,tag=holoui_other_gather] on target if entity @s[tag=op] run function thiefgame:debug/hologram_ui/event/other/gather
execute as @e[type=interaction,tag=holoui_other_start] on target if entity @s[tag=op] run function thiefgame:debug/hologram_ui/event/other/start_game

#当たり判定にパーティクルを表示
execute as @e[type=interaction,tag=holouiInteraction] at @s run particle dust 1 1 1 0.05 ^ ^0.05 ^0.05 0.01 0.01 0.01 0.001 10 force @a[tag=op]