#乱数
scoreboard objectives add rng dummy
scoreboard players set #100 rng 100

#数字操作盤の記録スコア
scoreboard objectives add rclick_count dummy
scoreboard players set @e[type=interaction,tag=CI] rclick_count 0

#橋の修復スコア
scoreboard objectives add bridge dummy
scoreboard players set @e[type=armor_stand,tag=bridge] bridge 0

#コンクリートパウダーチェック用
scoreboard objectives add cp_noair dummy
scoreboard players set @e[tag=rng] cp_noair 0
scoreboard objectives add success_colorcheck dummy

#緊急脱出装置
scoreboard objectives add escape_count dummy
scoreboard players set @e[type=armor_stand,tag=rng] escape_count 0

#体力チェック用
scoreboard objectives add Health dummy "体力"

#蘇生値、ダウンダメージカウント
scoreboard objectives add revive dummy
scoreboard objectives add down_damage_count dummy

#死亡処理
scoreboard objectives add death_count deathCount
scoreboard objectives add lives dummy "残機"
scoreboard players set @a lives 1

#タイマー
scoreboard objectives add timer dummy
scoreboard objectives add timer_count dummy
scoreboard objectives add timer_second dummy
scoreboard objectives add timer_minute dummy
scoreboard objectives add operation_score dummy
scoreboard players set @e[type=armor_stand,tag=rng] timer 1200
scoreboard players set #20 timer 20
scoreboard players set #60 timer 60

#スタートカウント
scoreboard objectives add start_count dummy

#エンドカウント
scoreboard objectives add end_count dummy

#職業
#忍者
scoreboard objectives add invisible_count dummy
scoreboard objectives add invisible_time dummy
scoreboard objectives add smoke_count dummy
scoreboard objectives add smoke_use minecraft.used:snowball
#技術者
scoreboard objectives add use_carrot1 used:carrot_on_a_stick
scoreboard objectives add use_carrot1_count dummy
scoreboard objectives add landmine_placecount dummy
scoreboard objectives add landmine_time dummy
scoreboard objectives add use_carrot2 used:carrot_on_a_stick
scoreboard objectives add use_carrot2_count dummy
scoreboard objectives add landmine_warp_time dummy
scoreboard objectives add engineer_delay dummy

#超能力者
scoreboard objectives add footprint dummy
scoreboard objectives add use_carrot3 used:carrot_on_a_stick
scoreboard objectives add use_carrot3_count dummy
scoreboard objectives add super_eye_time dummy
scoreboard objectives add use_carrot4 used:carrot_on_a_stick
scoreboard objectives add use_carrot4_count dummy
scoreboard objectives add clairvoyance_time dummy

#看護師
scoreboard objectives add use_carrot5 used:carrot_on_a_stick
scoreboard objectives add use_carrot5_count dummy
scoreboard objectives add heal_time dummy
scoreboard objectives add use_carrot6 used:carrot_on_a_stick
scoreboard objectives add use_carrot6_count dummy
scoreboard objectives add revivetp_charge dummy

#復讐者
scoreboard objectives add revenge dummy
scoreboard objectives add use_carrot7 used:carrot_on_a_stick
scoreboard objectives add use_carrot7_count dummy
scoreboard objectives add adrenaline dummy
scoreboard objectives add adrenaline_time dummy
scoreboard objectives add use_carrot8 used:carrot_on_a_stick
scoreboard objectives add use_carrot8_count dummy
scoreboard objectives add wrathful_heart_time dummy

#館の主
scoreboard objectives add attack_cooldown dummy

#bossbar
bossbar add thiefgame:timer "残り時間"
bossbar set thiefgame:timer color yellow
bossbar set thiefgame:timer players @a
bossbar set thiefgame:timer visible false

#チーム
team add lord "館の主"
team add thief "泥棒"
team add spectator "観戦"
team modify lord color red
team modify thief color blue
team modify spectator color yellow
team modify thief nametagVisibility never
team modify lord nametagVisibility never
team modify thief friendlyFire false
team modify lord friendlyFire false




#ロードテキスト
tellraw @a "ロードしたよ"