#超能力者の目
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}},scores={use_carrot3=1}] run playsound block.beacon.power_select master @a ~ ~ ~ 1 2 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}},scores={use_carrot3=1}] run summon armor_stand ^ ^1 ^2 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["super_eye"]}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}},scores={use_carrot3=1}] run summon armor_stand ^ ^1 ^4 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["super_eye"]}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}},scores={use_carrot3=1}] run summon armor_stand ^ ^1 ^6 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["super_eye"]}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}},scores={use_carrot3=1}] run summon armor_stand ^ ^1 ^8 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["super_eye"]}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}},scores={use_carrot3=1}] run summon armor_stand ^ ^1 ^10 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["super_eye"]}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}},scores={use_carrot3=1}] run summon armor_stand ^ ^1 ^12 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["super_eye"]}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}},scores={use_carrot3=1}] run summon armor_stand ^ ^1 ^14 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["super_eye"]}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}},scores={use_carrot3=1}] run summon armor_stand ^ ^1 ^16 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["super_eye"]}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}},scores={use_carrot3=1}] at @e[type=armor_stand,tag=super_eye] run particle end_rod ~ ~ ~ 0.6 0.6 0.6 0.05 100 force @a
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}},scores={use_carrot3=1}] as @e[type=armor_stand,tag=super_eye] at @s run effect give @a[team=lord,distance=..2] glowing 15 0 true
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}},scores={use_carrot3=1}] as @e[type=armor_stand,tag=super_eye] at @s run effect give @a[team=lord,distance=..2] slowness 5 4 true
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}},scores={use_carrot3=1}] run kill @e[type=armor_stand,tag=super_eye]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}},scores={use_carrot3=1}] run scoreboard players add @s use_carrot3 1
execute if entity @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}},scores={use_carrot3=1}] run scoreboard players set @s use_carrot3 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}},scores={use_carrot3=1..,super_eye_time=0..}] run title @s actionbar ["",{"text":"\u518d\u4f7f\u7528\u53ef\u80fd\u307e\u3067\u6b8b\u308a:"},{"score":{"name":"@s","objective":"super_eye_time"},"color":"red"}]
execute if entity @s[scores={use_carrot3=1..}] run scoreboard players add @s use_carrot3_count 1
execute if entity @s[scores={use_carrot3=1..}] if entity @s[tag=chronomancer,tag=!in_lobby,nbt={SelectedItem:{id:"minecraft:red_dye",tag:{CustomModelData:2}}},scores={sun_pocket_watch_time=0..},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:2}}]}] run scoreboard players add @s use_carrot3_count 1
execute if entity @s[scores={use_carrot3=1..,use_carrot3_count=20..}] run scoreboard players remove @s super_eye_time 1
execute if entity @s[scores={use_carrot3=1..,use_carrot3_count=20..}] run scoreboard players set @s use_carrot3_count 0
execute if entity @s[scores={use_carrot3=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run scoreboard players remove @s super_eye_time 3
execute if entity @s[scores={use_carrot3=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run particle glow ~ ~1 ~ 0.2 0.2 0.2 0.01 50 force @a
execute if entity @s[scores={use_carrot3=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run playsound entity.item.pickup master @a ~ ~ ~ 1 0 0
execute if entity @s[scores={use_carrot3=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run clear @s slime_ball 1
execute if entity @s[scores={use_carrot3=1..,super_eye_time=..-1}] run particle glow ~ ~1 ~ 0.2 0.2 0.2 0.01 50 force @a
execute if entity @s[scores={use_carrot3=1..,super_eye_time=..-1}] run playsound entity.player.levelup master @a ~ ~ ~ 1 2 0
execute if entity @s[scores={use_carrot3=1..,super_eye_time=..-1}] run scoreboard players set @s use_carrot3 0
execute if entity @s[scores={super_eye_time=..-1}] run scoreboard players set @s super_eye_time 30



#千里眼
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}},scores={use_carrot4=1}] run playsound block.beacon.activate master @a ~ ~ ~ 1 2 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}},scores={use_carrot4=1}] run playsound block.beacon.ambient master @a ~ ~ ~ 1 2 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}},scores={use_carrot4=1}] run particle enchant ~ ~1 ~ 0.2 0.2 0.2 1 100 force @a
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}},scores={use_carrot4=1}] run particle sculk_soul ~ ~1 ~ 0.2 0.2 0.2 0.5 100 force @a
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}},scores={use_carrot4=1}] run effect give @a[team=lord] glowing 5 0 true
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}},scores={use_carrot4=1}] if entity @a[team=lord,distance=..10] run effect give @s glowing 15 0 true
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}},scores={use_carrot4=1}] run scoreboard players add @s use_carrot4 1
execute if entity @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}},scores={use_carrot4=1}] run scoreboard players set @s use_carrot4 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}},scores={use_carrot4=1..,clairvoyance_time=0..}] run title @s actionbar ["",{"text":"\u518d\u4f7f\u7528\u53ef\u80fd\u307e\u3067\u6b8b\u308a:"},{"score":{"name":"@s","objective":"clairvoyance_time"},"color":"red"}]
execute if entity @s[scores={use_carrot4=1..}] run scoreboard players add @s use_carrot4_count 1
execute if entity @s[scores={use_carrot4=1..}] if entity @s[tag=chronomancer,tag=!in_lobby,nbt={SelectedItem:{id:"minecraft:red_dye",tag:{CustomModelData:2}}},scores={sun_pocket_watch_time=0..},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:2}}]}] run scoreboard players add @s use_carrot4_count 1
execute if entity @s[scores={use_carrot4=1..,use_carrot4_count=20..}] run scoreboard players remove @s clairvoyance_time 1
execute if entity @s[scores={use_carrot4=1..,use_carrot4_count=20..}] run scoreboard players set @s use_carrot4_count 0
execute if entity @s[scores={use_carrot4=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run scoreboard players remove @s clairvoyance_time 3
execute if entity @s[scores={use_carrot4=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run particle glow ~ ~1 ~ 0.2 0.2 0.2 0.01 50 force @a
execute if entity @s[scores={use_carrot4=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run playsound entity.item.pickup master @a ~ ~ ~ 1 0 0
execute if entity @s[scores={use_carrot4=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run clear @s slime_ball 1
execute if entity @s[scores={use_carrot4=1..,clairvoyance_time=..-1}] run particle glow ~ ~1 ~ 0.2 0.2 0.2 0.01 50 force @a
execute if entity @s[scores={use_carrot4=1..,clairvoyance_time=..-1}] run playsound entity.player.levelup master @a ~ ~ ~ 1 2 0
execute if entity @s[scores={use_carrot4=1..,clairvoyance_time=..-1}] run scoreboard players set @s use_carrot4 0
execute if entity @s[scores={clairvoyance_time=..-1}] run scoreboard players set @s clairvoyance_time 40