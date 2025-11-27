summon item -7 44 140 {Item:{id:"minecraft:brown_stained_glass",Count:1b,tag:{CanPlaceOn:["minecraft:brown_glazed_terracotta"],display:{Name:'{"text":"魔法のガラス","color":"dark_purple"}',Lore:['{"text":"壊れた構造物を最低限修復","color":"light_purple"}','{"text":"してくれる魔法のガラス。","color":"light_purple"}']},Enchantments:[{}]}}}
playsound entity.player.levelup master @a -7 44 140 1 2 0
particle happy_villager -7 44.5 140 0.2 0.2 0.2 1 20 force @a
setblock ~ ~ ~ stone_button[face=floor]