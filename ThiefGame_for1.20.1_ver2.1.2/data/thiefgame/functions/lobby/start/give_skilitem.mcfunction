#泥棒の鍵を配布
give @a[team=thief] iron_ingot{display:{Name:'{"text":"泥棒の鍵","color":"gold"}',Lore:['{"text":"泥棒専用の鍵。","color":"light_purple"}','{"text":"館の金のチェストを開けることができる。","color":"light_purple"}']},CustomModelData:3} 1


#スキルアイテム
give @a[team=thief,tag=ninja] red_dye{display:{Name:'{"text":"茄子流忍法～透明化の術～","color":"dark_purple"}',Lore:['{"text":"持っている間透明になる。","color":"light_purple"}','{"text":" "}','[{"text":"使用可能時間:","color":"aqua"},{"text":"40秒","color":"red"}]']},CustomModelData:1} 1
give @a[team=thief,tag=ninja] snowball{display:{Name:'{"text":"煙玉","color":"dark_gray"}',Lore:['{"text":"着弾地点に煙幕を発生させる。","color":"light_purple"}','{"text":"全て使い切ると一定時間後に復活する。","color":"light_purple"}','{"text":" "}','[{"text":"復活までの時間:","color":"aqua"},{"text":"30秒","color":"red"}]']},CustomModelData:1} 3

give @a[team=thief,tag=engineer] carrot_on_a_stick{display:{Name:'{"text":"レンチ","color":"yellow"}',Lore:['{"text":"その場に地雷を設置する。","color":"light_purple"}','{"text":"館の主には見えず、触れるとスタンさせる。","color":"light_purple"}','{"text":"同時に設置できるのは2つまで。","color":"light_purple"}','{"text":" "}','[{"text":"クールタイム:","color":"aqua"},{"text":"20秒","color":"red"}]']},CustomModelData:1} 1
give @a[team=thief,tag=engineer] carrot_on_a_stick{display:{Name:'{"text":"マジカルレンチ","color":"dark_purple"}',Lore:['{"text":"スニーク右クリックでその場にワープポイントを設置する。","color":"light_purple"}','{"text":"右クリックするとワープポイントへワープする。","color":"light_purple"}','{"text":"同時に設置できるのは1つまで。","color":"light_purple"}','{"text":" "}','[{"text":"クールタイム:","color":"aqua"},{"text":"40秒","color":"red"}]']},CustomModelData:2} 1

give @a[team=thief,tag=psychic] carrot_on_a_stick{display:{Name:'{"text":"超能力者の目","color":"dark_red"}',Lore:['{"text":"視点先の館の主に発光を付与し、スタンさせる。","color":"light_purple"}','{"text":" "}','[{"text":"クールタイム:","color":"aqua"},{"text":"30秒","color":"red"}]']},CustomModelData:3} 1
give @a[team=thief,tag=psychic] carrot_on_a_stick{display:{Name:'{"text":"千里眼","color":"yellow"}',Lore:['{"text":"館の主に発光を付与する。","color":"light_purple"}','{"text":"館の主が近くにいた場合、自分にも発光が付与されてしまう。","color":"light_purple"}','{"text":" ","color":"red"}','[{"text":"クールタイム:","color":"aqua"},{"text":"40秒","color":"red"}]']},CustomModelData:4} 1

give @a[team=thief,tag=nurse] carrot_on_a_stick{display:{Name:'{"text":"医療キット","color":"red"}',Lore:['{"text":"周囲の味方の体力を回復する。","color":"light_purple"}','{"text":" ","color":"red"}','[{"text":"クールタイム:","color":"aqua"},{"text":"40秒","color":"red"}]']},CustomModelData:5} 1
give @a[team=thief,tag=nurse] carrot_on_a_stick{display:{Name:'{"text":"「119」","color":"dark_red","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"ダウン中の味方の元へ駆けつける。","color":"light_purple"}','{"text":" 「私が生きている限り、死人は出ない！」","color":"light_purple","bold":true}','{"text":" ","color":"red"}','[{"text":"クールタイム:","color":"aqua"},{"text":"50秒","color":"red"}]']},CustomModelData:6} 1

give @a[team=thief,tag=avenger] carrot_on_a_stick{display:{Name:'{"text":"アドレナリン","color":"red"}',Lore:['{"text":"一瞬無敵になる。無敵中に攻撃を受けなかった場合ダウンする。","color":"light_purple"}','{"text":" ","color":"red"}','[{"text":"クールタイム:","color":"aqua"},{"text":"20秒","color":"red"}]']},CustomModelData:7} 1
give @a[team=thief,tag=avenger] carrot_on_a_stick{display:{Name:'{"text":"憤怒の心","color":"dark_red"}',Lore:['{"text":"周囲の館の主をスタンさせる。","color":"light_purple"}','{"text":"復讐心が溜まっているほど強力になる。","color":"light_purple"}','{"text":"ヒットすると復讐心を1獲得する。","color":"light_purple"}','{"text":" ","color":"red"}','[{"text":"クールタイム:","color":"aqua"},{"text":"60秒","color":"red"}]']},CustomModelData:8} 1

give @a[team=thief,tag=chronomancer] carrot_on_a_stick{display:{Name:'{"text":"月の砂時計","color":"blue"}',Lore:['{"text":"時間を停止する。","color":"light_purple"}','{"text":"停止中は制限時間が止まり、館の主が動けなくなる。","color":"light_purple"}','{"text":" ","color":"red"}','[{"text":"クールタイム:","color":"aqua"},{"text":"30秒","color":"red"}]']},CustomModelData:9} 1
give @a[team=thief,tag=chronomancer] red_dye{display:{Name:'{"text":"太陽の懐中時計","color":"red"}',Lore:['{"text":"時間を加速させる。","color":"light_purple"}','{"text":"持っている間、全員の移動速度とクールタイム回復速度が上昇する。","color":"light_purple"}','{"text":" ","color":"red"}','[{"text":"クールタイム:","color":"aqua"},{"text":"30秒","color":"red"}]']},CustomModelData:2} 1