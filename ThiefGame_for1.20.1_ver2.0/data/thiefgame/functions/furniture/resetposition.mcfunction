#ドアブロック配置interactionを全て削除
kill @e[type=interaction,tag=place_interaction]
#ドアブロック破壊interactionを全て削除
kill @e[type=interaction,tag=break_interaction]

#バリアブロックを破壊
function thiefgame:furniture/break_allbarrierblock

#ドアブロック家具とそのinteractionを設置
##本館
###1階
####ソファ1
tp @e[tag=sofa1_1] -27.9375 37.5 159.125
summon interaction -27.9375 38.5 159.125 {Tags:["place_interaction","sofa1_1_place_interaction"],width:1.0f,height:1.0f}
####ソファ2
tp @e[tag=sofa1_2] -23.0 37.5 145.0
summon interaction -23.0 38.5 145.0 {Tags:["place_interaction","sofa1_2_place_interaction"],width:1.0f,height:1.0f}
####棚1
tp @e[tag=shelf1_1] -34.4375 38.4375 148.9375
summon interaction -34.4375 38 147.4375 {Tags:["place_interaction","shelf1_1_place_interaction"],width:1.0f,height:1.0f}
####テーブル1
tp @e[tag=table1_1] 18.5 38.0 144.0
summon interaction 18.5 38.0 144.0 {Tags:["place_interaction","table1_1_place_interaction"],width:1.0f,height:1.0f}
###2階
####ソファ1
tp @e[tag=sofa2_1] 24.0625 43.5 151.0
summon interaction 24.0625 44.5 151.0 {Tags:["place_interaction","sofa2_1_place_interaction"],width:1.0f,height:1.0f}
####ソファ2
tp @e[tag=sofa2_2] 24.0 43.5 154.0
summon interaction 24.0 44.5 154.0 {Tags:["place_interaction","sofa2_2_place_interaction"],width:1.0f,height:1.0f}
####ソファ3
tp @e[tag=sofa2_3] -25.0 43.5 151.0
summon interaction -25.0 44.5 151.0 {Tags:["place_interaction","sofa2_3_place_interaction"],width:1.0f,height:1.0f}
####ソファ4
tp @e[tag=sofa2_4] -25.0 43.5 155.0
summon interaction -25.0 44.5 155.0 {Tags:["place_interaction","sofa2_4_place_interaction"],width:1.0f,height:1.0f}
####棚1
tp @e[tag=shelf2_1] -1.0625 44.5 143.0
summon interaction -2.5625 44 143.0 {Tags:["place_interaction","shelf2_1_place_interaction"],width:1.0f,height:1.0f}
####棚2
tp @e[tag=shelf2_2] -11.9375 44.5 143.0
summon interaction -10.4375 44 143.0 {Tags:["place_interaction","shelf2_2_place_interaction"],width:1.0f,height:1.0f}
###3階
####ソファ1
tp @e[tag=sofa3_1] 18.0 49.5 150.5
summon interaction 18.0 50.5 150.5 {Tags:["place_interaction","sofa3_1_place_interaction"],width:1.0f,height:1.0f}
####ソファ2
tp @e[tag=sofa3_2] 18.0 49.5 154.5
summon interaction 18.0 50.5 154.5 {Tags:["place_interaction","sofa3_2_place_interaction"],width:1.0f,height:1.0f}
####ソファ3
tp @e[tag=sofa3_3] -19.0 49.5 152.5
summon interaction -19.0 50.5 152.5 {Tags:["place_interaction","sofa3_3_place_interaction"],width:1.0f,height:1.0f}
####棚1
tp @e[tag=shelf3_1] 4.9375 50.5 157.75
summon interaction 3.4375 50 157.75 {Tags:["place_interaction","shelf3_1_place_interaction"],width:1.0f,height:1.0f}
####棚2
tp @e[tag=shelf3_2] -7.9375 50.5 157.75
summon interaction -6.4375 50 157.75 {Tags:["place_interaction","shelf3_2_place_interaction"],width:1.0f,height:1.0f}
####椅子1
tp @e[tag=chair3_1] 0.0 49.75 144.5
summon interaction 0.0 50.75 144.5 {Tags:["place_interaction","chair3_1_place_interaction"],width:1.0f,height:1.0f}
####椅子2
tp @e[tag=chair3_2] -3.0 49.75 144.5
summon interaction -3.0 50.75 144.5 {Tags:["place_interaction","chair3_2_place_interaction"],width:1.0f,height:1.0f}