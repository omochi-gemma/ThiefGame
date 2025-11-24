#ドアブロック配置interactionを全て削除
kill @e[type=interaction,tag=place_interaction]
#ドアブロック破壊interactionを全て削除
kill @e[type=interaction,tag=break_interaction]

#バリアブロックを破壊
function thiefgame:furniture/break_allbarrierblock

#ドアブロック家具とそのinteractionを設置
##本館
###1階
tp @e[tag=sofa1] -27.9375 37.5 159.125
summon interaction -27.9375 38.5 159.125 {Tags:["place_interaction","sofa1_place_interaction"],width:1.0f,height:1.0f}