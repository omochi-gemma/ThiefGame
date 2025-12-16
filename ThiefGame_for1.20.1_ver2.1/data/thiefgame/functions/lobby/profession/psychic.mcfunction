tag @s remove engineer
tag @s remove ninja
tag @s remove nurse
tag @s remove avenger
tag @s remove chronomancer

tag @s add psychic
playsound ui.button.click master @a[team=thief] ~ ~ ~ 1 2 0
particle wax_on ~ ~1 ~ 0.2 0.2 0.2 0.5 100 force @a[team=thief]
tellraw @a[team=thief] ["",{"selector":"@s"},{"text":"\u306f"},{"text":"\u8d85\u80fd\u529b\u8005","color":"red"},{"text":"\u306b\u306a\u308a\u307e\u3057\u305f\u3002"}]