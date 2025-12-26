#エリア開放時間と比較
execute unless entity @s[tag=area2] if score @s timer = @s area2_time run function thiefgame:area/unlock/area2
execute unless entity @s[tag=area3] if score @s timer = @s area3_time run function thiefgame:area/unlock/area3
execute unless entity @s[tag=area4] if score @s timer = @s area4_time run function thiefgame:area/unlock/area4