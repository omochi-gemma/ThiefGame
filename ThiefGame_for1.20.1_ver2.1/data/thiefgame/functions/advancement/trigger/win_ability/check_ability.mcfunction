#館の主が勝利したら
advancement grant @s only thiefgame:achievements/lord/worthy_master
#能力チェック
execute if entity @s[tag=intelligent] run function thiefgame:advancement/trigger/win_ability/intelligent
execute if entity @s[tag=rush_forward] run function thiefgame:advancement/trigger/win_ability/rush_forward
execute if entity @s[tag=adversity] run function thiefgame:advancement/trigger/win_ability/adversity
execute if entity @s[tag=gambler] run function thiefgame:advancement/trigger/win_ability/gambler
#無能だったら
execute if entity @s[tag=!intelligent,tag=!rush_forward,tag=!adversity,tag=!gambler] run advancement grant @s only thiefgame:achievements/lord/capable_incompetent
#全ての能力勝利進捗をたっせいしたら
execute if entity @s[advancements={thiefgame:achievements/lord/wisdom=true}] if entity @s[advancements={thiefgame:achievements/lord/reckless_charge=true}] if entity @s[advancements={thiefgame:achievements/lord/adversity_rise=true}] if entity @s[advancements={thiefgame:achievements/lord/gambler_luck=true}] run advancement grant @s only thiefgame:achievements/lord/lord_master
#エリア2が解放されていなかったら
execute unless entity @s[type=armor_stand,tag=area2] run advancement grant @s only thiefgame:achievements/lord/perfect_security