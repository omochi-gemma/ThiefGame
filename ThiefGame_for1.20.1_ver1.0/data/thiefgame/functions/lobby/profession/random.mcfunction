function thiefgame:rng
execute if entity @s[scores={rng=0..24}] run function thiefgame:lobby/profession/ninja
execute if entity @s[scores={rng=25..49}] run function thiefgame:lobby/profession/engineer
execute if entity @s[scores={rng=50..74}] run function thiefgame:lobby/profession/psychic
execute if entity @s[scores={rng=75..99}] run function thiefgame:lobby/profession/nurse
scoreboard players reset @s rng