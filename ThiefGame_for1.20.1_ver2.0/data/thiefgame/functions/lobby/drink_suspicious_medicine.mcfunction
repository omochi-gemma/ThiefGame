function thiefgame:rng/rng
execute if entity @s[scores={rng=0..94}] run damage @s 20
execute if entity @s[scores={rng=95..99}] run scoreboard players set @e[type=interaction,tag=soul_interaction,limit=1,sort=nearest] revive 30

advancement revoke @s only thiefgame:drink_suspicious_medicine