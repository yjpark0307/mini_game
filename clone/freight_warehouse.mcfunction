title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 1469 1263 1540 1355
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 1469 -64 1263 1540 -30 1355 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10093 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10093 grass_block
title @a subtitle "fill air2..."
fill 10072 100 10093 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10072 -54 10093 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10072 -29 10093 10000 100 10000 air
forceload remove 1469 1263 1540 1355
title @a reset
title @a title {"text":"Freight Warehouse","color":"gold"}
title @a subtitle {"text":"made by Sirius_22","color":"yellow"}
tp @a 10036 -49 10051
spawnpoint @a 10036 -49 10051
scoreboard players operation @a D_game_timer = @a D_game_ready
##store map##
scoreboard players set @a D_map_select 36
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select
