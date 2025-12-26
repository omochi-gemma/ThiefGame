team leave @a
effect clear @a
tag @a add in_lobby

execute as @a at @s if block ~ ~-1 ~ red_wool run team join lord @s
execute as @a at @s if block ~ ~-1 ~ blue_wool run team join thief @s
execute as @a at @s unless block ~ ~-1 ~ red_wool unless block ~ ~-1 ~ blue_wool run team join spectator @s

effect give @a instant_health 3 10 true

execute as @s[team=thief] run tellraw @s ["",{"text":"\u3042\u306a\u305f\u306f"},{"text":"\u6ce5\u68d2","color":"blue"},{"text":"\u30c1\u30fc\u30e0\u3067\u3059\u3002"}]
execute as @s[team=lord] run tellraw @s ["",{"text":"\u3042\u306a\u305f\u306f"},{"text":"\u9928\u306e\u4e3b","color":"red"},{"text":"\u30c1\u30fc\u30e0\u3067\u3059\u3002"}]
execute as @s[team=spectator] run tellraw @s ["",{"text":"\u3042\u306a\u305f\u306f"},{"text":"\u89b3\u6226","color":"yellow"},{"text":"\u30c1\u30fc\u30e0\u3067\u3059\u3002"}]

fill 80 37 43 80 50 47 glass
fill 75 50 42 85 37 42 smooth_quartz