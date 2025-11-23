function thiefgame:rng
execute if entity @s[scores={rng=0..24}] run function thiefgame:lobby/ability/intelligent
execute if entity @s[scores={rng=25..49}] run function thiefgame:lobby/ability/rush_forward
execute if entity @s[scores={rng=50..74}] run function thiefgame:lobby/ability/adversity
execute if entity @s[scores={rng=75..99}] run function thiefgame:lobby/ability/gambler
scoreboard players reset @s rng