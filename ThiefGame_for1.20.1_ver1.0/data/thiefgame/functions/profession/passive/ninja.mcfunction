execute if predicate is_sneaking run effect give @s speed 1 9 true
execute unless block ~ ~1 ~ #thiefgame:crawl run effect give @s speed 1 9 true
execute unless predicate is_sneaking run execute if block ~ ~1 ~ #thiefgame:crawl run effect clear @s speed