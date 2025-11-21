execute if entity @s[tag=use_sap] run scoreboard players add @s use_sap 1
execute if entity @s[tag=use_sap,scores={use_sap=60}] run effect clear @s speed
execute if entity @s[tag=use_sap,scores={use_sap=60}] run effect give @s slowness 3 3 true
execute if entity @s[tag=use_sap,scores={use_sap=60}] run advancement revoke @s only thiefgame:super_acceleration_potion
execute if entity @s[tag=use_sap,scores={use_sap=60}] run tag @s remove use_sap
execute if entity @s[scores={use_sap=60..}] run scoreboard players set @s use_sap 0