#ステータスエフェクト
effect give @s[tag=!gambler] strength infinite 4 true
effect give @s resistance infinite 5 true
effect give @s instant_health infinite 10 true
effect give @s slowness infinite 0 true 

execute if entity @e[type=interaction,tag=soul_interaction,distance=..10] run effect give @s slowness 1 0 true
execute if entity @e[type=interaction,tag=soul_interaction,distance=..10] run effect give @s weakness 1 0 true

#スキル
effect give @s hunger infinite 200 true
execute if predicate is_sneaking unless entity @s[nbt={foodLevel:10}] unless entity @s[nbt={foodLevel:9}] run effect give @s saturation 1 1 true
execute if predicate is_sneaking run effect give @s speed 5 3 true
effect give @s[nbt={foodLevel:0}] saturation 1 0 true

#ダウンへの攻撃
execute if predicate looking_down unless entity @e[type=interaction,tag=look_down,distance=..2] run summon interaction ~ ~1 ~ {Tags:["look_down"],width:1.5,height:1.5}
tp @e[type=interaction,tag=look_down] ~ ~1 ~
execute unless predicate looking_down if entity @e[type=interaction,tag=look_down,distance=..2] run kill @e[type=interaction,tag=look_down,distance=..2]

#攻撃無効化interactionを常に移動
execute at @p[team=lord] positioned ~ ~1 ~ run tp @e[tag=attack_cooldown] ~ ~ ~

#攻撃後無力化の解除
execute if entity @e[type=interaction,tag=attack_cooldown] as @e[type=interaction,tag=attack_cooldown] at @s run scoreboard players add @s attack_cooldown 1
execute if entity @e[type=interaction,tag=attack_cooldown,scores={attack_cooldown=100..}] as @e[type=interaction,tag=attack_cooldown,scores={attack_cooldown=100..}] at @s run kill @s