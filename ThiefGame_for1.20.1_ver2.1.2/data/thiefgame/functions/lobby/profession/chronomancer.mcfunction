tag @s remove ninja
tag @s remove engineer
tag @s remove psychic
tag @s remove nurse
tag @s remove avenger

tag @s add chronomancer
playsound ui.button.click master @a[team=thief] ~ ~ ~ 1 2 0
particle wax_on ~ ~1 ~ 0.2 0.2 0.2 0.5 100 force @a[team=thief]
tellraw @a[team=thief] ["",{"selector":"@s"},{"text":"\u306f"},{"text":"\u6642\u9593\u9b54\u8853\u5e2b","color":"red","clickEvent": {"action": "open_url","value": "https://github.com/omochi-gemma/ThiefGame/wiki/%E8%81%B7%E6%A5%AD#-%E6%99%82%E9%96%93%E9%AD%94%E8%A1%93%E5%B8%AB"},"underlined": true},{"text":"\u306b\u306a\u308a\u307e\u3057\u305f\u3002"}]