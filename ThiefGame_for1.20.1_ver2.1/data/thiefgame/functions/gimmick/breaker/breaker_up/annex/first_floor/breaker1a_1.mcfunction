#ブレーカーを直す
tellraw @a "電力が復旧した"
setblock ~ ~ ~ lever[facing=west,powered=false]
tag @a remove darkness
playsound minecraft:block.lever.click master @a ~ ~ ~ 1 0 0
tag @e[type=interaction,tag=breaker1a_1_up] remove breaker1a_1_up