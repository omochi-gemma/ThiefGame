#40秒以内に脱出用のカウント
execute if entity @e[type=armor_stand,tag=rng,tag=area4] run scoreboard players add @e[type=armor_stand,tag=area4,scores={adv_on_time_leave=..800}] adv_on_time_leave 1

#茄子流忍法の巻物を持っている人の近くに館の主がいたら
execute if entity @a[tag=ninja] as @a[team=thief,tag=ninja,nbt={SelectedItem:{id:"minecraft:red_dye",tag:{CustomModelData:1}}}] at @s if entity @a[team=lord,distance=..1] run advancement grant @s only thiefgame:achievements/thief/shinobi

#看護師が10回以上蘇生したら
execute if entity @a[tag=nurse] as @a[team=thief,tag=nurse,scores={adv_troublesome=10..}] run advancement grant @s only thiefgame:achievements/thief/troublesome

#復讐者の復讐心が20以上になったら
execute if entity @a[tag=avenger] as @a[team=thief,tag=avenger,scores={revenge=20..}] run advancement grant @s only thiefgame:achievements/thief/time_for_revenge

#時間停止中、時間魔術師の近くに館の主がいたら
execute if entity @a[tag=chronomancer] as @a[team=thief,tag=chronomancer] at @s if entity @e[type=armor_stand,tag=rng,tag=timestop] if entity @a[team=lord,distance=..1] run advancement grant @s only thiefgame:achievements/thief/scary_face