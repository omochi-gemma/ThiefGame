#効果を全体通知
tellraw @a [{"text": "","extra": [{"selector": "@p[tag=slot_target]"}]},{"text": "が全回復！"}]

#処理
effect give @p[tag=slot_target] instant_health 1 28 true