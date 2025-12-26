#復讐者は復讐心をリセット
execute as @a[team=thief,scores={death_count=1},tag=!in_lobby,tag=avenger] at @s run scoreboard players set @s revenge 0

#進捗トリガー
execute as @a[team=thief,scores={death_count=1},tag=!in_lobby] at @s run function thiefgame:advancement/trigger/escape_profession/death

#残機がなくなったら観戦にして緊急脱出装置の解放チェック
gamemode spectator @a[team=thief,scores={lives=-1},tag=!in_lobby]
team leave @a[team=thief,scores={lives=-1},tag=!in_lobby]
execute as @a[scores={lives=-1},tag=!in_lobby] at @s run function thiefgame:area/unlock/area5
scoreboard players set @a[scores={lives=-1,death_count=2..},tag=!in_lobby] death_count 0
execute as @a[scores={lives=-1},tag=!in_lobby] at @s run scoreboard players set @s lives -2

execute as @a[team=thief,scores={death_count=1},tag=!in_lobby] at @s run scoreboard players remove @s lives 1
execute as @a[team=thief,scores={death_count=1,lives=1..},tag=!in_lobby] at @s run scoreboard players set @e[tag=soul_interaction,limit=1,sort=nearest] revive 29
execute as @a[team=thief,scores={death_count=1,lives=..0},tag=!in_lobby] at @s run scoreboard players set @e[tag=soul_interaction,limit=1,sort=nearest] revive 30
execute as @a[team=thief,scores={death_count=1},tag=!in_lobby] at @s run function thiefgame:lobby/revive

#残機数を通知
execute as @a[team=thief,scores={death_count=1,lives=1..},tag=!in_lobby] run tellraw @s [{"text": "残機が"},{"text": "","extra": [{"score": {"name": "@s","objective": "lives"},"color": "yellow"}]},{"text": "になりました。"}]
execute as @a[team=thief,scores={death_count=1,lives=0},tag=!in_lobby] run tellraw @s [{"text": "残機が"},{"text": "","extra": [{"score": {"name": "@s","objective": "lives"},"color": "yellow"}]},{"text": "になりました。"},{"text": "もう復活できません。","color": "red"}]

execute as @a[team=thief,scores={death_count=1..}] at @s run scoreboard players add @s death_count 1
execute as @a[team=thief,scores={death_count=10},tag=!in_lobby] at @s run tp @s -3.0 37 141.0 0 0
execute as @a[team=thief,scores={death_count=10},tag=!in_lobby] at @s run effect give @s instant_health 1 28 true
execute as @a[team=thief,scores={death_count=10..}] at @s run scoreboard players set @s death_count 0