#猛進
#常に跳躍力上昇を付けておく
effect give @s jump_boost 2 1 true

execute if predicate is_sneaking if entity @s[scores={jump=1..},nbt={OnGround:true}] run effect give @s speed 1 75 true
execute if predicate is_sneaking if entity @s[scores={jump=1..},nbt={OnGround:true}] run particle explosion ~ ~ ~ 0.6 0.6 0.6 1 10 force @a
execute if predicate is_sneaking if entity @s[scores={jump=1..},nbt={OnGround:true}] run playsound entity.generic.explode master @a ~ ~ ~ 1 2 0
execute if predicate is_sneaking if entity @s[scores={jump=1..},nbt={OnGround:true}] as @a[team=thief] at @s if entity @a[team=lord,tag=rush_forward,distance=..2.5] run damage @s 10
execute if predicate is_sneaking if entity @s[scores={jump=1..},nbt={OnGround:true}] as @a[team=thief] at @s if entity @a[team=lord,tag=rush_forward,distance=..2.5] run effect give @s slowness 1 1 true
execute if entity @s[scores={jump=1..},nbt={OnGround:true}] run scoreboard players set @s jump 0