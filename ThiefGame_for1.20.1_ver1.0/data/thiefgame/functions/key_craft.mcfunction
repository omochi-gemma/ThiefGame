execute as @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",Count:1b}}] at @s unless block ~ ~-1 ~ crafting_table run return 0

execute as @e[type=item,nbt={Item:{id:"minecraft:iron_nugget",Count:1b}}] if entity @e[distance=..0.5,nbt={Item:{id:"minecraft:blaze_rod",Count:1b}}] run function thiefgame:summon_treasurekey