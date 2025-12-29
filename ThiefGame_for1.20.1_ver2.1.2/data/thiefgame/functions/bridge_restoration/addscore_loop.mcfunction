execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=0}] run fill -4 42 178 -4 42 178 brown_stained_glass replace air
execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=0}] run playsound block.glass.break block @a -3.0 42 178 0.2 2 0
execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=0}] run particle block brown_stained_glass -3.0 43 178 0.4 0.2 0.2 1 20 force @a

execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=20}] run fill -3 42 179 -4 42 179 brown_stained_glass replace air
execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=20}] run playsound block.glass.break block @a -3.0 42 179 0.2 2 0
execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=20}] run particle block brown_stained_glass -3.0 43 179 0.4 0.2 0.2 1 20 force @a

execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=30}] run fill -2 42 180 -5 42 180 brown_stained_glass replace air
execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=30}] run playsound block.glass.break block @a -3.0 42 180 0.2 2 0
execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=30}] run particle block brown_stained_glass -3.0 43 180 0.6 0.2 0.2 1 20 force @a

execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=38}] run fill -2 42 181 -5 42 181 brown_stained_glass replace air
execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=38}] run playsound block.glass.break block @a -3.0 42 181 0.2 2 0
execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=38}] run particle block brown_stained_glass -3.0 43 181 0.6 0.2 0.2 1 20 force @a

execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=44}] run fill -2 42 182 -5 42 182 brown_stained_glass replace air
execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=44}] run playsound block.glass.break block @a -3.0 42 182 0.2 2 0
execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=44}] run particle block brown_stained_glass -3.0 43 182 0.6 0.2 0.2 1 20 force @a

execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=48}] run fill -2 42 183 -5 42 183 brown_stained_glass replace air
execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=48}] run playsound block.glass.break block @a -3.0 42 183 0.2 2 0
execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=48}] run particle block brown_stained_glass -3.0 43 183 0.6 0.2 0.2 1 20 force @a

execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=50}] run fill -2 42 184 -5 42 184 brown_stained_glass replace air
execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=50}] run playsound block.glass.break block @a -3.0 42 184 0.2 2 0
execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=50}] run particle block brown_stained_glass -3.0 43 184 0.6 0.2 0.2 1 20 force @a

execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=52}] run fill -2 42 185 -5 42 185 brown_stained_glass replace air
execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=52}] run playsound block.glass.break block @a -3.0 42 185 0.2 2 0
execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=52}] run particle block brown_stained_glass -3.0 43 185 0.6 0.2 0.2 1 20 force @a

execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=54}] run fill -2 42 186 -4 42 186 brown_stained_glass replace air
execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=54}] run playsound block.glass.break block @a -3.0 42 186 0.2 2 0
execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=54}] run particle block brown_stained_glass -3.0 43 186 0.6 0.2 0.2 1 20 force @a

execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=56}] run fill -3 42 187 -3 42 187 brown_stained_glass replace air
execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=56}] run playsound block.glass.break block @a -3.0 42 187 0.2 2 0
execute if entity @e[type=armor_stand,tag=bridge,scores={bridge=56}] run particle block brown_stained_glass -3.0 43 187 0.6 0.2 0.2 1 20 force @a


scoreboard players add @s bridge 1
scoreboard players set @s[scores={bridge=57..}] bridge -1