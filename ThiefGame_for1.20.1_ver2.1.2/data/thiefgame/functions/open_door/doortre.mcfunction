execute as @e[type=interaction,sort=nearest,tag=DItre] on target at @s run playsound block.iron_door.open block @a ~ ~ ~ 1 2 0
execute as @e[type=interaction,sort=nearest,tag=DItre] on target at @s run tellraw @a {"extra": [{"selector": "@s"},{"text": "が宝物庫の鍵を使った"}],"text": ""}
execute as @e[type=interaction,sort=nearest,tag=DItre,nbt={interaction:{}}] run kill @s