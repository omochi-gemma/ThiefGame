execute as @e[type=interaction,sort=nearest,tag=DItre] on target at @s run playsound block.iron_door.open block @a ~ ~ ~ 1 2 0
execute as @e[type=interaction,sort=nearest,tag=DItre] on target at @s run tellraw @a[team=thief] "宝物庫のカギを使った。"
execute as @e[type=interaction,sort=nearest,tag=DItre,nbt={interaction:{}}] run kill @s