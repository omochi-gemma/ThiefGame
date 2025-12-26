execute as @e[type=interaction,tag=intelligent_decision] on target at @s if predicate is_sneaking run function thiefgame:lobby/ability/remove
execute as @e[type=interaction,tag=intelligent_decision] on target at @s unless predicate is_sneaking run function thiefgame:lobby/ability/intelligent

execute as @e[type=interaction,tag=rush_forward_decision] on target at @s if predicate is_sneaking run function thiefgame:lobby/ability/remove
execute as @e[type=interaction,tag=rush_forward_decision] on target at @s unless predicate is_sneaking run function thiefgame:lobby/ability/rush_forward

execute as @e[type=interaction,tag=adversity_decision] on target at @s if predicate is_sneaking run function thiefgame:lobby/ability/remove
execute as @e[type=interaction,tag=adversity_decision] on target at @s unless predicate is_sneaking run function thiefgame:lobby/ability/adversity

execute as @e[type=interaction,tag=gambler_decision] on target at @s if predicate is_sneaking run function thiefgame:lobby/ability/remove
execute as @e[type=interaction,tag=gambler_decision] on target at @s unless predicate is_sneaking run function thiefgame:lobby/ability/gambler

execute as @e[type=interaction,tag=ab_random_decision] on target at @s if predicate is_sneaking run function thiefgame:lobby/ability/remove
execute as @e[type=interaction,tag=ab_random_decision] on target at @s unless predicate is_sneaking run function thiefgame:lobby/ability/random