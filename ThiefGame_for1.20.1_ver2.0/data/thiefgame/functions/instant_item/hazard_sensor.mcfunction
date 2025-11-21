#危機管理センサー
execute if entity @s[nbt={Inventory:[{id:"minecraft:gunpowder",Slot:9b,tag:{CustomModelData:1}}]}] if entity @a[team=lord,distance=..30] run scoreboard players add @s hazard_sensor_count 1

execute if entity @s[scores={hazard_sensor_count=4},nbt={Inventory:[{id:"minecraft:gunpowder",Slot:9b,tag:{CustomModelData:1}}]}] if entity @a[team=lord,distance=..10] run playsound block.note_block.bit master @s ~ ~ ~ 1 1.8 0
execute if entity @s[scores={hazard_sensor_count=8},nbt={Inventory:[{id:"minecraft:gunpowder",Slot:9b,tag:{CustomModelData:1}}]}] if entity @a[team=lord,distance=..10] run playsound block.note_block.bit master @s ~ ~ ~ 1 1.8 0
execute if entity @s[scores={hazard_sensor_count=12},nbt={Inventory:[{id:"minecraft:gunpowder",Slot:9b,tag:{CustomModelData:1}}]}] if entity @a[team=lord,distance=..10] run playsound block.note_block.bit master @s ~ ~ ~ 1 1.8 0
execute if entity @s[scores={hazard_sensor_count=16},nbt={Inventory:[{id:"minecraft:gunpowder",Slot:9b,tag:{CustomModelData:1}}]}] if entity @a[team=lord,distance=..10] run playsound block.note_block.bit master @s ~ ~ ~ 1 1.8 0
execute if entity @s[scores={hazard_sensor_count=20},nbt={Inventory:[{id:"minecraft:gunpowder",Slot:9b,tag:{CustomModelData:1}}]}] if entity @a[team=lord,distance=..10] run playsound block.note_block.bit master @s ~ ~ ~ 1 1.8 0

execute if entity @s[scores={hazard_sensor_count=10},nbt={Inventory:[{id:"minecraft:gunpowder",Slot:9b,tag:{CustomModelData:1}}]}] if entity @a[team=lord,distance=11..20] run playsound block.note_block.bit master @s ~ ~ ~ 1 1.2 0
execute if entity @s[scores={hazard_sensor_count=20},nbt={Inventory:[{id:"minecraft:gunpowder",Slot:9b,tag:{CustomModelData:1}}]}] if entity @a[team=lord,distance=11..20] run playsound block.note_block.bit master @s ~ ~ ~ 1 1.2 0

execute if entity @s[scores={hazard_sensor_count=20},nbt={Inventory:[{id:"minecraft:gunpowder",Slot:9b,tag:{CustomModelData:1}}]}] if entity @a[team=lord,distance=21..30] run playsound block.note_block.bit master @s ~ ~ ~ 1 0.8 0


execute if entity @s[scores={hazard_sensor_count=20..},nbt={Inventory:[{id:"minecraft:gunpowder",Slot:9b,tag:{CustomModelData:1}}]}] if entity @a[team=lord,distance=..30] run scoreboard players set @s hazard_sensor_count 0