#interactionの右クリック検知
execute as @e[type=interaction,tag=ready_interaction] on target run tag @s add ready
execute as @e[type=interaction,tag=ready_interaction] on target run tellraw @a [{"extra": [{"selector": "@s"}],"text": ""},{"text": "は準備完了！","color": "green"}]
execute as @e[type=interaction,tag=ready_interaction] at @s on target run playsound ui.button.click master @a ~ ~ ~ 1 2 0
execute as @e[type=interaction,tag=ready_cancel_interaction] on target run tag @s remove ready
execute as @e[type=interaction,tag=ready_cancel_interaction] on target run tellraw @a [{"extra": [{"selector": "@s"}],"text": ""},{"text": "がキャンセルした","color": "red"}]
execute as @e[type=interaction,tag=ready_cancel_interaction] at @s on target run playsound ui.button.click master @a ~ ~ ~ 1 2 0

#参加しているプレイヤーの数を数える
function thiefgame:lobby/start/player_count/joined_player_count
#準備が完了しているプレイヤーの数を数える
function thiefgame:lobby/start/player_count/ready_count

#数が一致したらスタート
execute if score @s joined_player_count = @s ready_count run function thiefgame:lobby/start/player_count/start_trigger