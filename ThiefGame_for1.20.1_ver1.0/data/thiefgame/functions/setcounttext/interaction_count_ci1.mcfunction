execute if entity @s[scores={rclick_count=..0}] run data merge entity @e[limit=1,type=text_display,tag=ct1] {text:'{"text":"0","color":"white"}'}
execute if entity @s[scores={rclick_count=1}] run data merge entity @e[limit=1,type=text_display,tag=ct1] {text:'{"text":"1","color":"white"}'}
execute if entity @s[scores={rclick_count=2}] run data merge entity @e[limit=1,type=text_display,tag=ct1] {text:'{"text":"2","color":"white"}'}
execute if entity @s[scores={rclick_count=3}] run data merge entity @e[limit=1,type=text_display,tag=ct1] {text:'{"text":"3","color":"white"}'}
execute if entity @s[scores={rclick_count=4}] run data merge entity @e[limit=1,type=text_display,tag=ct1] {text:'{"text":"4","color":"white"}'}
execute if entity @s[scores={rclick_count=5}] run data merge entity @e[limit=1,type=text_display,tag=ct1] {text:'{"text":"5","color":"white"}'}
execute if entity @s[scores={rclick_count=6}] run data merge entity @e[limit=1,type=text_display,tag=ct1] {text:'{"text":"6","color":"white"}'}
execute if entity @s[scores={rclick_count=7}] run data merge entity @e[limit=1,type=text_display,tag=ct1] {text:'{"text":"7","color":"white"}'}
execute if entity @s[scores={rclick_count=8}] run data merge entity @e[limit=1,type=text_display,tag=ct1] {text:'{"text":"8","color":"white"}'}
execute if entity @s[scores={rclick_count=9}] run data merge entity @e[limit=1,type=text_display,tag=ct1] {text:'{"text":"9","color":"white"}'}
execute if entity @s[scores={rclick_count=10..}] run scoreboard players set @s rclick_count 0