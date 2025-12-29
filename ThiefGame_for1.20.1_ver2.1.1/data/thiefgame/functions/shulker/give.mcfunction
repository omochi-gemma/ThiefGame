setblock ~ ~-1 ~ redstone_block
setblock ~ ~2 ~1 air
summon item ~ ~ ~ {Item:{id:"minecraft:golden_pickaxe",Count:1b,tag:{CanDestroy:["minecraft:white_stained_glass"],display:{Name:'{"text":"ガラスぶっ壊す！！！！！","color":"dark_red","bold":true}',Lore:['{"text":"ガラスを破壊することができる。","color":"light_purple"}','{"text":"名前の気合とは裏腹に白色しか壊せない。","color":"light_purple"}']},Damage:16,Enchantments:[{}]}}}
playsound entity.player.levelup master @a[distance=..5] ~ ~ ~ 1 2 0
particle happy_villager ~ ~1 ~ 0.2 0.2 0.2 1 20 force @a