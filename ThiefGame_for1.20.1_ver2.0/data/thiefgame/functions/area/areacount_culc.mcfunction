#エリア2は残り1020秒から960秒の間で解放されるとする。
#範囲60で乱数生成をし、最大値1020から差し引いている。

#デフォルトエリア解放時間を設定
scoreboard players set @s area2_time 1020
scoreboard players set @s area3_time 900
scoreboard players set @s area4_time 600

#エリア2の解放時間幅の乱数生成
function thiefgame:rng/area2_rng
#デバッグmsg
tellraw @a[tag=debug] {"text":"エリア2の解放時間幅乱数:","extra": [{"score": {"name": "@e[type=armor_stand,tag=rng]","objective": "rng"}} ,{"text":"秒です。"}]}
##実際の残り時間に変換
scoreboard players operation @s area2_time -= @s rng

#エリア3の解放時間幅の乱数生成
function thiefgame:rng/area3_rng
#デバッグmsg
tellraw @a[tag=debug] {"text":"エリア3の解放時間幅乱数:","extra": [{"score": {"name": "@e[type=armor_stand,tag=rng]","objective": "rng"}} ,{"text":"秒です。"}]}
##実際の残り時間に変換
scoreboard players operation @s area3_time -= @s rng

#エリア4の解放時間幅の乱数生成
function thiefgame:rng/area4_rng
#デバッグmsg
tellraw @a[tag=debug] {"text":"エリア4の解放時間幅乱数:","extra": [{"score": {"name": "@e[type=armor_stand,tag=rng]","objective": "rng"}} ,{"text":"秒です。"}]}
##実際の残り時間に変換
scoreboard players operation @s area4_time -= @s rng

#デバッグmsg
tellraw @a[tag=debug] {"text":"エリア2の解放時間:残り時間","extra": [{"score": {"name": "@e[type=armor_stand,tag=rng]","objective": "area2_time"}} ,{"text":"秒時点です。"}]}
tellraw @a[tag=debug] {"text":"エリア3の解放時間:残り時間","extra": [{"score": {"name": "@e[type=armor_stand,tag=rng]","objective": "area3_time"}} ,{"text":"秒時点です。"}]}
tellraw @a[tag=debug] {"text":"エリア4の解放時間:残り時間","extra": [{"score": {"name": "@e[type=armor_stand,tag=rng]","objective": "area4_time"}} ,{"text":"秒時点です。"}]}