#聡明が存在したら処理
execute if entity @a[tag=intelligent] run effect give @s glowing 10 0 true
execute if entity @a[tag=intelligent] run tellraw @s {"text": "居場所を特定された。","color": "red"}