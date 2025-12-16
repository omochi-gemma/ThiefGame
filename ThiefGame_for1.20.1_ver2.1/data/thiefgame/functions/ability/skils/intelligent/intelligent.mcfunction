#地面についたら当たり判定召喚
execute if entity @e[tag=bloodstain,tag=!nosummon_bloodstain,nbt={OnGround:true}] as @e[tag=bloodstain,tag=!nosummon_bloodstain,nbt={OnGround:true}] at @s run summon interaction ~ ~ ~ {Tags:["bloodstain_interaction"]}
execute if entity @e[tag=bloodstain,tag=!nosummon_bloodstain,nbt={OnGround:true}] as @e[tag=bloodstain,tag=!nosummon_bloodstain,nbt={OnGround:true}] at @s run tag @s add nosummon_bloodstain
#血痕が消える時に当たり判定を削除
execute if entity @e[tag=bloodstain,scores={bloodstain_lifespan=139}] as @e[tag=bloodstain,scores={bloodstain_lifespan=139}] at @s run kill @e[type=interaction,tag=bloodstain_interaction,limit=1,sort=nearest]

execute as @e[tag=bloodstain_interaction] on target at @s if entity @s[team=lord,tag=intelligent] run effect give @a[team=thief] glowing 5 0 true
execute as @e[tag=bloodstain_interaction] on target at @s if entity @s[team=lord,tag=intelligent] run effect give @s[team=lord] invisibility 5 0 true
execute as @e[tag=bloodstain_interaction] on target at @s if entity @s[team=lord,tag=intelligent] run playsound block.enchantment_table.use master @a ~ ~ ~ 1 1.2 0
execute as @e[tag=bloodstain_interaction] on target at @s if entity @s[team=lord,tag=intelligent] run particle enchant ~ ~ ~ 0.4 0.4 0.4 1 500 force @a