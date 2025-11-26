#西出口を開く
tp @e[type=block_display,tag=west_exit_close] 0 0 0
tp @e[type=block_display,tag=west_exit_open] -39.5 38.75 225.5
playsound block.iron_door.open master @a -39.5 38.75 224.75 1 0 0
fill -40 38 224 -38 40 224 air
tellraw @a "西出口が開いた"

scoreboard players add @e[type=block_display,tag=west_exit_close] yellow_unlocking_count 1
scoreboard players add @e[type=block_display,tag=west_exit_close] green_unlocking_count 1