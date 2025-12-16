#効果を全体通知
tellraw @a [{"text": "","extra": [{"selector": "@p[tag=slot_target]"}]},{"text": "の移動速度低下！"}]

#処理
effect give @p[tag=slot_target] slowness 10 2 true