#乱数によって処理を分岐
#バフ
##0:相手に10ダメージ
##1:相手を発光
##2:相手の移動速度低下
##3:自身の移動速度上昇
##4:相手にテレポート
#デバフ
##5:相手の移動速度上昇
##6:自身の移動速度低下
##7:自身が再度スタン
##8:相手を全回復
##9:頭を打つ
execute if entity @s[scores={slot_rng=0}] run function thiefgame:ability/skils/gambler/result/0
execute if entity @s[scores={slot_rng=1}] run function thiefgame:ability/skils/gambler/result/1
execute if entity @s[scores={slot_rng=2}] run function thiefgame:ability/skils/gambler/result/2
execute if entity @s[scores={slot_rng=3}] run function thiefgame:ability/skils/gambler/result/3
execute if entity @s[scores={slot_rng=4}] run function thiefgame:ability/skils/gambler/result/4
execute if entity @s[scores={slot_rng=5}] run function thiefgame:ability/skils/gambler/result/5
execute if entity @s[scores={slot_rng=6}] run function thiefgame:ability/skils/gambler/result/6
execute if entity @s[scores={slot_rng=7}] run function thiefgame:ability/skils/gambler/result/7
execute if entity @s[scores={slot_rng=8}] run function thiefgame:ability/skils/gambler/result/8
execute if entity @s[scores={slot_rng=9}] run function thiefgame:ability/skils/gambler/result/9

#処理を終了
tag @a remove slot_target
scoreboard players set @s slot_count 0