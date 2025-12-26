#エフェクトリセット
effect clear @a
#チームから除外
team leave @a
#職業タグ削除
tag @a remove ninja
tag @a remove engineer
tag @a remove psychic
tag @a remove nurse
tag @a remove avenger
tag @a remove chronomancer
#能力タグ削除
tag @a remove intelligent
tag @a remove rush_forward
tag @a remove adversity
tag @a remove gambler
fill 80 37 43 80 50 47 air
fill 75 50 42 85 37 42 air
#全てのドアを閉じる
function thiefgame:open_door/allclose_door
#ルートテーブル配置
function thiefgame:setloottable/reset_keyitemtags
function thiefgame:setloottable/set_common
function thiefgame:setloottable/set_uncommon
function thiefgame:setloottable/set_rare
function thiefgame:setloottable/set_core
#2階数字操作盤
scoreboard players set @e[type=interaction,tag=CI] rclick_count 0
execute as @e[type=interaction,tag=CI] at @s run function thiefgame:setcounttext/successnumber_culc
##デバッグmsg
tellraw @a[tag=debug] [{"text": "CI1の正解:","extra": [{"score": {"name": "@e[type=interaction,tag=CI1,limit=1,sort=nearest]","objective": "success_number"}}]}]
tellraw @a[tag=debug] [{"text": "CI2の正解:","extra": [{"score": {"name": "@e[type=interaction,tag=CI2,limit=1,sort=nearest]","objective": "success_number"}}]}]
tellraw @a[tag=debug] [{"text": "CI3の正解:","extra": [{"score": {"name": "@e[type=interaction,tag=CI3,limit=1,sort=nearest]","objective": "success_number"}}]}]
setblock -8 44 140 stone_button[face=floor]
#ドア鍵判定
function thiefgame:open_door/summon_doorinteraction
#なれっとの名前変更
data merge entity @e[type=glow_item_frame,tag=naletto,limit=1] {Item:{id:golden_carrot,Count:1,tag:{CustomModelData:1,display:{Name:'{"text":"パスワードはランダムだよ！"}'}}}}
#橋の修復
fill -2 42 178 -5 42 187 air replace brown_stained_glass
setblock -3 42 178 minecraft:sculk_vein[north=true]
scoreboard players set @e[type=armor_stand,tag=bridge] bridge 0
#コンクリートパウダー補充
function thiefgame:concrete/powder_refill
#コンクリートパウダー再設置
clone -16 36 73 -21 36 68 -6 42 233 replace
#コンクリートパウダーフラグリセット
scoreboard players set @e[type=armor_stand,tag=rng] cp_noair 0
execute as @e[type=armor_stand,tag=CP] at @s run tag @s remove CP_red
execute as @e[type=armor_stand,tag=CP] at @s run tag @s remove CP_blue
execute as @e[type=armor_stand,tag=CP] at @s run tag @s remove CP_yellow
execute as @e[type=armor_stand,tag=CP] at @s run tag @s remove CP_green
execute as @e[type=armor_stand,tag=CP] at @s run tag @s remove CP_purple
execute as @e[type=armor_stand,tag=CP] at @s run tag @s remove CP_orange
tag @e[type=armor_stand,tag=rng] remove CPS_red
tag @e[type=armor_stand,tag=rng] remove CPS_blue
tag @e[type=armor_stand,tag=rng] remove CPS_yellow
tag @e[type=armor_stand,tag=rng] remove CPS_green
tag @e[type=armor_stand,tag=rng] remove CPS_purple
tag @e[type=armor_stand,tag=rng] remove CPS_orange
#壁復活
fill -3 43 244 -4 44 244 spruce_planks
#緊急脱出装置リセット
setblock -3 43 256 air
setblock -4 44 256 lever[face=floor]
scoreboard players set @e[type=armor_stand,tag=rng] escape_count 0
#出口のエリアロックリセット
function thiefgame:area/lock/area4
#出口リセット
function thiefgame:exit/reset
#キーアイテムの入手進捗をリセット
function thiefgame:ability/skils/intelligent/keyitem_check/all_revoke

#ギミック
#バリケードをリセット
function thiefgame:gimmick/furniture/resetposition
#ブレーカーをリセット
tag @e[type=interaction,tag=breaker] remove breaker1a_1_up
tag @e[type=interaction,tag=breaker] add breaker1a_1_down
scoreboard players set @a breaker_count 0

#職業毎の残骸があれば削除
kill @e[type=armor_stand,tag=footprint]
kill @e[type=armor_stand,tag=smoke_point]
kill @e[type=armor_stand,tag=landmine]
kill @e[type=armor_stand,tag=landmine_warp]
kill @e[type=armor_stand,tag=super_eye]
#各スキルのクールタイムをリセット
scoreboard players set @a invisible_time 40
scoreboard players set @a smoke_count 30
scoreboard players set @a landmine_time 20
scoreboard players set @a landmine_warp_time 40
scoreboard players set @a super_eye_time 30
scoreboard players set @a clairvoyance_time 40
scoreboard players set @a heal_time 40
scoreboard players set @a revivetp_charge 50
scoreboard players set @a adrenaline_time 20
scoreboard players set @a wrathful_heart_time 60
scoreboard players set @a moon_hourglass_time 30
scoreboard players set @a sun_pocket_watch_time 30
#復讐心のカウントをリセット
scoreboard players set @a revenge_over_count 0
#時間停止スコアをリセット
scoreboard players set @a timestop_count -1
scoreboard players set @a moon_hourglass_usecount 0
#攻撃階数リセット
scoreboard players set @a lord_attack_count 0
#スロットカウントをリセット
scoreboard players set @a slot_count 0
#謎解きモードクリアタグ削除
tag @a remove clear_mystery
#残機を1に設定
scoreboard players set @a lives 1
#タイマーを20分に設定
scoreboard players set @e[type=armor_stand,tag=rng] timer 1200

#エリア開放tagをリセット
execute as @e[type=armor_stand,tag=rng] run tag @s remove area2
execute as @e[type=armor_stand,tag=rng] run tag @s remove area3
execute as @e[type=armor_stand,tag=rng] run tag @s remove area4
scoreboard players set @e[type=armor_stand,tag=rng] player_count 0
#エリア開放時間設定
execute as @e[type=armor_stand,tag=rng] at @s run function thiefgame:area/areacount_culc

#独自の要素
tag @e[type=armor_stand,tag=rng] add show_answer

#進捗トリガー関連リセット
scoreboard players set @e[type=armor_stand,tag=rng] adv_on_time_leave 0
scoreboard players set @a adv_troublesome 0
advancement revoke @a only thiefgame:system/achievement/get_colorfulkey
advancement revoke @a only thiefgame:system/achievement/thief_damage

#通知
tellraw @s "ゲームモードにリセットしました。"