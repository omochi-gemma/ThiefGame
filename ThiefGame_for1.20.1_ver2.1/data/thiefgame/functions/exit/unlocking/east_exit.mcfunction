#西出口を開く
tp @e[type=block_display,tag=east_exit_close] 0 0 0
tp @e[type=block_display,tag=east_exit_open] 31.75 43.75 217.5
playsound block.iron_door.open master @a 30.5 43.75 217.25 1 0 0
fill 30 43 215 30 45 217 air
tellraw @a "東出口が開いた"

scoreboard players add @e[type=block_display,tag=east_exit_close] red_unlocking_count 1
scoreboard players add @e[type=block_display,tag=east_exit_close] blue_unlocking_count 1