tag @s remove rush_forward
tag @s remove adversity
tag @s remove gambler

tag @s add intelligent
playsound ui.button.click master @a[team=lord] ~ ~ ~ 1 2 0
particle wax_on ~ ~1 ~ 0.2 0.2 0.2 0.5 100 force @a[team=lord]
tellraw @a[team=lord] ["",{"selector":"@s"},{"text":"\u306f"},{"text":"聡明","color":"red"},{"text":"\u306b\u306a\u308a\u307e\u3057\u305f\u3002"}]