function thiefgame:rng
execute if entity @s[scores={rng=0..15}] run function thiefgame:lobby/profession/ninja
execute if entity @s[scores={rng=16..31}] run function thiefgame:lobby/profession/engineer
execute if entity @s[scores={rng=32..47}] run function thiefgame:lobby/profession/psychic
execute if entity @s[scores={rng=48..65}] run function thiefgame:lobby/profession/nurse
execute if entity @s[scores={rng=66..82}] run function thiefgame:lobby/profession/avenger
execute if entity @s[scores={rng=83..99}] run function thiefgame:lobby/profession/chronomancer
scoreboard players reset @s rng