particle dust 0 0 0 1 -3.001 43 236.001 1.0 0.2 1.0 1 500 force @a
playsound entity.villager.no master @a -3.001 43 236.001 1 1 0

execute as @e[type=armor_stand,tag=CP] at @s run setblock ~ ~ ~ air destroy
execute as @e[type=armor_stand,tag=CP] at @s run tag @s remove CP_red
execute as @e[type=armor_stand,tag=CP] at @s run tag @s remove CP_blue
execute as @e[type=armor_stand,tag=CP] at @s run tag @s remove CP_yellow
execute as @e[type=armor_stand,tag=CP] at @s run tag @s remove CP_green
execute as @e[type=armor_stand,tag=CP] at @s run tag @s remove CP_purple
execute as @e[type=armor_stand,tag=CP] at @s run tag @s remove CP_orange
tag @e[type=armor_stand,tag=rng] remove CPS_red
tag @e[type=armor_stand,tag=rng] remove CPS_blue
tag @e[type=armor_stand,tag=rng] remove CPS_yellow
tag @e[type=armor_stand,tag=rng] remove CPS_green
tag @e[type=armor_stand,tag=rng] remove CPS_purple
tag @e[type=armor_stand,tag=rng] remove CPS_orange

item replace block 0 43 243 container.2 with red_concrete_powder{CanPlaceOn:["minecraft:smooth_stone"],display:{Name:'{"text":"赤色のコンクリートパウダー","color":"dark_red"}'},Enchantments:[{}]} 3
item replace block 0 43 243 container.4 with blue_concrete_powder{CanPlaceOn:["minecraft:smooth_stone"],display:{Name:'{"text":"青色のコンクリートパウダー","color":"blue"}'},Enchantments:[{}]} 3
item replace block 0 43 243 container.6 with yellow_concrete_powder{CanPlaceOn:["minecraft:smooth_stone"],display:{Name:'{"text":"黄色のコンクリートパウダー","color":"yellow"}'},Enchantments:[{}]} 3
item replace block 0 43 243 container.20 with green_concrete_powder{CanPlaceOn:["minecraft:smooth_stone"],display:{Name:'{"text":"緑色のコンクリートパウダー","color":"green"}'},Enchantments:[{}]} 3
item replace block 0 43 243 container.22 with purple_concrete_powder{CanPlaceOn:["minecraft:smooth_stone"],display:{Name:'{"text":"紫色のコンクリートパウダー","color":"dark_purple"}'},Enchantments:[{}]} 3
item replace block 0 43 243 container.24 with orange_concrete_powder{CanPlaceOn:["minecraft:smooth_stone"],display:{Name:'{"text":"橙色のコンクリートパウダー","color":"red"}'},Enchantments:[{}]} 3

particle minecraft:portal 0 43.5 243 0.1 0.1 0.1 5 1000 force @a

scoreboard players set @e[type=armor_stand,tag=rng] cp_noair 0