particle explosion ~ ~ ~ 0.6 0.6 0.6 1 10 force @a
playsound entity.generic.explode master @a ~ ~ ~ 1 2 0
execute as @a[team=thief] at @s if entity @a[team=lord,tag=rush_forward,distance=..2.5] run damage @s 10
execute as @a[team=thief] at @s if entity @a[team=lord,tag=rush_forward,distance=..2.5] run effect give @s slowness 1 1 true

advancement revoke @s only thiefgame:system/rush_speed_end