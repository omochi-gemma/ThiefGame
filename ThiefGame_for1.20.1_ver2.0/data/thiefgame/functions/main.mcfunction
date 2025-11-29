#スポーンポイントは常に固定
execute as @a[tag=!in_lobby] at @s run spawnpoint @s ~ ~ ~

#暗視
effect give @a[tag=!darkness] night_vision infinite 0 true

#パーティクル
function thiefgame:main_particle/workbench
execute if entity @e[type=armor_stand,tag=rng,tag=show_answer] run function thiefgame:main_particle/concrete_answer
function thiefgame:main_particle/lobby_particle
execute as @e[type=interaction,tag=place_interaction] at @s run particle dust 0 0.996 0 1 ~ ~0.5 ~ 0.01 0.01 0.01 0.1 1 force @a[team=thief]
execute as @e[type=interaction,tag=break_interaction] at @s run particle wax_off ~ ~1 ~ 0.4 0.4 0.4 0.1 1 force @a 

#レシピ
execute positioned 23.5 50 152.5 if entity @e[distance=..0.5,type=item] run function thiefgame:key_craft

#キーアイテムを配置し続ける
function thiefgame:setloottable/set_keyitem

#中庭地下の宝物庫のドア
execute as @a if predicate minecraft:open_doortre run function thiefgame:open_door/doortre
#2階の鉄のドア
execute as @a if predicate minecraft:open_door2 unless entity @e[tag=timestop] run function thiefgame:open_door/door2

#2階の数字決定処理
execute as @e[type=interaction,tag=CI] at @s run function thiefgame:setcounttext/count_check/number_check
execute positioned -8 44 140 if block ~ ~ ~ stone_button[face=floor,powered=true] if block -8 46 139 redstone_lamp[lit=true] if block -7 46 139 redstone_lamp[lit=true] if block -6 46 139 redstone_lamp[lit=true] unless entity @e[tag=timestop] run function thiefgame:setcounttext/count_check/summon_magicglass

#カギがかかっているドアを右クリックしたとき
execute as @e[type=interaction,tag=DI] on target unless predicate minecraft:open_door2 unless predicate minecraft:open_doortre run tellraw @s "カギがかかっているようだ"
execute as @e[type=interaction,tag=DI] on target at @s unless predicate minecraft:open_door2 unless predicate minecraft:open_doortre run playsound ui.button.click master @s ~ ~ ~ 1 2 0

#2階の数字操作盤
execute as @e[type=interaction,tag=CI1] on target at @s run function thiefgame:setcounttext/addscore_ci1
execute as @e[type=interaction,tag=CI2] on target at @s run function thiefgame:setcounttext/addscore_ci2
execute as @e[type=interaction,tag=CI3] on target at @s run function thiefgame:setcounttext/addscore_ci3
execute as @e[type=interaction,tag=CI1] run function thiefgame:setcounttext/interaction_count_ci1
execute as @e[type=interaction,tag=CI2] run function thiefgame:setcounttext/interaction_count_ci2
execute as @e[type=interaction,tag=CI3] run function thiefgame:setcounttext/interaction_count_ci3

#橋の修復
execute as @e[type=armor_stand,tag=bridge,scores={bridge=0..}] at @s if block ~ ~ ~ brown_stained_glass unless entity @e[tag=timestop] run function thiefgame:bridge_restoration/addscore_loop

#シュルカーの謎
execute as @e[type=armor_stand,tag=shulker] at @s run function thiefgame:shulker/hopper_check

#コンクリートパウダーのチェック
execute if entity @e[type=armor_stand,tag=rng,scores={cp_noair=..18}] run function thiefgame:concrete/cp_aircheck
execute if entity @e[type=armor_stand,tag=rng,scores={cp_noair=19..40}] run function thiefgame:concrete/cpcheck

#緊急脱出装置
execute if block -3 43 256 redstone_block if block -4 44 256 lever[powered=true] unless entity @e[tag=timestop] run function thiefgame:escape_device/core_check
execute if entity @e[type=armor_stand,tag=rng,scores={escape_count=241..}] unless entity @e[tag=timestop] run function thiefgame:escape_device/escape

#出口
execute unless entity @e[tag=timestop] run function thiefgame:exit/exit_main

#ギミック
#ドアブロック
execute as @e[type=interaction,tag=place_interaction] at @s run function thiefgame:gimmick/furniture/place_doorblock
execute as @e[type=interaction,tag=break_interaction] at @s run function thiefgame:gimmick/furniture/break_doorblock
#鉄柵
function thiefgame:gimmick/iron_fence/ironfence_main
#ブレーカー
function thiefgame:gimmick/breaker/breaker_main
#ギミックヒット
execute if entity @a[team=lord,tag=gimmick_hit] as @a[team=lord,tag=gimmick_hit] at @s run function thiefgame:gimmick/hit_to_lord/hit_to_lord_tp

#脱出処理
execute as @a[team=thief] at @s if block ~ ~3 ~ white_concrete unless entity @e[tag=timestop] run function thiefgame:success_escape/escape_check
execute as @a[team=!thief,team=!lord,team=!spectator,tag=in_lobby,tag=!clear_mystery] at @s if block ~ ~3 ~ white_concrete run function thiefgame:lobby/end/mystery_end

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
#エリア開放
execute if entity @e[type=armor_stand,tag=rng,tag=timer] as @e[type=armor_stand,tag=rng,tag=timer] at @s run function thiefgame:area/area_main

#スタートカウント
execute as @e[type=armor_stand,tag=rng,tag=start_count] run function thiefgame:lobby/start/count_start

#終了処理
execute if entity @e[type=armor_stand,tag=rng,tag=timer] run function thiefgame:lobby/end/end_game
execute if entity @e[type=armor_stand,tag=rng,tag=end] run tag @e[type=armor_stand,tag=rng] add end_count
execute if entity @e[type=armor_stand,tag=rng,tag=end_count] run function thiefgame:lobby/end/end_count

#職業
function thiefgame:profession/check_profession
function thiefgame:lobby/profession/decision
#能力
function thiefgame:lobby/ability/decision
function thiefgame:ability/check_ability

#インスタントアイテム
execute if entity @e[type=armor_stand,tag=rng,tag=timer] as @a[team=thief] at @s run function thiefgame:instant_item/instant_item

#ガラス瓶削除
clear @a glass_bottle


#猛進以外のジャンプスコアリセット
scoreboard players set @a[tag=!rush_forward] jump 0

#Interactionリセット
execute as @e[type=interaction] run data remove entity @s interaction