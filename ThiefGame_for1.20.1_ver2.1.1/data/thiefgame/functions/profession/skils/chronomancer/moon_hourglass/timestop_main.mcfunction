#時間停止中の処理
##館の主は停止
effect give @a[team=lord] slowness 1 6 true
effect give @a[team=lord] jump_boost 1 199 true
effect give @a[team=lord] weakness 1 255 true
execute at @a[team=lord] positioned ~ ~1 ~ run particle enchant ~ ~ ~ 0.4 0.4 0.4 1 5 force @a
execute at @a[team=lord] run particle minecraft:end_rod ~ ~ ~ 12 12 12 0.001 30 force @a
##シェーダーを適用
execute as @a[team=lord] at @s run particle minecraft:entity_effect ~ ~ ~ 0.996078431372549 0.992156862745098 0.003921568627451 1 0 force @s

##自身は透明化と移動速度上昇(パッシブスキル)
effect give @s speed 1 0 true
effect give @s invisibility 1 0 true
execute at @a[team=thief] positioned ~ ~1 ~ run particle enchant ~ ~ ~ 0.4 0.4 0.4 1 5 force @a[team=thief]
execute at @a[team=thief] run particle minecraft:end_rod ~ ~ ~ 12 12 12 0.001 30 force @a
##シェーダーを適用
execute as @a[team=thief] at @s run particle minecraft:entity_effect ~ ~ ~ 0.996078431372549 0.992156862745098 0.003921568627451 1 0 force @s