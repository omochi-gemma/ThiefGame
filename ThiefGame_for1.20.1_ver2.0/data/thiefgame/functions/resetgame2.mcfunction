#ロビーの壁排除
fill 85 41 41 75 37 41 air destroy
#全てのドアを閉じる
function thiefgame:open_door/allclose_door
#ルートテーブル配置
function thiefgame:setloottable/set_common
function thiefgame:setloottable/set_uncommon
function thiefgame:setloottable/set_rare
function thiefgame:setloottable/set_core
#2階数字操作盤
scoreboard players set @e[type=interaction,tag=CI] rclick_count 0
setblock -8 44 140 stone_button[face=floor]
#ドアカギ判定
function thiefgame:open_door/summon_doorinteraction
#なれっとの名前変更
data merge entity @e[type=glow_item_frame,tag=naletto,limit=1] {Item:{id:golden_carrot,Count:1,tag:{CustomModelData:1,display:{Name:'{"text":"パスワードは「348」だよ！"}'}}}}
#橋の修復
fill -2 42 178 -5 42 187 air replace brown_stained_glass
scoreboard players set @e[type=armor_stand,tag=bridge] bridge 0
#シュルカーの謎
execute as @e[type=armor_stand,tag=shulker] at @s run setblock ~ ~-1 ~ air
execute as @e[type=armor_stand,tag=shulker] at @s run setblock ~ ~2 ~1 birch_button[face=floor]
#金床復活
setblock 23 38 202 anvil
#白ガラス復活
fill -5 46 228 -2 43 228 white_stained_glass
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
scoreboard players set @a super_eye_time 40
scoreboard players set @a clairvoyance_time 60
scoreboard players set @a heal_time 40
scoreboard players set @a revivetp_charge 60
scoreboard players set @a adrenaline_time 20
scoreboard players set @a wrathful_heart_time 60
#謎解きモードクリアタグ削除
tag @a remove clear_mystery
#残機を2に設定
scoreboard players set @a lives 1
#タイマーを20分に設定
scoreboard players set @e[type=armor_stand,tag=rng] timer 1200

#独自の要素
kill @e[type=text_display,tag=shulker_answer]
summon text_display 24.0 40.2 204.0 {alignment:"center",Tags:["shulker_answer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0.7f,0f,-0.7f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"text":"G    8    6    U    3    P"}',background:16725558}
tag @e[type=armor_stand,tag=rng] add show_answer

#通知
tellraw @s "ゲームモードにリセットしました。"