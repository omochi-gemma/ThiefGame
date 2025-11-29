#時間停止中の処理
##館の主は停止
effect give @a[team=lord] slowness 1 6 true
effect give @a[team=lord] jump_boost 1 199 true
effect give @a[team=lord] blindness 1 0 true
effect give @a[team=lord] weakness 1 255 true
execute at @a[team=lord] positioned ~ ~1 ~ run particle enchant ~ ~ ~ 0.4 0.4 0.4 1 5 force @a

##自身は透明化と移動速度上昇(パッシブスキル)
effect give @s speed 1 0 true
effect give @s invisibility 1 0 true
execute at @a[team=thief] positioned ~ ~1 ~ run particle enchant ~ ~ ~ 0.4 0.4 0.4 1 5 force @a[team=thief]