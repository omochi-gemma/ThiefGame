#何も持っていないときに復讐心を表示
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7}}}] run execute unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}}] run title @s actionbar ["",{"text":"\u5fa9\u8b90\u5fc3:","bold":true,"color":"dark_red"},{"score":{"name":"@s","objective":"revenge"},"color":"red"}]


# 復讐心による強化
effect give @s[scores={revenge=5..},tag=!down] jump_boost 1 1 true

effect give @s[scores={revenge=10..},tag=!down] speed 1 0 true

effect clear @s[scores={revenge=..14}] regeneration
effect give @s[scores={revenge=15..},tag=!down] resistance 1 0 true
effect give @s[scores={revenge=15..},tag=!down] regeneration infinite 0 true
effect clear @s[scores={revenge=15..},tag=down] regeneration