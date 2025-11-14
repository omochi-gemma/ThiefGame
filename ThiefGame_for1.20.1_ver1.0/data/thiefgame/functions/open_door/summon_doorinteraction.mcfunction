#宝物庫
execute as @e[type=armor_stand,tag=doortre] at @s unless entity @e[type=interaction,distance=..2] run summon interaction ~ ~ ~ {Tags:["DI","DItre"],height:2.2,width:2.2}

#2階
execute as @e[type=armor_stand,tag=door2_1] at @s unless entity @e[type=interaction,distance=..2] run summon interaction ~ ~ ~ {Tags:["DI","DI2_1"],height:2.2,width:1.2}
execute as @e[type=armor_stand,tag=door2_2] at @s unless entity @e[type=interaction,distance=..2] run summon interaction ~ ~ ~ {Tags:["DI","DI2_2"],height:2.2,width:1.2}
execute as @e[type=armor_stand,tag=door2_3] at @s unless entity @e[type=interaction,distance=..2] run summon interaction ~ ~ ~ {Tags:["DI","DI2_3"],height:2.2,width:1.2}
execute as @e[type=armor_stand,tag=door2_4] at @s unless entity @e[type=interaction,distance=..2] run summon interaction ~ ~ ~ {Tags:["DI","DI2_4"],height:2.2,width:1.2}