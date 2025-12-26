function thiefgame:rng/rng
execute if entity @s[scores={rng=0..94}] run damage @s 20
execute if entity @s[scores={rng=95..99}] run scoreboard players set @e[type=interaction,tag=soul_interaction,limit=1,sort=nearest] revive 30

##進捗トリガー
execute if entity @s[scores={rng=95..99}] run advancement grant @s only thiefgame:achievements/thief/comeback_move

advancement revoke @s only thiefgame:system/drink_suspicious_medicine