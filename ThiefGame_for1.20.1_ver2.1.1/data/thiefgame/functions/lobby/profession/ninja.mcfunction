tag @s remove engineer
tag @s remove psychic
tag @s remove nurse
tag @s remove avenger
tag @s remove chronomancer

tag @s add ninja
playsound ui.button.click master @a[team=thief] ~ ~ ~ 1 2 0
particle wax_on ~ ~1 ~ 0.2 0.2 0.2 0.5 100 force @a[team=thief]
tellraw @a[team=thief] ["",{"selector":"@s"},{"text":"\u306f"},{"text":"\u5fcd\u8005","color":"red","clickEvent": {"action": "open_url","value": "https://github.com/omochi-gemma/ThiefGame/wiki/%E8%81%B7%E6%A5%AD#-%E5%BF%8D%E8%80%85"},"underlined": true},{"text":"\u306b\u306a\u308a\u307e\u3057\u305f\u3002"}]