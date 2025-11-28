playsound block.anvil.place master @a ~ ~ ~ 1 0 0
tp @s -13.5 37 161.5 180 0
tellraw @a [{"selector": "@s"},{"text": "は頭を打ったので帰った"}]

tag @s remove gimmick_hit