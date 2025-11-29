#月の砂時計
##時間が停止する=timerにtimestopが付く
##停止時間が設定されていれば減少
scoreboard players remove @s[scores={timestop_count=0..}] timestop_count 1
function thiefgame:profession/skils/chronomancer/moon_hourglass/timestop_sound
execute if entity @e[tag=timestop] run function thiefgame:profession/skils/chronomancer/moon_hourglass/timestop_main
execute if entity @s[scores={timestop_count=0}] run function thiefgame:profession/skils/chronomancer/moon_hourglass/end_timestop
#演出
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}},scores={use_carrot9=1}] run playsound block.bell.use master @a ~ ~ ~ 1 0 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}},scores={use_carrot9=1}] run particle firework ~ ~1 ~ 0.8 0.2 0.8 0.5 70 force @a
#処理
##使用回数を記録
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}},scores={use_carrot9=1}] run scoreboard players add @s moon_hourglass_usecount 1
##timestopを付与
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}},scores={use_carrot9=1}] run tag @e[type=armor_stand,tag=rng,tag=timer] add timestop
#使用回数に応じて停止時間を設定
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}},scores={use_carrot9=1}] run function thiefgame:profession/skils/chronomancer/moon_hourglass/set_timestopcount
#処理を終了
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}},scores={use_carrot9=1}] run scoreboard players add @s use_carrot9 1
#無関係の人はリセット
execute if entity @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}},scores={use_carrot9=1}] run scoreboard players set @s use_carrot9 0
#クールタイム表示
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}},scores={use_carrot9=1..,moon_hourglass_time=0..}] run title @s actionbar ["",{"text":"\u518d\u4f7f\u7528\u53ef\u80fd\u307e\u3067\u6b8b\u308a:"},{"score":{"name":"@s","objective":"moon_hourglass_time"},"color":"red"}]
#クールタイム処理
execute if entity @s[scores={use_carrot9=1..}] run scoreboard players add @s use_carrot9_count 1
execute if entity @s[scores={use_carrot9=1..}] if entity @s[tag=chronomancer,tag=!in_lobby,nbt={SelectedItem:{id:"minecraft:red_dye",tag:{CustomModelData:2}}},scores={sun_pocket_watch_time=0..},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run scoreboard players add @s use_carrot9_count 1
execute if entity @s[scores={use_carrot9=1..,use_carrot9_count=20..}] run scoreboard players remove @s moon_hourglass_time 1
execute if entity @s[scores={use_carrot9=1..,use_carrot9_count=20..}] run scoreboard players set @s use_carrot9_count 0
##クールタイム回復玉
execute if entity @s[scores={use_carrot9=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run scoreboard players remove @s moon_hourglass_time 3
execute if entity @s[scores={use_carrot9=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run particle glow ~ ~1 ~ 0.2 0.2 0.2 0.01 50 force @a
execute if entity @s[scores={use_carrot9=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run playsound entity.item.pickup master @a ~ ~ ~ 1 0 0
execute if entity @s[scores={use_carrot9=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run clear @s slime_ball 1
#クールタイム回復処理
execute if entity @s[scores={use_carrot9=1..,moon_hourglass_time=..-1}] run particle glow ~ ~1 ~ 0.2 0.2 0.2 0.01 50 force @a
execute if entity @s[scores={use_carrot9=1..,moon_hourglass_time=..-1}] run playsound entity.player.levelup master @a ~ ~ ~ 1 2 0
execute if entity @s[scores={use_carrot9=1..,moon_hourglass_time=..-1}] run scoreboard players set @s use_carrot9 0
execute if entity @s[scores={moon_hourglass_time=..-1}] run scoreboard players set @s moon_hourglass_time 30


#太陽の懐中時計
execute if entity @s[tag=chronomancer,tag=!in_lobby,nbt={SelectedItem:{id:"minecraft:red_dye",tag:{CustomModelData:2}}},scores={sun_pocket_watch_time=0..},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run effect give @a speed 1 1 true
execute if entity @s[tag=chronomancer,tag=!in_lobby,nbt={SelectedItem:{id:"minecraft:red_dye",tag:{CustomModelData:2}}},scores={sun_pocket_watch_time=0..},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] at @a run particle wax_on ~ ~1 ~ 0.2 0.2 0.2 1 5 force @a
execute if entity @s[tag=chronomancer,nbt=!{SelectedItem:{id:"minecraft:red_dye",tag:{CustomModelData:2}}}] run effect clear @a speed

execute as @a[tag=chronomancer,tag=!in_lobby,nbt={SelectedItem:{id:"minecraft:red_dye",tag:{CustomModelData:2}}},scores={sun_pocket_watch_time=0..}] run title @s actionbar ["",{"text":"\u6b8b\u308a\u4f7f\u7528\u53ef\u80fd\u6642\u9593:"},{"score":{"name":"@s","objective":"sun_pocket_watch_time"},"color":"red"}]

scoreboard players add @a[tag=chronomancer,tag=!in_lobby,nbt={SelectedItem:{id:"minecraft:red_dye",tag:{CustomModelData:2}}},scores={sun_pocket_watch_time=0..},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] sun_pocket_watch_count 1
scoreboard players remove @a[tag=chronomancer,tag=!in_lobby,nbt={SelectedItem:{id:"minecraft:red_dye",tag:{CustomModelData:2}}},scores={sun_pocket_watch_count=20..},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] sun_pocket_watch_time 1
scoreboard players set @a[tag=chronomancer,tag=!in_lobby,nbt={SelectedItem:{id:"minecraft:red_dye",tag:{CustomModelData:2}}},scores={sun_pocket_watch_count=20..},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] sun_pocket_watch_count 0

execute if entity @s[tag=chronomancer,nbt={SelectedItem:{id:"minecraft:red_dye",tag:{CustomModelData:2}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run scoreboard players add @s sun_pocket_watch_time 3
execute if entity @s[tag=chronomancer,nbt={SelectedItem:{id:"minecraft:red_dye",tag:{CustomModelData:2}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run particle glow ~ ~1 ~ 0.2 0.2 0.2 0.01 50 force @a
execute if entity @s[tag=chronomancer,nbt={SelectedItem:{id:"minecraft:red_dye",tag:{CustomModelData:2}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run playsound entity.item.pickup master @a ~ ~ ~ 1 0 0
execute if entity @s[tag=chronomancer,nbt={SelectedItem:{id:"minecraft:red_dye",tag:{CustomModelData:2}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{CustomModelData:1}}]}] run clear @s slime_ball 1