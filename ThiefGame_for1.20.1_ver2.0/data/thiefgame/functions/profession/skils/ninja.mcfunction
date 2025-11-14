#透明化巻物
effect give @a[tag=ninja,tag=!in_lobby,nbt={SelectedItem:{id:"minecraft:red_dye",tag:{CustomModelData:1}}},scores={invisible_time=0..},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] invisibility 1 0 true
effect clear @a[tag=ninja,nbt=!{SelectedItem:{id:"minecraft:red_dye",tag:{CustomModelData:1}}}] invisibility

execute as @a[tag=ninja,tag=!in_lobby,nbt={SelectedItem:{id:"minecraft:red_dye",tag:{CustomModelData:1}}},scores={invisible_time=0..}] run title @s actionbar ["",{"text":"\u6b8b\u308a\u900f\u660e\u53ef\u80fd\u6642\u9593:"},{"score":{"name":"@s","objective":"invisible_time"},"color":"red"}]

scoreboard players add @a[tag=ninja,tag=!in_lobby,nbt={SelectedItem:{id:"minecraft:red_dye",tag:{CustomModelData:1}}},scores={invisible_time=0..},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] invisible_count 1
scoreboard players remove @a[tag=ninja,tag=!in_lobby,nbt={SelectedItem:{id:"minecraft:red_dye",tag:{CustomModelData:1}}},scores={invisible_count=20..},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] invisible_time 1
scoreboard players set @a[tag=ninja,tag=!in_lobby,nbt={SelectedItem:{id:"minecraft:red_dye",tag:{CustomModelData:1}}},scores={invisible_count=20..},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] invisible_count 0

execute if entity @s[tag=ninja,nbt={SelectedItem:{id:"minecraft:red_dye",tag:{CustomModelData:1}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run scoreboard players add @s invisible_time 3
execute if entity @s[tag=ninja,nbt={SelectedItem:{id:"minecraft:red_dye",tag:{CustomModelData:1}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run particle glow ~ ~1 ~ 0.2 0.2 0.2 0.01 50 force @a
execute if entity @s[tag=ninja,nbt={SelectedItem:{id:"minecraft:red_dye",tag:{CustomModelData:1}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run playsound entity.item.pickup master @a ~ ~ ~ 1 0 0
execute if entity @s[tag=ninja,nbt={SelectedItem:{id:"minecraft:red_dye",tag:{CustomModelData:1}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run clear @s slime_ball 1


#けむり玉
execute as @e[type=snowball] at @s run summon area_effect_cloud ~ ~ ~ {Duration:3,Tags:["smoke"]}
execute as @e[type=area_effect_cloud,tag=smoke,nbt={Age:2}] at @s unless entity @e[type=area_effect_cloud,tag=smoke,nbt={Age:1}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["smoke_point"]}
execute as @e[type=armor_stand,tag=smoke_point] at @s run particle cloud ~ ~ ~ 1.8 1.8 1.8 0.001 500 force @a
execute as @e[type=armor_stand,tag=smoke_point] at @s run effect give @a[distance=..5,team=thief] invisibility 1 0 true
execute as @e[type=armor_stand,tag=smoke_point] at @s run scoreboard players add @s smoke_count 1
execute as @e[type=armor_stand,tag=smoke_point,scores={smoke_count=600..}] run kill @s

execute as @a[tag=ninja,nbt={SelectedItem:{id:"minecraft:snowball",tag:{CustomModelData:1}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run give @s snowball{display:{Name:'{"text":"煙玉","color":"dark_gray"}',Lore:['{"text":"着弾地点に30秒間煙を発生させる。","color":"light_purple"}','{"text":"全て消費すると1分後に復活する。","color": "light_purple"}']},CustomModelData:1} 1
execute as @a[tag=ninja,nbt={SelectedItem:{id:"minecraft:snowball",tag:{CustomModelData:1}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run particle glow ~ ~1 ~ 0.2 0.2 0.2 0.01 50 force @a
execute as @a[tag=ninja,nbt={SelectedItem:{id:"minecraft:snowball",tag:{CustomModelData:1}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run clear @s slime_ball 1
scoreboard players add @a[tag=ninja,scores={smoke_use=1..},nbt=!{SelectedItem:{id:"minecraft:snowball",tag:{CustomModelData:1}}}] smoke_use 1
execute as @a[tag=ninja,scores={smoke_use=21..},nbt=!{SelectedItem:{id:"minecraft:snowball",tag:{CustomModelData:1}}}] run scoreboard players remove @s smoke_count 1
execute as @a[tag=ninja,scores={smoke_use=21..},nbt=!{SelectedItem:{id:"minecraft:snowball",tag:{CustomModelData:1}}}] run scoreboard players set @s smoke_use 1
execute as @a[tag=ninja,scores={smoke_count=..-1},nbt=!{SelectedItem:{id:"minecraft:snowball",tag:{CustomModelData:1}}}] run particle glow ~ ~1 ~ 0.2 0.2 0.2 0.01 50 force @a
execute as @a[tag=ninja,scores={smoke_count=..-1},nbt=!{SelectedItem:{id:"minecraft:snowball",tag:{CustomModelData:1}}}] run playsound entity.player.levelup master @a ~ ~ ~ 1 2 0
execute as @a[tag=ninja,scores={smoke_count=..-1},nbt=!{SelectedItem:{id:"minecraft:snowball",tag:{CustomModelData:1}}}] run give @s snowball{display:{Name:'{"text":"煙玉","color":"dark_gray"}',Lore:['{"text":"着弾地点に煙幕を発生させる。","color":"light_purple"}','{"text":"全て使い切ると一定時間後に復活する。","color":"light_purple"}','{"text":" "}','[{"text":"復活までの時間:","color":"aqua"},{"text":"90秒","color":"red"}]']},CustomModelData:1} 3
execute as @a[tag=ninja,scores={smoke_count=0..,smoke_use=1..},nbt=!{SelectedItem:{id:"minecraft:snowball",tag:{CustomModelData:1}}},nbt=!{SelectedItem:{id:"minecraft:red_dye",tag:{CustomModelData:1}}}] run title @s actionbar ["",{"text":"\u7159\u7389","color":"dark_gray"},{"text":"\u5fa9\u6d3b\u307e\u3067:"},{"score":{"name":"@s","objective":"smoke_count"},"color": "red"}]
scoreboard players set @a[tag=ninja,scores={smoke_use=1..},nbt={SelectedItem:{id:"minecraft:snowball",tag:{CustomModelData:1}}}] smoke_use 0
execute as @a[tag=ninja,scores={smoke_count=..-1}] run scoreboard players set @s smoke_use 0
execute as @a[tag=ninja,scores={smoke_count=..-1}] run scoreboard players set @s smoke_count 30