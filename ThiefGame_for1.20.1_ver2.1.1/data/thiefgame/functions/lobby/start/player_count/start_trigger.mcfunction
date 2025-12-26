#カウント開始
tag @s add start_count

#一時的に準備完了システムの当たり判定を削除
kill @e[type=interaction,tag=ready_interaction]
kill @e[type=interaction,tag=ready_cancel_interaction]

#カウントをリセット
scoreboard players set @s joined_player_count 0
scoreboard players set @s ready_count 0