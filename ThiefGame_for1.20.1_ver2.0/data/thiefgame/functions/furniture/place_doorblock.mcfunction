#右クリックしてドアをブロック
##本館
###1階
execute if entity @s[type=interaction,tag=sofa1_place_interaction] on target at @s if entity @s[team=thief] run function thiefgame:furniture/blocking_door/main_building/first_floor/sofa1