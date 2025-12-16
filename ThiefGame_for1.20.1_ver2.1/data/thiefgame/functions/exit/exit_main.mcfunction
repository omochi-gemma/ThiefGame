#対応する鍵を持って対応するシュルカーの上でスニークする
##東出口
###赤
execute as @a[team=thief,nbt={SelectedItem:{id:"minecraft:gold_ingot",tag:{CustomModelData:1}}}] at @s if block ~ ~-1 ~ red_shulker_box if predicate is_sneaking run function thiefgame:exit/east_exit/red_unlock
###青
execute as @a[team=thief,nbt={SelectedItem:{id:"minecraft:gold_ingot",tag:{CustomModelData:2}}}] at @s if block ~ ~-1 ~ blue_shulker_box if predicate is_sneaking run function thiefgame:exit/east_exit/blue_unlock
##西出口
###黄
execute as @a[team=thief,nbt={SelectedItem:{id:"minecraft:gold_ingot",tag:{CustomModelData:3}}}] at @s if block ~ ~-1 ~ yellow_shulker_box if predicate is_sneaking run function thiefgame:exit/west_exit/yellow_unlock
###緑
execute as @a[team=thief,nbt={SelectedItem:{id:"minecraft:gold_ingot",tag:{CustomModelData:4}}}] at @s if block ~ ~-1 ~ green_shulker_box if predicate is_sneaking run function thiefgame:exit/west_exit/green_unlock


#開錠を検知
execute if entity @e[type=block_display,tag=west_exit_close,scores={yellow_unlocking_count=301,green_unlocking_count=301}] run function thiefgame:exit/unlocking/west_exit
execute if entity @e[type=block_display,tag=east_exit_close,scores={red_unlocking_count=301,blue_unlocking_count=301}] run function thiefgame:exit/unlocking/east_exit