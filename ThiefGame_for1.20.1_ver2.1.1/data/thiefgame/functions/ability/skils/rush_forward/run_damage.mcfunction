execute if predicate is_sprinting as @a[team=thief,tag=!down] at @s if entity @a[team=lord,tag=rush_forward,distance=..2.5] run damage @s 8
execute if predicate is_sprinting run particle minecraft:sweep_attack ~ ~1.5 ~ 1 1 1 1 10 force @a
execute if predicate is_sprinting run playsound entity.player.attack.sweep master @a ~ ~ ~ 0.5 2 0

advancement revoke @s only thiefgame:system/rush_speed