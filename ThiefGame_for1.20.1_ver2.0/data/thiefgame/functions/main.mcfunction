#スポーンポイントは常に固定
execute as @a[tag=!in_lobby] at @s run spawnpoint @s ~ ~ ~

#暗視
effect give @a night_vision infinite 0 true

#パーティクル
function thiefgame:main_particle/workbench
execute if entity @e[type=armor_stand,tag=rng,tag=show_answer] run function thiefgame:main_particle/concrete_answer
function thiefgame:main_particle/lobby_particle

#レシピ
execute positioned 23.5 50 152.5 if entity @e[distance=..0.5,type=item] run function thiefgame:key_craft

#中庭地下の宝物庫のドア
execute as @a if predicate minecraft:open_doortre run function thiefgame:open_door/doortre
#2階の鉄のドア
execute as @a if predicate minecraft:open_door2 run function thiefgame:open_door/door2

#2階の数字決定処理
execute positioned -8 44 140 if block ~ ~ ~ stone_button[face=floor,powered=true] run function thiefgame:setcounttext/count_check/countcheck

#カギがかかっているドアを右クリックしたとき
execute as @e[type=interaction,tag=DI] on target run tellraw @s "カギがかかっているようだ"
execute as @e[type=interaction,tag=DI] on target at @s run playsound ui.button.click master @s ~ ~ ~ 1 2 0

#2階の数字操作盤
execute as @e[type=interaction,tag=CI1] on target at @s run function thiefgame:setcounttext/addscore_ci1
execute as @e[type=interaction,tag=CI2] on target at @s run function thiefgame:setcounttext/addscore_ci2
execute as @e[type=interaction,tag=CI3] on target at @s run function thiefgame:setcounttext/addscore_ci3
execute as @e[type=interaction,tag=CI1] run function thiefgame:setcounttext/interaction_count_ci1
execute as @e[type=interaction,tag=CI2] run function thiefgame:setcounttext/interaction_count_ci2
execute as @e[type=interaction,tag=CI3] run function thiefgame:setcounttext/interaction_count_ci3

#橋の修復
execute as @e[type=armor_stand,tag=bridge,scores={bridge=0..}] at @s if block ~ ~ ~ brown_stained_glass run function thiefgame:bridge_restoration/addscore_loop

#シュルカーの謎
execute as @e[type=armor_stand,tag=shulker] at @s run function thiefgame:shulker/hopper_check

#金床復活
execute unless block 23 38 202 anvil run setblock 23 38 202 anvil

#コンクリートパウダーのチェック
execute if entity @e[type=armor_stand,tag=rng,scores={cp_noair=..18}] run function thiefgame:concrete/cp_aircheck
execute if entity @e[type=armor_stand,tag=rng,scores={cp_noair=19..40}] run function thiefgame:concrete/cpcheck

#緊急脱出装置
execute if block -3 43 256 redstone_block if block -4 44 256 lever[powered=true] run function thiefgame:escape_device/core_check
execute if entity @e[type=armor_stand,tag=rng,scores={escape_count=241..}] run function thiefgame:escape_device/escape

#脱出処理
execute as @a[team=thief] at @s if block ~ ~2 ~ white_concrete run function thiefgame:success_escape/escape_check
execute as @a[team=!thief,team=!lord,team=!spectator,tag=in_lobby,tag=!clear_mystery] at @s if block ~ ~2 ~ white_concrete run function thiefgame:lobby/end/mystery_end

#役職
execute as @a[team=lord] at @s run function thiefgame:lobby/lord_main
execute as @a[team=thief] at @s run function thiefgame:lobby/thief_main

#蘇生システム
function thiefgame:lobby/revive
execute if entity @a[team=thief,tag=down] as @a[team=thief,tag=!in_lobby,tag=!down] at @s run function thiefgame:main_particle/down
execute unless entity @a[team=thief,tag=down] run kill @e[type=armor_stand,tag=down_p]

#体力
function thiefgame:lobby/player_health/health_copy

#死亡処理
function thiefgame:lobby/player_death/death

#タイマー
execute if entity @e[type=armor_stand,tag=rng,tag=timer] run function thiefgame:lobby/start/timer

#スタートカウント
execute as @e[type=armor_stand,tag=rng,tag=start_count] run function thiefgame:lobby/start/count_start

#終了処理
execute if entity @e[type=armor_stand,tag=rng,tag=timer] run function thiefgame:lobby/end/end_game
execute if entity @e[type=armor_stand,tag=rng,tag=end] run tag @e[type=armor_stand,tag=rng] add end_count
execute if entity @e[type=armor_stand,tag=rng,tag=end_count] run function thiefgame:lobby/end/end_count

#職業
function thiefgame:profession/check_profession
function thiefgame:lobby/profession/decision

#インスタントアイテム
execute if entity @e[type=armor_stand,tag=rng,tag=timer] as @a[team=thief] at @s run function thiefgame:instant_item/instant_item

#ガラス瓶削除
clear @a glass_bottle




#Interactionリセット
execute as @e[type=interaction] run data remove entity @s interaction