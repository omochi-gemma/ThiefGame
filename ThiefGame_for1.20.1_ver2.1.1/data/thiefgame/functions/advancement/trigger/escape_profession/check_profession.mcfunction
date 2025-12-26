#泥棒が脱出したら
execute if entity @s[advancements={thiefgame:achievements/thief/apprentice_thief=false}] run advancement grant @s only thiefgame:achievements/thief/apprentice_thief
#職業チェック
execute if entity @s[tag=ninja] run function thiefgame:advancement/trigger/escape_profession/ninja
execute if entity @s[tag=engineer] run function thiefgame:advancement/trigger/escape_profession/engineer
execute if entity @s[tag=psychic] run function thiefgame:advancement/trigger/escape_profession/psychic
execute if entity @s[tag=nurse] run function thiefgame:advancement/trigger/escape_profession/nurse
execute if entity @s[tag=avenger] run function thiefgame:advancement/trigger/escape_profession/avenger
execute if entity @s[tag=chronomancer] run function thiefgame:advancement/trigger/escape_profession/chronomancer
#無職だったら
execute if entity @s[tag=!ninja,tag=!engineer,tag=!psychic,tag=!nurse,tag=!avenger,tag=!chronomancer,advancements={thiefgame:achievements/thief/jobless_professional=false}] run advancement grant @s only thiefgame:achievements/thief/jobless_professional
#職業進捗を全て達成したら
execute if entity @s[advancements={thiefgame:achievements/thief/eggplant_style_ninjutsu=true}] if entity @s[advancements={thiefgame:achievements/thief/chief_engineer=true}] if entity @s[advancements={thiefgame:achievements/thief/foresight=true}] if entity @s[advancements={thiefgame:achievements/thief/head_nurse=true}] if entity @s[advancements={thiefgame:achievements/thief/hatred_power=true}] if entity @s[advancements={thiefgame:achievements/thief/chronomancer=true}] run advancement grant @s only thiefgame:achievements/thief/thief_master
#緊急脱出装置で脱出したら(y=60..70だったら)
execute if predicate y60_check run advancement grant @s only thiefgame:achievements/thief/third_option
#脱出可能になって40秒以内に脱出したら
execute if entity @e[type=armor_stand,tag=rng,tag=area4,scores={adv_on_time_leave=..800}] run advancement grant @s only thiefgame:achievements/thief/on_time_leave
#一度も死なずに脱出したら
execute if entity @s[tag=!adv_death] run advancement grant @s only thiefgame:achievements/thief/indomitable_spirit
#一度もダウンせずに脱出したら
execute if entity @s[tag=!adv_down] run advancement grant @s only thiefgame:achievements/thief/model_thief
#一度もダメージを受けずに脱出したら
execute if entity @s[tag=!adv_damage] run advancement grant @s only thiefgame:achievements/thief/perfect_game
#無職で一度もダメージを受けずに脱出したら
execute if entity @s[tag=!adv_damage,tag=!ninja,tag=!engineer,tag=!psychic,tag=!nurse,tag=!avenger,tag=!chronomancer] run advancement grant @s only thiefgame:achievements/thief/master_thief


#進捗トリガー関連のタグをリセット
tag @s remove adv_death
tag @s remove adv_down
tag @s remove adv_damage