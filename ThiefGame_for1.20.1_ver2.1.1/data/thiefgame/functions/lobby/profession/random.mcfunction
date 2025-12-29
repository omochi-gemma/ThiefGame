function thiefgame:rng/rng

execute if entity @a[tag=ninja] if entity @s[scores={rng=0..15}] run tellraw @s {"text": "選択済みの職業が選ばれたため失敗しました","color": "red"}
execute unless entity @a[tag=ninja] if entity @s[scores={rng=0..15}] run function thiefgame:lobby/profession/ninja

execute if entity @a[tag=engineer] if entity @s[scores={rng=16..31}] run tellraw @s {"text": "選択済みの職業が選ばれたため失敗しました","color": "red"}
execute unless entity @a[tag=engineer] if entity @s[scores={rng=16..31}] run function thiefgame:lobby/profession/engineer

execute if entity @a[tag=psychic] if entity @s[scores={rng=32..47}] run tellraw @s {"text": "選択済みの職業が選ばれたため失敗しました","color": "red"}
execute unless entity @a[tag=psychic] if entity @s[scores={rng=32..47}] run function thiefgame:lobby/profession/psychic

execute if entity @a[tag=nurse] if entity @s[scores={rng=48..65}] run tellraw @s {"text": "選択済みの職業が選ばれたため失敗しました","color": "red"}
execute unless entity @a[tag=nurse] if entity @s[scores={rng=48..65}] run function thiefgame:lobby/profession/nurse

execute if entity @a[tag=avenger] if entity @s[scores={rng=66..82}] run tellraw @s {"text": "選択済みの職業が選ばれたため失敗しました","color": "red"}
execute unless entity @a[tag=avenger] if entity @s[scores={rng=66..82}] run function thiefgame:lobby/profession/avenger

execute if entity @a[tag=chronomancer] if entity @s[scores={rng=83..99}] run tellraw @s {"text": "選択済みの職業が選ばれたため失敗しました","color": "red"}
execute unless entity @a[tag=chronomancer] if entity @s[scores={rng=83..99}] run function thiefgame:lobby/profession/chronomancer

scoreboard players reset @s rng