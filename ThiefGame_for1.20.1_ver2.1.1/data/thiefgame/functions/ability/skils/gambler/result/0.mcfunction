#効果を全体通知
tellraw @a [{"text": "","extra": [{"selector": "@p[tag=slot_target]"}]},{"text": "に10ダメージ！"}]

#処理
damage @p[tag=slot_target] 10