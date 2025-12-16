#効果を全体通知
tellraw @a [{"text": "","extra": [{"selector": "@s"}]},{"text": "が"},{"text": "","extra": [{"selector": "@p[tag=slot_target]"}]},{"text": "にテレポートした！"}]

#処理
tp @s @p[tag=slot_target]