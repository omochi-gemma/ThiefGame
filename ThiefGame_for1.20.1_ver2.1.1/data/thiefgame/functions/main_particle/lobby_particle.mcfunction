particle dust 0 0 1 5 83 38.5 48 0.8 0.8 0.2 1 10 force @a[team=!thief]
particle dust 1 0 0 5 77 38.5 48 0.8 0.8 0.2 1 10 force @a[team=!lord]

execute at @e[type=interaction,tag=profession_decision] run particle wax_off ~ ~0.5 ~ 0.2 0.2 0.2 1 1 force @a
execute at @e[type=interaction,tag=ability_decision] run particle wax_off ~ ~0.5 ~ 0.2 0.2 0.2 1 1 force @a
execute at @e[type=interaction,tag=random_decision] run particle wax_off ~ ~0.5 ~ 0.35 0.35 0.35 1 1 force @a
execute at @e[type=interaction,tag=ab_random_decision] run particle wax_off ~ ~0.5 ~ 0.35 0.35 0.35 1 1 force @a