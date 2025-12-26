#効果を全体通知
tellraw @a [{"text": "","extra": [{"selector": "@p[tag=slot_target]"}]},{"text": "の移動速度上昇！"}]

#処理
effect give @p[tag=slot_target] speed 10 3 true