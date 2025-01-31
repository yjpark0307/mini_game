title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 1291 1553 1323 1585
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 1291 -64 1553 1323 -47 1585 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10033 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10033 grass_block
title @a subtitle "fill air2..."
fill 10033 100 10033 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10033 -54 10033 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10033 -46 10033 10000 100 10000 air
forceload remove 1291 1553 1323 1585
title @a reset
title @a title {"text":"Maze (Small)","color":"gold"}
title @a subtitle {"text":"made by Sirius_22","color":"yellow"}
tp @a 10015 -52 10015
spreadplayers 10015 10015 2 10 under -52 false @a
spawnpoint @a 10015 -52 10015
scoreboard players operation @a D_game_timer = @a D_game_ready
##store map##
scoreboard players set @a D_map_select 38
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select