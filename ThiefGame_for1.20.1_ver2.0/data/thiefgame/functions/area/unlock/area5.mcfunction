#泥棒の人数を確認
scoreboard players set @e[type=armor_stand,tag=rng] player_count 0
execute as @a[team=thief] run scoreboard players add @e[type=armor_stand,tag=rng] player_count 1

#コンクリートパウダーを設置
execute if entity @e[type=armor_stand,tag=rng,tag=area4,scores={player_count=1}] run function thiefgame:area/unlock/set_cp
#緊急脱出装置が解放可能になりました
execute if entity @e[type=armor_stand,tag=rng,tag=area4,scores={player_count=1}] run title @a title {"text":"\u7dca\u6025\u8131\u51fa\u88c5\u7f6e\u304c\u89e3\u653e\u53ef\u80fd\u306b\u306a\u308a\u307e\u3057\u305f","color":"green"}
execute if entity @e[type=armor_stand,tag=rng,tag=area4,scores={player_count=1}] run playsound entity.player.levelup master @a ~ ~ ~ 1 0 1

#スコアをリセットして処理を終了
scoreboard players set @e[type=armor_stand,tag=rng] player_count 0