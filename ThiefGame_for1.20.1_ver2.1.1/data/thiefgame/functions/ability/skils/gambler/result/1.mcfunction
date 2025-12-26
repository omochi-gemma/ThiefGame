#効果を全体通知
tellraw @a [{"text": "","extra": [{"selector": "@p[tag=slot_target]"}]},{"text": "が発光！"}]

#処理
effect give @p[tag=slot_target] glowing 10 0 true