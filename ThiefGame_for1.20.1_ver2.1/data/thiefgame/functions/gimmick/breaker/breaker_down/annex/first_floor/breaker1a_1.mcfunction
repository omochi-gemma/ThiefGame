#ブレーカーを落とす
tellraw @a [{"selector": "@s"},{"text": "がブレーカーを落とした"}]
setblock ~ ~ ~ lever[facing=west,powered=true]
playsound minecraft:block.lever.click master @a ~ ~ ~ 1 0 0
tag @e[type=interaction,tag=breaker1a_1_down] add breaker1a_1_up
tag @e[type=interaction,tag=breaker1a_1_down] remove breaker1a_1_down