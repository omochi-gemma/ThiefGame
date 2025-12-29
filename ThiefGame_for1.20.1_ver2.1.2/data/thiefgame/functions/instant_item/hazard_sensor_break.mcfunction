clear @s gunpowder{CustomModelData:1} 1
playsound entity.item.break master @s ~ ~ ~ 1 1 0
tellraw @s [{"text":"危機管理センサーが壊れてしまった...。","color":"red"}]
scoreboard players set @s hazard_sensor_count 0

advancement revoke @s only thiefgame:system/hazard_sensor_break