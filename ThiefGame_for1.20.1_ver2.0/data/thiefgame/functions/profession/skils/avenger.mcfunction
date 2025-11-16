#無敵
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7}}},scores={use_carrot7=1}] run playsound minecraft:block.anvil.use master @s ~ ~ ~ 1 0.7 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7}}},scores={use_carrot7=1}] run particle dust 1 0.373 0.102 1 ~ ~1 ~ 0.2 0.2 0.2 1 100 force @a
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7}}},scores={use_carrot7=1}] run scoreboard players add @s adrenaline 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7}}},scores={use_carrot7=1}] run scoreboard players add @s use_carrot7 1
execute if entity @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7}}},scores={use_carrot7=1}] run scoreboard players set @s use_carrot7 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7}}},scores={use_carrot7=1..,adrenaline_time=0..}] run title @s actionbar ["",{"text":"\u518d\u4f7f\u7528\u53ef\u80fd\u307e\u3067\u6b8b\u308a:"},{"score":{"name":"@s","objective":"adrenaline_time"},"color":"red"}]
execute if entity @s[scores={use_carrot7=1..}] run scoreboard players add @s use_carrot7_count 1
execute if entity @s[scores={use_carrot7=1..,use_carrot7_count=20..}] run scoreboard players remove @s adrenaline_time 1
execute if entity @s[scores={use_carrot7=1..,use_carrot7_count=20..}] run scoreboard players set @s use_carrot7_count 0
execute if entity @s[scores={use_carrot7=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run scoreboard players remove @s adrenaline_time 3
execute if entity @s[scores={use_carrot7=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run particle glow ~ ~1 ~ 0.2 0.2 0.2 0.01 50 force @a
execute if entity @s[scores={use_carrot7=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run playsound entity.item.pickup master @a ~ ~ ~ 1 0 0
execute if entity @s[scores={use_carrot7=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run clear @s slime_ball 1
execute if entity @s[scores={use_carrot7=1..,adrenaline_time=..-1}] run particle glow ~ ~1 ~ 0.2 0.2 0.2 0.01 50 force @a
execute if entity @s[scores={use_carrot7=1..,adrenaline_time=..-1}] run playsound entity.player.levelup master @a ~ ~ ~ 1 2 0
execute if entity @s[scores={use_carrot7=1..,adrenaline_time=..-1}] run scoreboard players set @s use_carrot7 0
execute if entity @s[scores={adrenaline_time=..-1}] run scoreboard players set @s adrenaline_time 20
execute if entity @s[scores={adrenaline=1..60}] run scoreboard players add @s adrenaline 1
execute if entity @s[scores={adrenaline=1..60}] run effect give @s resistance 1 4 true
execute if entity @s[scores={adrenaline=1..60}] run particle enchanted_hit ~ ~1 ~ 0.2 0.2 0.2 0.1 10 force @a
execute if entity @s[scores={adrenaline=1..60}] run particle dust 1 0.373 0.102 0.7 ~ ~1 ~ 0.2 0.2 0.2 1 30 force @a
execute if entity @s[scores={adrenaline=61}] run effect clear @s resistance
execute if entity @s[scores={adrenaline=61}] run effect give @s instant_health 1 28 true
execute if entity @s[scores={adrenaline=61}] run effect clear @s instant_health
execute if entity @s[scores={adrenaline=61},tag=!damage] run damage @s 20
execute if entity @s[scores={adrenaline=61},tag=damage] run tag @s remove damage
execute if entity @s[scores={adrenaline=61}] run scoreboard players set @s adrenaline 0


#範囲スタン
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}},scores={use_carrot8=1}] run function thiefgame:profession/skils/avenger/wrathful_heart
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}},scores={use_carrot8=1}] run scoreboard players add @s use_carrot8 1
execute if entity @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}},scores={use_carrot8=1}] run scoreboard players set @s use_carrot8 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}},scores={use_carrot8=1..,wrathful_heart_time=0..}] run title @s actionbar ["",{"text":"\u518d\u4f7f\u7528\u53ef\u80fd\u307e\u3067\u6b8b\u308a:"},{"score":{"name":"@s","objective":"wrathful_heart_time"},"color":"red"}]
execute if entity @s[scores={use_carrot8=1..}] run scoreboard players add @s use_carrot8_count 1
execute if entity @s[scores={use_carrot8=1..,use_carrot8_count=20..}] run scoreboard players remove @s wrathful_heart_time 1
execute if entity @s[scores={use_carrot8=1..,use_carrot8_count=20..}] run scoreboard players set @s use_carrot8_count 0
execute if entity @s[scores={use_carrot8=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run scoreboard players remove @s wrathful_heart_time 3
execute if entity @s[scores={use_carrot8=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run particle glow ~ ~1 ~ 0.2 0.2 0.2 0.01 50 force @a
execute if entity @s[scores={use_carrot8=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run playsound entity.item.pickup master @a ~ ~ ~ 1 0 0
execute if entity @s[scores={use_carrot8=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run clear @s slime_ball 1
execute if entity @s[scores={use_carrot8=1..,wrathful_heart_time=..-1}] run particle glow ~ ~1 ~ 0.2 0.2 0.2 0.01 50 force @a
execute if entity @s[scores={use_carrot8=1..,wrathful_heart_time=..-1}] run playsound entity.player.levelup master @a ~ ~ ~ 1 2 0
execute if entity @s[scores={use_carrot8=1..,wrathful_heart_time=..-1}] run scoreboard players set @s use_carrot8 0
execute if entity @s[scores={wrathful_heart_time=..-1}] run scoreboard players set @s wrathful_heart_time 60