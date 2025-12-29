execute if entity @a[tag=ninja] as @e[type=interaction,tag=ninja_decision] on target at @s unless predicate is_sneaking run tellraw @s {"text": "この職業は既に選択されています","color": "red"}
execute unless entity @a[tag=ninja] as @e[type=interaction,tag=ninja_decision] on target at @s unless predicate is_sneaking run function thiefgame:lobby/profession/ninja
execute as @e[type=interaction,tag=ninja_decision] on target at @s if predicate is_sneaking run function thiefgame:lobby/profession/remove

execute if entity @a[tag=engineer] as @e[type=interaction,tag=engineer_decision] on target at @s unless predicate is_sneaking run tellraw @s {"text": "この職業は既に選択されています","color": "red"}
execute unless entity @a[tag=engineer] as @e[type=interaction,tag=engineer_decision] on target at @s unless predicate is_sneaking run function thiefgame:lobby/profession/engineer
execute as @e[type=interaction,tag=engineer_decision] on target at @s if predicate is_sneaking run function thiefgame:lobby/profession/remove

execute if entity @a[tag=psychic] as @e[type=interaction,tag=psychic_decision] on target at @s unless predicate is_sneaking run tellraw @s {"text": "この職業は既に選択されています","color": "red"}
execute unless entity @a[tag=psychic] as @e[type=interaction,tag=psychic_decision] on target at @s unless predicate is_sneaking run function thiefgame:lobby/profession/psychic
execute as @e[type=interaction,tag=psychic_decision] on target at @s if predicate is_sneaking run function thiefgame:lobby/profession/remove

execute if entity @a[tag=nurse] as @e[type=interaction,tag=nurse_decision] on target at @s unless predicate is_sneaking run tellraw @s {"text": "この職業は既に選択されています","color": "red"}
execute unless entity @a[tag=nurse] as @e[type=interaction,tag=nurse_decision] on target at @s unless predicate is_sneaking run function thiefgame:lobby/profession/nurse
execute as @e[type=interaction,tag=nurse_decision] on target at @s if predicate is_sneaking run function thiefgame:lobby/profession/remove

execute if entity @a[tag=avenger] as @e[type=interaction,tag=avenger_decision] on target at @s unless predicate is_sneaking run tellraw @s {"text": "この職業は既に選択されています","color": "red"}
execute unless entity @a[tag=avenger] as @e[type=interaction,tag=avenger_decision] on target at @s unless predicate is_sneaking run function thiefgame:lobby/profession/avenger
execute as @e[type=interaction,tag=avenger_decision] on target at @s if predicate is_sneaking run function thiefgame:lobby/profession/remove

execute if entity @a[tag=chronomancer] as @e[type=interaction,tag=chronomancer_decision] on target at @s unless predicate is_sneaking run tellraw @s {"text": "この職業は既に選択されています","color": "red"}
execute unless entity @a[tag=chronomancer] as @e[type=interaction,tag=chronomancer_decision] on target at @s unless predicate is_sneaking run function thiefgame:lobby/profession/chronomancer
execute as @e[type=interaction,tag=chronomancer_decision] on target at @s if predicate is_sneaking run function thiefgame:lobby/profession/remove

execute as @e[type=interaction,tag=random_decision] on target at @s unless predicate is_sneaking run function thiefgame:lobby/profession/random
execute as @e[type=interaction,tag=random_decision] on target at @s if predicate is_sneaking run function thiefgame:lobby/profession/remove