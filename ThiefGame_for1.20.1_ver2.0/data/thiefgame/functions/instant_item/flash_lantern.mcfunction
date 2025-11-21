#フラッシュランタン
execute if entity @s[team=thief,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:1}}},scores={use_fungs1=1}] if entity @a[team=lord,distance=..7] run advancement grant @a[team=lord,distance=..7] only thiefgame:lord_attack
execute if entity @s[team=thief,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:1}}},scores={use_fungs1=1}] run playsound block.beacon.power_select master @a ~ ~ ~ 1 2 0
execute if entity @s[team=thief,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:1}}},scores={use_fungs1=1}] run particle minecraft:flash ~ ~ ~ 1.6 1.6 1.6 0.0001 7 force @a
execute if entity @s[team=thief,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:1}}},scores={use_fungs1=1}] run clear @s warped_fungus_on_a_stick{CustomModelData:1} 1

execute if entity @s[scores={use_fungs1=1..}] run scoreboard players set @s use_fungs1 0