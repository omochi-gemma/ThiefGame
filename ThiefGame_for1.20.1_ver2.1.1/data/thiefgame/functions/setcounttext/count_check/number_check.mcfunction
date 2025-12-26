#正解の時に上のランプを点灯
execute if score @s success_number = @s rclick_count run setblock ~ ~1 ~-1 redstone_block
execute unless score @s success_number = @s rclick_count run setblock ~ ~1 ~-1 air