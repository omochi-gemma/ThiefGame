execute as @e[type=interaction,sort=nearest,tag=DI2_1] on target at @s run playsound block.iron_door.open block @a ~ ~ ~ 1 2 0
execute as @e[type=interaction,sort=nearest,tag=DI2_1] on target at @s run tellraw @a[team=thief] "2階のカギを使った。"
execute as @e[type=interaction,sort=nearest,tag=DI2_1,nbt={interaction:{}}] run kill @s

execute as @e[type=interaction,sort=nearest,tag=DI2_2] on target at @s run playsound block.iron_door.open block @a ~ ~ ~ 1 2 0
execute as @e[type=interaction,sort=nearest,tag=DI2_2] on target at @s run tellraw @a[team=thief] "2階のカギを使った。"
execute as @e[type=interaction,sort=nearest,tag=DI2_2,nbt={interaction:{}}] run kill @s

execute as @e[type=interaction,sort=nearest,tag=DI2_3] on target at @s run playsound block.iron_door.open block @a ~ ~ ~ 1 2 0
execute as @e[type=interaction,sort=nearest,tag=DI2_3] on target at @s run tellraw @a[team=thief] "2階のカギを使った。"
execute as @e[type=interaction,sort=nearest,tag=DI2_3,nbt={interaction:{}}] run kill @s

execute as @e[type=interaction,sort=nearest,tag=DI2_4] on target at @s run playsound block.iron_door.open block @a ~ ~ ~ 1 2 0
execute as @e[type=interaction,sort=nearest,tag=DI2_4] on target at @s run tellraw @a[team=thief] "2階のカギを使った。"
execute as @e[type=interaction,sort=nearest,tag=DI2_4,nbt={interaction:{}}] run kill @s