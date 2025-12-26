# 無能になる
tag @s remove intelligent
tag @s remove rush_forward
tag @s remove adversity
tag @s remove gambler

playsound ui.button.click master @a[team=lord] ~ ~ ~ 1 2 0
particle wax_off ~ ~1 ~ 0.2 0.2 0.2 0.5 100 force @a[team=lord]
tellraw @a[team=lord] [{"selector": "@s"},{"text": "は","color": "white"},{"text": "無能","color": "red"},{"text": "になりました。","color": "white"}]