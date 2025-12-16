#レベル1の時回復
execute if entity @a[team=lord,tag=gambler,scores={gamble_power=0..9}] run effect give @s instant_health 1 2 true

#50%で自身をスロットのターゲットに
execute if entity @a[team=lord,tag=gambler] if predicate chance_50 run tag @s add slot_target

advancement revoke @s only thiefgame:system/gambler_healing