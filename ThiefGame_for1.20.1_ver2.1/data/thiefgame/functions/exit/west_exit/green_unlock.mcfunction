scoreboard players add @e[type=block_display,tag=west_exit_close,scores={green_unlocking_count=..300}] green_unlocking_count 1


execute as @e[type=block_display,tag=west_exit_close,scores={green_unlocking_count=60}] at @s run playsound block.iron_door.open master @a ~ ~ ~ 1 0 0
execute as @e[type=block_display,tag=west_exit_close,scores={green_unlocking_count=60}] at @s run title @a[distance=..3] actionbar "開錠: 20%進行"
execute as @e[type=block_display,tag=west_exit_close,scores={green_unlocking_count=60}] at @s run scoreboard players add @s green_unlocking_count 1

execute as @e[type=block_display,tag=west_exit_close,scores={green_unlocking_count=120}] at @s run playsound block.iron_door.open master @a ~ ~ ~ 1 0 0
execute as @e[type=block_display,tag=west_exit_close,scores={green_unlocking_count=120}] at @s run title @a[distance=..3] actionbar "開錠: 40%進行"
execute as @e[type=block_display,tag=west_exit_close,scores={green_unlocking_count=120}] at @s run scoreboard players add @s green_unlocking_count 1

execute as @e[type=block_display,tag=west_exit_close,scores={green_unlocking_count=180}] at @s run playsound block.iron_door.open master @a ~ ~ ~ 1 0 0
execute as @e[type=block_display,tag=west_exit_close,scores={green_unlocking_count=180}] at @s run title @a[distance=..3] actionbar "開錠: 60%進行"
execute as @e[type=block_display,tag=west_exit_close,scores={green_unlocking_count=180}] at @s run scoreboard players add @s green_unlocking_count 1

execute as @e[type=block_display,tag=west_exit_close,scores={green_unlocking_count=240}] at @s run playsound block.iron_door.open master @a ~ ~ ~ 1 0 0
execute as @e[type=block_display,tag=west_exit_close,scores={green_unlocking_count=240}] at @s run title @a[distance=..3] actionbar "開錠: 80%進行"
execute as @e[type=block_display,tag=west_exit_close,scores={green_unlocking_count=240}] at @s run scoreboard players add @s green_unlocking_count 1

execute as @e[type=block_display,tag=west_exit_close,scores={green_unlocking_count=300}] at @s run title @a[distance=..3] actionbar "開錠: 100%進行"

execute if entity @e[type=block_display,tag=west_exit_close,scores={green_unlocking_count=0..300}] run particle dust 0 1 0 1 ~ ~1 ~ 0.2 0.2 0.2 1 5 force @a
execute as @e[type=block_display,tag=west_exit_close,scores={green_unlocking_count=300}] at @s run playsound block.iron_door.open master @a ~ ~ ~ 1 2 0
execute as @e[type=block_display,tag=west_exit_close,scores={green_unlocking_count=300}] run scoreboard players add @s green_unlocking_count 1