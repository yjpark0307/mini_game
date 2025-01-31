title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 1519 1051 1583 1117
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 1519 -64 1051 1583 10 1117 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10067 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10067 grass_block
title @a subtitle "fill air2..."
fill 10065 100 10067 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10065 -54 10067 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10065 11 10067 10000 100 10000 air
forceload remove 1519 1051 1583 1117
title @a reset
tp @a 10033 0 10033
spawnpoint @a 10033 0 10033
scoreboard players operation @a D_game_timer = @a D_game_ready
title @a title {"text":"Old Museum","color":"gold"}
title @a subtitle {"text":"made by I_Enjoy_","color":"yellow"}

##store map##
scoreboard players set @a D_map_select 19
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select