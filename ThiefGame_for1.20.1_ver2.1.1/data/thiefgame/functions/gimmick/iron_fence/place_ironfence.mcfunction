#鉄柵レバー検知
##別館
###1階
####1
execute positioned -20 39 213 if block ~ ~ ~ lever[powered=true] run summon area_effect_cloud ~ ~-5 ~ {WaitTime:201,Tags:["AEC_ironfence1a_1"]}
execute positioned -22 39 212 if block ~ ~ ~ lever[powered=true] run summon area_effect_cloud ~ ~-5 ~ {WaitTime:201,Tags:["AEC_ironfence1a_1"]}
####2
execute positioned 1 39 203 if block ~ ~ ~ lever[powered=true] run summon area_effect_cloud ~ ~-5 ~ {WaitTime:201,Tags:["AEC_ironfence1a_2"]}
execute positioned 3 39 203 if block ~ ~ ~ lever[powered=true] run summon area_effect_cloud ~ ~-5 ~ {WaitTime:201,Tags:["AEC_ironfence1a_2"]}
####3
execute positioned 13 39 219 if block ~ ~ ~ lever[powered=true] run summon area_effect_cloud ~ ~-5 ~ {WaitTime:201,Tags:["AEC_ironfence1a_3"]}
execute positioned 15 39 219 if block ~ ~ ~ lever[powered=true] run summon area_effect_cloud ~ ~-5 ~ {WaitTime:201,Tags:["AEC_ironfence1a_3"]}
###2階
####1
execute positioned -19 44 217 if block ~ ~ ~ lever[powered=true] run summon area_effect_cloud ~ ~-5 ~ {WaitTime:201,Tags:["AEC_ironfence2a_1"]}
execute positioned -19 44 219 if block ~ ~ ~ lever[powered=true] run summon area_effect_cloud ~ ~-5 ~ {WaitTime:201,Tags:["AEC_ironfence2a_1"]}

#検知したら鉄柵を降ろす
execute if entity @e[type=area_effect_cloud,tag=AEC_ironfence1a_1,nbt={Age:0}] as @e[type=area_effect_cloud,tag=AEC_ironfence1a_1,nbt={Age:0}] at @s run function thiefgame:gimmick/iron_fence/down_ironfence/annex/first_floor/ironfence1a_1
execute if entity @e[type=area_effect_cloud,tag=AEC_ironfence1a_2,nbt={Age:0}] as @e[type=area_effect_cloud,tag=AEC_ironfence1a_2,nbt={Age:0}] at @s run function thiefgame:gimmick/iron_fence/down_ironfence/annex/first_floor/ironfence1a_2
execute if entity @e[type=area_effect_cloud,tag=AEC_ironfence1a_3,nbt={Age:0}] as @e[type=area_effect_cloud,tag=AEC_ironfence1a_3,nbt={Age:0}] at @s run function thiefgame:gimmick/iron_fence/down_ironfence/annex/first_floor/ironfence1a_3
execute if entity @e[type=area_effect_cloud,tag=AEC_ironfence2a_1,nbt={Age:0}] as @e[type=area_effect_cloud,tag=AEC_ironfence2a_1,nbt={Age:0}] at @s run function thiefgame:gimmick/iron_fence/down_ironfence/annex/second_floor/ironfence2a_1