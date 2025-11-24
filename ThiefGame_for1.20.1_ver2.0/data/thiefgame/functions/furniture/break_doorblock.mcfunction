#館の主が右クリックしたらスコアを1上昇
execute on target at @s if entity @s[team=lord] run scoreboard players add @e[type=interaction,tag=break_interaction,limit=1,sort=nearest] break_blocking_door 1
execute on target at @s if entity @s[team=lord] run playsound block.wooden_door.close master @a ~ ~ ~ 1 0.5 0
#泥棒が右クリックしたらスコアを10上昇
execute on target at @s if entity @s[team=thief] run scoreboard players add @e[type=interaction,tag=break_interaction,limit=1,sort=nearest] break_blocking_door 10


#スコアが10になったら自身のtagをチェック
execute if entity @s[scores={break_blocking_door=10..}] at @s run function thiefgame:furniture/break_blocking_door/check_tags