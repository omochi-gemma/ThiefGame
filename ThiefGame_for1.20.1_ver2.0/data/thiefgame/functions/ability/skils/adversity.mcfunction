#逆境
#攻撃力を設定
effect clear @s strength
execute if entity @s[scores={lord_attack_count=10..}] if entity @e[type=armor_stand,tag=timer,scores={timer=0..300}] run effect give @s strength 1 7 true
execute if entity @s[scores={lord_attack_count=10..}] if entity @e[type=armor_stand,tag=timer,scores={timer=0..300}] run particle dust 0.263 0.004 0.004 1 ~ ~1 ~ 0.2 0.2 0.2 1 5 force @a
execute if entity @s[scores={lord_attack_count=9..}] if entity @e[type=armor_stand,tag=timer,scores={timer=301..400}] run effect give @s strength 1 6 true
execute if entity @s[scores={lord_attack_count=9..}] if entity @e[type=armor_stand,tag=timer,scores={timer=301..400}] run particle dust 0.384 0 0 1 ~ ~1 ~ 0.2 0.2 0.2 1 5 force @a
execute if entity @s[scores={lord_attack_count=8..}] if entity @e[type=armor_stand,tag=timer,scores={timer=401..840}] run effect give @s strength 1 5 true
execute if entity @s[scores={lord_attack_count=8..}] if entity @e[type=armor_stand,tag=timer,scores={timer=401..840}] run particle dust 0.518 0.004 0.004 1 ~ ~1 ~ 0.2 0.2 0.2 1 5 force @a
execute if entity @s[scores={lord_attack_count=5..}] if entity @e[type=armor_stand,tag=timer,scores={timer=841..960}] run effect give @s strength 1 4 true
execute if entity @s[scores={lord_attack_count=5..}] if entity @e[type=armor_stand,tag=timer,scores={timer=841..960}] run particle dust 0.812 0 0 1 ~ ~1 ~ 0.2 0.2 0.2 1 5 force @a
execute if entity @s[scores={lord_attack_count=4..}] if entity @e[type=armor_stand,tag=timer,scores={timer=961..1020}] run effect give @s strength 1 3 true
execute if entity @s[scores={lord_attack_count=4..}] if entity @e[type=armor_stand,tag=timer,scores={timer=961..1020}] run particle dust 0.929 0 0 1 ~ ~1 ~ 0.2 0.2 0.2 1 5 force @a
execute if entity @s[scores={lord_attack_count=3..}] if entity @e[type=armor_stand,tag=timer,scores={timer=1021..1080}] run effect give @s strength 1 2 true
execute if entity @s[scores={lord_attack_count=3..}] if entity @e[type=armor_stand,tag=timer,scores={timer=1021..1080}] run particle dust 0.863 0.259 0 1 ~ ~1 ~ 0.2 0.2 0.2 1 5 force @a
execute if entity @s[scores={lord_attack_count=2..}] if entity @e[type=armor_stand,tag=timer,scores={timer=1081..1140}] run effect give @s strength 1 1 true
execute if entity @s[scores={lord_attack_count=2..}] if entity @e[type=armor_stand,tag=timer,scores={timer=1081..1140}] run particle dust 0.918 0.459 0 1 ~ ~1 ~ 0.2 0.2 0.2 1 5 force @a
execute if entity @s[scores={lord_attack_count=1..}] if entity @e[type=armor_stand,tag=timer,scores={timer=1141..1200}] run effect give @s strength 1 0 true
execute if entity @s[scores={lord_attack_count=1..}] if entity @e[type=armor_stand,tag=timer,scores={timer=1141..1200}] run particle dust 0.851 0.796 0 1 ~ ~1 ~ 0.2 0.2 0.2 1 5 force @a