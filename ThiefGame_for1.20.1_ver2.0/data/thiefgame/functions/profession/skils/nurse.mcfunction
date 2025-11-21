#回復
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:5}}},scores={use_carrot5=1}] run playsound entity.player.levelup master @a ~ ~ ~ 1 1 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:5}}},scores={use_carrot5=1}] run particle heart ~ ~1 ~ 0.8 0.2 0.8 0.5 70 force @a
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:5}}},scores={use_carrot5=1}] run effect give @a[team=thief,distance=..3] instant_health 1 28 true
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:5}}},scores={use_carrot5=1}] run scoreboard players add @s use_carrot5 1
execute if entity @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:5}}},scores={use_carrot5=1}] run scoreboard players set @s use_carrot5 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:5}}},scores={use_carrot5=1..,heal_time=0..}] run title @s actionbar ["",{"text":"\u518d\u4f7f\u7528\u53ef\u80fd\u307e\u3067\u6b8b\u308a:"},{"score":{"name":"@s","objective":"heal_time"},"color":"red"}]
execute if entity @s[scores={use_carrot5=1..}] run scoreboard players add @s use_carrot5_count 1
execute if entity @s[scores={use_carrot5=1..,use_carrot5_count=20..}] run scoreboard players remove @s heal_time 1
execute if entity @s[scores={use_carrot5=1..,use_carrot5_count=20..}] run scoreboard players set @s use_carrot5_count 0
execute if entity @s[scores={use_carrot5=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:5}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run scoreboard players remove @s heal_time 3
execute if entity @s[scores={use_carrot5=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:5}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run particle glow ~ ~1 ~ 0.2 0.2 0.2 0.01 50 force @a
execute if entity @s[scores={use_carrot5=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:5}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run playsound entity.item.pickup master @a ~ ~ ~ 1 0 0
execute if entity @s[scores={use_carrot5=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:5}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run clear @s slime_ball 1
execute if entity @s[scores={use_carrot5=1..,heal_time=..-1}] run particle glow ~ ~1 ~ 0.2 0.2 0.2 0.01 50 force @a
execute if entity @s[scores={use_carrot5=1..,heal_time=..-1}] run playsound entity.player.levelup master @a ~ ~ ~ 1 2 0
execute if entity @s[scores={use_carrot5=1..,heal_time=..-1}] run scoreboard players set @s use_carrot5 0
execute if entity @s[scores={heal_time=..-1}] run scoreboard players set @s heal_time 40



#蘇生テレポート
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}},scores={use_carrot6=1}] unless entity @a[team=thief,tag=down] run tellraw @s {"text":"\u30c0\u30a6\u30f3\u3057\u3066\u3044\u308b\u30d7\u30ec\u30a4\u30e4\u30fc\u304c\u3044\u307e\u305b\u3093\u3002","color":"red"}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}},scores={use_carrot6=1}] unless entity @a[team=thief,tag=down] run scoreboard players set @s revivetp_charge 5
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}},scores={use_carrot6=1}] if entity @a[team=thief,tag=down] run tp @s @a[team=thief,tag=down,limit=1,sort=nearest]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}},scores={use_carrot6=1}] if entity @a[team=thief,tag=down] at @p[team=thief,tag=down] run playsound entity.enderman.teleport master @a ~ ~ ~ 1 2 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}},scores={use_carrot6=1}] if entity @a[team=thief,tag=down] at @p[team=thief,tag=down] run particle witch ~ ~1 ~ 0.2 0.2 0.2 1 100 force @a
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}},scores={use_carrot6=1}] if entity @a[team=thief,tag=down] at @p[team=thief,tag=down] run particle dust 1 0.25 0.85 1 ~ ~1 ~ 0.6 0.6 0.6 1 500 force @a
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}},scores={use_carrot6=1}] run scoreboard players add @s use_carrot6 1
execute if entity @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}},scores={use_carrot6=1}] run scoreboard players set @s use_carrot6 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}},scores={use_carrot6=1..,revivetp_charge=0..}] run title @s actionbar ["",{"text":"\u518d\u4f7f\u7528\u53ef\u80fd\u307e\u3067\u6b8b\u308a:"},{"score":{"name":"@s","objective":"revivetp_charge"},"color":"red"}]
execute if entity @s[scores={use_carrot6=1..}] run scoreboard players add @s use_carrot6_count 1
execute if entity @s[scores={use_carrot6=1..,use_carrot6_count=20..}] run scoreboard players remove @s revivetp_charge 1
execute if entity @s[scores={use_carrot6=1..,use_carrot6_count=20..}] run scoreboard players set @s use_carrot6_count 0
execute if entity @s[scores={use_carrot6=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run scoreboard players remove @s revivetp_charge 3
execute if entity @s[scores={use_carrot6=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run particle glow ~ ~1 ~ 0.2 0.2 0.2 0.01 50 force @a
execute if entity @s[scores={use_carrot6=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run playsound entity.item.pickup master @a ~ ~ ~ 1 0 0
execute if entity @s[scores={use_carrot6=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run clear @s slime_ball 1
execute if entity @s[scores={use_carrot6=1..,revivetp_charge=..-1}] run particle glow ~ ~1 ~ 0.2 0.2 0.2 0.01 50 force @a
execute if entity @s[scores={use_carrot6=1..,revivetp_charge=..-1}] run playsound entity.player.levelup master @a ~ ~ ~ 1 2 0
execute if entity @s[scores={use_carrot6=1..,revivetp_charge=..-1}] run scoreboard players set @s use_carrot6 0
execute if entity @s[scores={revivetp_charge=..-1}] run scoreboard players set @s revivetp_charge 50