#ブレーカーの状態切り替え
##別館
###1階
####1
execute as @e[type=interaction,tag=breaker1a_1_up] at @s on target if entity @s[team=lord] run function thiefgame:gimmick/breaker/breaker_up/annex/first_floor/breaker1a_1
execute as @e[type=interaction,tag=breaker1a_1_down] at @s on target if entity @s[team=thief] run function thiefgame:gimmick/breaker/breaker_down/annex/first_floor/breaker1a_1


#effect付与
#interactionにup待機tagがついている=ブレーカーが落ちている
execute as @e[type=interaction,tag=breaker1a_1_up] run function thiefgame:gimmick/breaker/breaker_down