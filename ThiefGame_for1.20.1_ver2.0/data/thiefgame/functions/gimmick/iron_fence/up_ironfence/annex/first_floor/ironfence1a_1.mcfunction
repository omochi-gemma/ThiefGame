tp @e[tag=ironfence1a_1] 0 0 0
setblock -20 39 213 lever[facing=south]
playsound minecraft:block.grindstone.use master @a ~ ~ ~ 1 0.7 0
tellraw @a "鉄柵が戻った"