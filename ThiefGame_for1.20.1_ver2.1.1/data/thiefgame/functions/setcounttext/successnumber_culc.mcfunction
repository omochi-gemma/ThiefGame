#各interactionが0~9の範囲で乱数生成
function thiefgame:rng/number_rng

#各interactionの乱数値をsuccess_numberにコピー
execute store result score @s success_number run scoreboard players get @s rng