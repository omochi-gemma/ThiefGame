#東出口
tp @e[type=block_display,tag=east_exit_close] 30.5 43.75 217.25
tp @e[type=block_display,tag=east_exit_open] 0 0 0
fill 30 43 215 30 45 217 barrier
scoreboard players set @e[type=block_display,tag=east_exit_close] red_unlocking_count 0
scoreboard players set @e[type=block_display,tag=east_exit_close] blue_unlocking_count 0

#西出口
tp @e[type=block_display,tag=west_exit_close] -39.25 38.75 224.5
tp @e[type=block_display,tag=west_exit_open] 0 0 0
fill -40 38 224 -38 40 224 barrier
scoreboard players set @e[type=block_display,tag=west_exit_close] yellow_unlocking_count 0
scoreboard players set @e[type=block_display,tag=west_exit_close] green_unlocking_count 0