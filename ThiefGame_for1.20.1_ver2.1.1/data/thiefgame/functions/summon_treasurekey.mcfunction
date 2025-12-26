summon item ~ ~1 ~ {PickupDelay:40,Item:{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:'{"text":"宝物庫の鍵","color":"gold","bold":true}',Lore:['{"text":"中庭地下にある宝物庫の扉が開きそう。","color":"light_purple"}']},CustomModelData:1}}}
particle end_rod ~ ~1 ~ 0.2 0.2 0.2 0.1 50 force @a
playsound minecraft:block.anvil.destroy master @a ~ ~ ~ 0.2 2 0
kill @e[distance=..0.7,type=item]