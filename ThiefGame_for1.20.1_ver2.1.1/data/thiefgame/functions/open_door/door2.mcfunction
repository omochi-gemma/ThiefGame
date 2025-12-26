#2階が解放されていれば開錠
execute if entity @e[type=armor_stand,tag=area2] as @e[type=interaction,sort=nearest,tag=DI2] on target at @s run playsound block.iron_door.open block @a ~ ~ ~ 1 2 0
execute if entity @e[type=armor_stand,tag=area2] as @e[type=interaction,sort=nearest,tag=DI2] on target at @s run tellraw @a {"extra": [{"selector": "@s"},{"text": "が2階の鍵を使った。"}],"text": ""}
execute if entity @e[type=armor_stand,tag=area2] as @e[type=interaction,sort=nearest,tag=DI2] on target at @s run tellraw @a[team=thief] [{"text": "[MISSION] ","color": "yellow"},{"text": "魔法のガラス","hoverEvent": {"action": "show_text","contents": "2階の中央の部屋で数字を揃えて入手"},"underlined": true,"color": "white"},{"text": "で橋を修復しよう！","color": "white"}]
execute if entity @e[type=armor_stand,tag=area2] as @e[type=interaction,sort=nearest,tag=DI2,nbt={interaction:{}}] run kill @e[type=interaction,tag=DI2]
#2階が解放されていなければアナウンス
execute unless entity @e[type=armor_stand,tag=area2] as @e[type=interaction,sort=nearest,tag=DI2] on target at @s run playsound ui.button.click master @a ~ ~ ~ 1 2 0
execute unless entity @e[type=armor_stand,tag=area2] as @e[type=interaction,sort=nearest,tag=DI2] on target at @s run tellraw @s[team=thief] "まだその時ではないようだ"