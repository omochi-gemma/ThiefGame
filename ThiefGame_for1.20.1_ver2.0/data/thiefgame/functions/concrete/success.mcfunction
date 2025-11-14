#演出
particle end_rod -3.001 43 236.001 1.0 0.2 1.0 1 500 force @a
playsound entity.player.levelup master @a -3.001 43 236.001 1 0 0
fill -6 43 233 -1 43 238 minecraft:water replace minecraft:air
fill -6 43 233 -1 43 238 minecraft:air replace minecraft:water
execute positioned -3.001 43 236.001 run tellraw @a[distance=..7] "壁が崩れたようだ"


#テラコッタ破壊
fill -3 43 244 -4 44 244 air destroy



#停止
scoreboard players set @e[type=armor_stand,tag=rng] cp_noair 100