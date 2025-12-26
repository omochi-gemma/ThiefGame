function thiefgame:rng/slot_rng
execute if entity @s[scores={slot_rng=0}] run title @s title {"text": "相手に10ダメージ","color": "green"}
execute if entity @s[scores={slot_rng=1}] run title @s title {"text": "相手を発光","color": "green"}
execute if entity @s[scores={slot_rng=2}] run title @s title {"text": "相手の移動速度低下","color": "green"}
execute if entity @s[scores={slot_rng=3}] run title @s title {"text": "自身の移動速度上昇","color": "green"}
execute if entity @s[scores={slot_rng=4}] run title @s title {"text": "相手にテレポート","color": "green"}
execute if entity @s[scores={slot_rng=5}] run title @s title {"text": "相手の移動速度上昇","color": "red"}
execute if entity @s[scores={slot_rng=6}] run title @s title {"text": "自身の移動速度低下","color": "red"}
execute if entity @s[scores={slot_rng=7}] run title @s title {"text": "自身が再度スタン","color": "red"}
execute if entity @s[scores={slot_rng=8}] run title @s title {"text": "相手を全回復","color": "red"}
execute if entity @s[scores={slot_rng=9}] run title @s title {"text": "頭を打つ","color": "red"}
playsound block.note_block.bell master @s ~ ~ ~ 1 1 0