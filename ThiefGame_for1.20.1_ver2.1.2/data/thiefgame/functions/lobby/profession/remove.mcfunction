# 無職になる
tag @s remove ninja
tag @s remove engineer
tag @s remove psychic
tag @s remove nurse
tag @s remove avenger
tag @s remove chronomancer

playsound ui.button.click master @a[team=thief] ~ ~ ~ 1 2 0
particle wax_off ~ ~1 ~ 0.2 0.2 0.2 0.5 100 force @a[team=thief]
tellraw @a[team=thief] [{"selector": "@s"},{"text": "は","color": "white"},{"text": "無職","color": "red"},{"text": "になりました。","color": "white"}]