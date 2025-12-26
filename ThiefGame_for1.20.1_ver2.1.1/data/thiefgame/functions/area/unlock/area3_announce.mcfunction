#魔法のガラスを置いたら全体通知
tellraw @a {"extra": [{"selector": "@s"},{"text": "が橋を修復した。"}],"text": ""}
tellraw @a[team=thief] [{"text": "[MISSION] ","color": "yellow"},{"text": "別館で鍵を探そう！","color": "white"}]

#進捗リセット
advancement revoke @s only thiefgame:system/place_magicglass