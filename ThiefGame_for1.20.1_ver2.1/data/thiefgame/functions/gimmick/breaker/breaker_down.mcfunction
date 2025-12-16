tag @a add darkness
effect clear @a night_vision
effect give @a[team=thief,tag=darkness,scores={breaker_count=20..100}] invisibility 1 0 true
scoreboard players add @a[team=thief,tag=darkness] breaker_count 1
scoreboard players set @a[team=thief,tag=darkness,scores={breaker_count=120..}] breaker_count 0