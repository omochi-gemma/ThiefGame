#地雷設置
execute at @e[type=armor_stand,tag=landmine] run particle dust 1 1 0 1 ~ ~ ~ 0.5 0.1 0.5 0.1 30 force @a[team=!lord]
execute at @e[type=armor_stand,tag=landmine] run particle dust 0 0 0 1 ~ ~ ~ 0.5 0.1 0.5 0.1 30 force @a[team=!lord]
execute as @e[type=armor_stand,tag=landmine,nbt={OnGround:true}] run data merge entity @s {Marker:true}
execute as @e[type=armor_stand,tag=landmine_warp,nbt={OnGround:true}] run data merge entity @s {Marker:true}


execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}},scores={use_carrot1=1..}] run scoreboard players add @s engineer_delay 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}},scores={engineer_delay=1}] run effect give @s slowness 3 6 true
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}},scores={engineer_delay=1}] run effect give @s jump_boost 3 199 true
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}},scores={engineer_delay=1..60}] run particle crit ~ ~ ~ 0.2 0.2 0.2 0.5 30 force @a
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}},scores={use_carrot1=1..,engineer_delay=60}] run tag @s add place_landmine
execute if entity @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}},scores={engineer_delay=1..60}] run scoreboard players set @s engineer_delay 0
execute if entity @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}},scores={engineer_delay=..0}] run scoreboard players set @s use_carrot1 0

execute if entity @s[tag=place_landmine] run scoreboard players add @e[type=armor_stand,tag=landmine] landmine_placecount 1
execute if entity @s[tag=place_landmine] if entity @e[type=armor_stand,tag=landmine,scores={landmine_placecount=2..}] run tellraw @s "古い地雷が壊れた。"
execute if entity @s[tag=place_landmine] if entity @e[type=armor_stand,tag=landmine,scores={landmine_placecount=2..}] run kill @e[type=armor_stand,tag=landmine,scores={landmine_placecount=2..}]
execute if entity @s[tag=place_landmine] run playsound block.smithing_table.use master @a ~ ~ ~ 1 0 0
execute if entity @s[tag=place_landmine] run particle crit ~ ~ ~ 0.2 0.2 0.2 1 50 force @a
execute if entity @s[tag=place_landmine] run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["landmine"]}
execute if entity @s[tag=place_landmine] run scoreboard players add @s use_carrot1 1
execute if entity @s[tag=place_landmine] run tag @s remove place_landmine
execute if entity @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}},scores={use_carrot1=1,landmine_time=0}] run scoreboard players set @s use_carrot1 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}},scores={use_carrot1=1..,landmine_time=0..}] run title @s actionbar ["",{"text":"\u5730\u96f7","color":"yellow"},{"text":"\u518d\u8a2d\u7f6e\u53ef\u80fd\u307e\u3067\u6b8b\u308a:"},{"score":{"name":"@s","objective":"landmine_time"},"color":"red"}]
execute if entity @s[scores={engineer_delay=60..}] run scoreboard players add @s use_carrot1_count 1
execute if entity @s[scores={engineer_delay=60..}] if entity @s[tag=chronomancer,tag=!in_lobby,nbt={SelectedItem:{id:"minecraft:red_dye",tag:{CustomModelData:2}}},scores={sun_pocket_watch_time=0..},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:2}}]}] run scoreboard players add @s use_carrot1_count 1
execute if entity @s[scores={engineer_delay=60..,use_carrot1_count=20..}] run scoreboard players remove @s landmine_time 1
execute if entity @s[scores={engineer_delay=60..,use_carrot1_count=20..}] run scoreboard players set @s use_carrot1_count 0
execute if entity @s[scores={engineer_delay=60..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run scoreboard players remove @s landmine_time 3
execute if entity @s[scores={engineer_delay=60..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run particle glow ~ ~1 ~ 0.2 0.2 0.2 0.01 50 force @a
execute if entity @s[scores={engineer_delay=60..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run playsound entity.item.pickup master @a ~ ~ ~ 1 0 0
execute if entity @s[scores={engineer_delay=60..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run clear @s slime_ball 1
execute if entity @s[scores={engineer_delay=60..,landmine_time=..-1}] run particle glow ~ ~1 ~ 0.2 0.2 0.2 0.01 50 force @a
execute if entity @s[scores={engineer_delay=60..,landmine_time=..-1}] run playsound entity.player.levelup master @a ~ ~ ~ 1 2 0
execute if entity @s[scores={engineer_delay=60..,landmine_time=..-1}] run scoreboard players set @s use_carrot1 0
execute if entity @s[scores={engineer_delay=60..,landmine_time=..-1}] run scoreboard players set @s engineer_delay 0
execute if entity @s[scores={landmine_time=..-1}] run scoreboard players set @s landmine_time 20

execute as @e[type=armor_stand,tag=landmine] run scoreboard players add @s landmine_time 1
execute if entity @e[type=armor_stand,tag=landmine,scores={landmine_time=3600..}] run tellraw @s "地雷が壊れてしまった...。"
kill @e[type=armor_stand,tag=landmine,scores={landmine_time=3600..}]

execute as @e[type=armor_stand,tag=landmine] at @s if entity @a[team=lord,distance=..1.5] run effect give @a[team=lord,distance=..1.5] slowness 10 6 true
execute as @e[type=armor_stand,tag=landmine] at @s if entity @a[team=lord,distance=..1.5] run effect give @a[team=lord,distance=..1.5] jump_boost 10 199 true
execute as @e[type=armor_stand,tag=landmine] at @s if entity @a[team=lord,distance=..1.5] run particle firework ~ ~ ~ 0.2 0.2 0.2 0.1 100 force @a
execute as @e[type=armor_stand,tag=landmine] at @s if entity @a[team=lord,distance=..1.5] run playsound entity.firework_rocket.twinkle master @a ~ ~ ~ 1 2 0
execute at @e[type=armor_stand,tag=landmine] if entity @a[team=lord,distance=..1.5] run tellraw @s[team=thief] "地雷が起動した。"

##進捗トリガー
execute at @e[type=armor_stand,tag=landmine] if entity @a[team=lord,distance=..1.5] if entity @s[distance=50..] run advancement grant @s only thiefgame:achievements/thief/as_planned

execute as @e[type=armor_stand,tag=landmine] at @s if entity @a[team=lord,distance=..1.5] run kill @s
execute as @e[type=armor_stand,tag=landmine] at @s if entity @a[team=lord,distance=..8.5] run effect give @a[team=lord,distance=..7] glowing 1 0 true



#ワープ地点設置
execute at @e[type=armor_stand,tag=landmine_warp] run particle dragon_breath ~ ~ ~ 0.1 0.0001 0.1 0.015 5 force @a[team=!lord]

execute if predicate is_sneaking run execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}},scores={use_carrot2=1}] if entity @e[type=armor_stand,tag=landmine_warp] run tellraw @s "古いワープ地点が壊れた。"
execute if predicate is_sneaking run execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}},scores={use_carrot2=1}] run kill @e[type=armor_stand,tag=landmine_warp]
execute if predicate is_sneaking run execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}},scores={use_carrot2=1}] run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["landmine_warp"]}
execute if predicate is_sneaking run execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}},scores={use_carrot2=1}] run particle witch ~ ~ ~ 0.2 0.2 0.2 1 50 force @a
execute if predicate is_sneaking run execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}},scores={use_carrot2=1}] run playsound block.smithing_table.use master @a ~ ~ ~ 1 0 0
execute unless predicate is_sneaking run execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}},scores={use_carrot2=1}] run tp @s @e[type=armor_stand,tag=landmine_warp,limit=1,sort=nearest]
execute unless predicate is_sneaking run execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}},scores={use_carrot2=1}] at @e[type=armor_stand,tag=landmine_warp,sort=nearest,limit=1] run playsound entity.enderman.teleport master @a ~ ~ ~ 1 0 0
execute unless predicate is_sneaking run execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}},scores={use_carrot2=1}] at @e[type=armor_stand,tag=landmine_warp,sort=nearest,limit=1] run particle witch ~ ~ ~ 0.2 0.2 0.2 1 50 force @a
execute unless predicate is_sneaking run execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}},scores={use_carrot2=1}] run execute if entity @e[type=armor_stand,tag=landmine_warp] run effect give @s slowness 5 6 true
execute unless predicate is_sneaking run execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}},scores={use_carrot2=1}] run execute if entity @e[type=armor_stand,tag=landmine_warp] run effect give @s jump_boost 5 199 true
execute unless predicate is_sneaking run execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}},scores={use_carrot2=1}] run execute unless entity @e[type=armor_stand,tag=landmine_warp] run tellraw @s {"text":"\u30c6\u30ec\u30dd\u30fc\u30c8\u5148\u304c\u898b\u3064\u304b\u308a\u307e\u305b\u3093\u3002","color":"red"}
execute unless predicate is_sneaking run execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}},scores={use_carrot2=1}] run execute unless entity @e[type=armor_stand,tag=landmine_warp] run scoreboard players set @s landmine_warp_time 5
execute unless predicate is_sneaking run execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}},scores={use_carrot2=1}] if entity @e[type=armor_stand,tag=landmine_warp] run tellraw @s "ワープ地点が壊れた。"
execute unless predicate is_sneaking run execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}},scores={use_carrot2=1}] run kill @e[type=armor_stand,tag=landmine_warp,limit=1,sort=nearest]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}},scores={use_carrot2=1..,landmine_warp_time=0..}] run title @s actionbar ["",{"text":"\u518d\u4f7f\u7528\u53ef\u80fd\u307e\u3067\u6b8b\u308a:"},{"score":{"name":"@s","objective":"landmine_warp_time"},"color":"red"}]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}},scores={use_carrot2=1}] run scoreboard players add @s use_carrot2 1
execute if entity @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}},scores={use_carrot2=1}] run scoreboard players set @s use_carrot2 0

execute if entity @s[scores={use_carrot2=1..}] run scoreboard players add @s use_carrot2_count 1
execute if entity @s[scores={use_carrot2=1..}] if entity @s[tag=chronomancer,tag=!in_lobby,nbt={SelectedItem:{id:"minecraft:red_dye",tag:{CustomModelData:2}}},scores={sun_pocket_watch_time=0..},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:2}}]}] run scoreboard players add @s use_carrot2_count 1
execute if entity @s[scores={use_carrot2=1..,use_carrot2_count=20..}] run scoreboard players remove @s landmine_warp_time 1
execute if entity @s[scores={use_carrot2=1..,use_carrot2_count=20..}] run scoreboard players set @s use_carrot2_count 0
execute if entity @s[scores={use_carrot2=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run scoreboard players remove @s landmine_warp_time 3
execute if entity @s[scores={use_carrot2=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run particle glow ~ ~1 ~ 0.2 0.2 0.2 0.01 50 force @a
execute if entity @s[scores={use_carrot2=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run playsound entity.item.pickup master @a ~ ~ ~ 1 0 0
execute if entity @s[scores={use_carrot2=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run clear @s slime_ball 1
execute if entity @s[scores={use_carrot2=1..,landmine_warp_time=..-1}] run particle glow ~ ~1 ~ 0.2 0.2 0.2 0.01 50 force @a
execute if entity @s[scores={use_carrot2=1..,landmine_warp_time=..-1}] run playsound entity.player.levelup master @a ~ ~ ~ 1 2 0
execute if entity @s[scores={use_carrot2=1..,landmine_warp_time=..-1}] run scoreboard players set @s use_carrot2 0
execute if entity @s[scores={landmine_warp_time=..-1}] run scoreboard players set @s landmine_warp_time 40

execute as @e[type=armor_stand,tag=landmine_warp] run scoreboard players add @s landmine_warp_time 1
execute if entity @e[type=armor_stand,tag=landmine_warp,scores={landmine_warp_time=3600..}] run tellraw @s "ワープ地点が壊れてしまった...。"
execute as @e[type=armor_stand,tag=landmine_warp,scores={landmine_warp_time=3600..}] run kill @s

