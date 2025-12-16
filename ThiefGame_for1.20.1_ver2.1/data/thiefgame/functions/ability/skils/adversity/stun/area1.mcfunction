effect give @s slowness 10 6 true
effect give @s jump_boost 10 199 true
effect give @s blindness 10 0 true
effect give @s weakness 10 255 true
particle dust 0.376 0 0 1 ~ ~ ~ 0.6 0.6 0.6 1 500 force @a
particle dust 0.161 0 0.204 1 ~ ~ ~ 0.6 0.6 0.6 1 500 force @a
playsound item.totem.use master @a ~ ~ ~ 0.2 0 0
summon interaction ~ ~1 ~ {Tags:["attack_cooldown","ac10s"],width:1,height:1}