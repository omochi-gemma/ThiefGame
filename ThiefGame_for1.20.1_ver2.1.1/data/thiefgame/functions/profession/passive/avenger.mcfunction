#何も持っていないときに復讐心を表示
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7}}}] run execute unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}}] run title @s actionbar ["",{"text":"\u5fa9\u8b90\u5fc3:","bold":true,"color":"dark_red"},{"score":{"name":"@s","objective":"revenge"},"color":"red"}]


# 復讐心による強化
effect give @s[scores={revenge=10..},tag=!down] jump_boost 1 1 true

effect give @s[scores={revenge=15..},tag=!down] speed 1 0 true

effect give @s[scores={revenge=20..},tag=!down] resistance 1 1 true
effect give @s[scores={revenge=20..},tag=!down] regeneration infinite 0 true
effect clear @s[scores={revenge=20..},tag=down] regeneration

effect give @s[scores={revenge=25..},tag=!down] invisibility 1 0 true


# 復讐心が20以上なら減少
execute if entity @s[scores={revenge=20..}] run scoreboard players add @s revenge_over_count 1
execute if entity @s[scores={revenge_over_count=1200..}] as @a[team=thief] run scoreboard players remove @a[tag=avenger] revenge 1
execute if entity @s[scores={revenge_over_count=1200..}] as @a[team=thief] run scoreboard players remove @a[tag=avenger] revenge 1
execute if entity @s[scores={revenge_over_count=1200..}] run tellraw @s {"text": "少し頭が冷えた...","color": "red"}
execute if entity @s[scores={revenge_over_count=1200..}] run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1 2 0
execute if entity @s[scores={revenge_over_count=1200..}] run particle cloud ~ ~2.2 ~ 0.2 0.001 0.2 0.001 10 force @a
execute if entity @s[scores={revenge_over_count=1200..}] run scoreboard players set @s revenge_over_count 0