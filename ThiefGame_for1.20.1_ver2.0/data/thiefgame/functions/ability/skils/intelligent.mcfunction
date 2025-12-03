execute if entity @e[tag=bloodstain] as @e[tag=bloodstain,scores={bloodstain_lifespan=1}] at @s run summon interaction ~ ~ ~ {Tags:["bloodstain_interaction"]}
execute if entity @e[tag=bloodstain] as @e[tag=bloodstain,scores={bloodstain_lifespan=2..98}] at @s run tp @e[tag=bloodstain_interaction,limit=1,sort=nearest] ~ ~ ~
execute if entity @e[tag=bloodstain] as @e[tag=bloodstain,scores={bloodstain_lifespan=99}] at @s run kill @e[tag=bloodstain_interaction,limit=1,sort=nearest]

execute as @e[tag=bloodstain_interaction] on target at @s if entity @s[team=lord,tag=intelligent] run effect give @a[team=thief] glowing 5 0 true
execute as @e[tag=bloodstain_interaction] on target at @s if entity @s[team=lord,tag=intelligent] run effect give @s[team=lord] invisibility 5 0 true
execute as @e[tag=bloodstain_interaction] on target at @s if entity @s[team=lord,tag=intelligent] run playsound block.enchantment_table.use master @a ~ ~ ~ 1 1.2 0
execute as @e[tag=bloodstain_interaction] on target at @s if entity @s[team=lord,tag=intelligent] run particle enchant ~ ~ ~ 0.4 0.4 0.4 1 500 force @a