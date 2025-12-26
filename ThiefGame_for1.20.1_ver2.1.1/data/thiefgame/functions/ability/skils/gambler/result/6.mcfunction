#効果を全体通知
tellraw @a [{"text": "","extra": [{"selector": "@s"}]},{"text": "の移動速度低下！"}]

#処理
effect give @s slowness 10 2 true