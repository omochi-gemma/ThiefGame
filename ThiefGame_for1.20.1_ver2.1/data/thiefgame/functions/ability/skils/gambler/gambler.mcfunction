#博徒
#乱数生成
execute if entity @s[scores={gamble_count=..0}] run function thiefgame:rng/rng
execute if entity @s[scores={gamble_count=..0}] store result score @s gamble_power run scoreboard players get @s rng
execute if entity @s[scores={gamble_count=..0}] run function thiefgame:rng/rng2
execute if entity @s[scores={gamble_count=..0}] store result score @s gamble_count run scoreboard players get @s rng

#攻撃力を設定
effect clear @s strength
effect give @s[scores={gamble_power=90..99}] strength 1 7 true
effect give @s[scores={gamble_power=80..89}] strength 1 6 true
effect give @s[scores={gamble_power=70..79}] strength 1 5 true
effect give @s[scores={gamble_power=60..69}] strength 1 4 true
effect give @s[scores={gamble_power=50..59}] strength 1 3 true
effect give @s[scores={gamble_power=40..49}] strength 1 2 true
effect give @s[scores={gamble_power=30..39}] strength 1 1 true
effect give @s[scores={gamble_power=20..29}] strength 1 0 true
#gamble_powerが10~19のとき、エフェクトは無し
#gamble_powerが0~9以上のとき、相手を回復させる


#攻撃力に応じたパーティクルを表示
execute if entity @s[scores={gamble_power=90..99}] anchored eyes run particle dust 0.278 0 0 0.3 ^ ^ ^1 0.001 0.001 0.001 0.1 5 force @a
execute if entity @s[scores={gamble_power=80..89}] anchored eyes run particle dust 0.369 0 0 0.3 ^ ^ ^1 0.001 0.001 0.001 0.1 5 force @a
execute if entity @s[scores={gamble_power=70..79}] anchored eyes run particle dust 0.678 0 0 0.3 ^ ^ ^1 0.001 0.001 0.001 0.1 5 force @a
execute if entity @s[scores={gamble_power=60..69}] anchored eyes run particle dust 0.749 0 0 0.3 ^ ^ ^1 0.001 0.001 0.001 0.1 5 force @a
execute if entity @s[scores={gamble_power=50..59}] anchored eyes run particle dust 0.976 0.294 0 0.3 ^ ^ ^1 0.001 0.001 0.001 0.1 5 force @a
execute if entity @s[scores={gamble_power=40..49}] anchored eyes run particle dust 0.945 0.565 0 0.3 ^ ^ ^1 0.001 0.001 0.001 0.1 5 force @a
execute if entity @s[scores={gamble_power=30..39}] anchored eyes run particle dust 0.925 0.769 0 0.3 ^ ^ ^1 0.001 0.001 0.001 0.1 5 force @a
execute if entity @s[scores={gamble_power=20..29}] anchored eyes run particle dust 1 0.996 0.678 0.3 ^ ^ ^1 0.001 0.001 0.001 0.1 5 force @a
execute if entity @s[scores={gamble_power=10..19}] anchored eyes run particle dust 0.816 1 0.604 0.3 ^ ^ ^1 0.001 0.001 0.001 0.1 5 force @a
execute if entity @s[scores={gamble_power=0..9}] anchored eyes run particle dust 0.643 0.996 0.31 0.3 ^ ^ ^1 0.001 0.001 0.001 0.1 5 force @a

#カウントを減少
scoreboard players remove @s gamble_count 1


#スロット
execute if entity @a[team=thief,tag=slot_target] run scoreboard players add @s slot_count 1
execute if entity @s[scores={slot_count=1..}] run function thiefgame:ability/skils/gambler/title/count_check
execute if entity @s[scores={slot_count=100}] run function thiefgame:ability/skils/gambler/result/score_check