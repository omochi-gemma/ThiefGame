#鉄柵レバー検知
execute positioned -20 39 213 if block ~ ~ ~ lever[powered=true] run summon area_effect_cloud ~ ~ ~ {WaitTime:181,Tags:["AEC_ironfence1a_1"]}

#検知したら鉄柵を降ろす
execute if entity @e[type=area_effect_cloud,tag=AEC_ironfence1a_1,nbt={Age:0}] as @e[type=area_effect_cloud,tag=AEC_ironfence1a_1,nbt={Age:0}] at @s run function thiefgame:gimmick/iron_fence/down_ironfence/annex/first_floor/ironfence1a_1