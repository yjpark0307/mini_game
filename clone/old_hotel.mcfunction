title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 1247 1112 1298 1200
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 1247 -64 1112 1298 -28 1200 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10089 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10089 grass_block
title @a subtitle "fill air2..."
fill 10052 100 10089 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10052 -54 10089 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10000 -27 10000 10051 100 10088 air
forceload remove 1247 1112 1298 1200
tp @a 10025 -31 10044
spawnpoint @a 10025 -31 10044
scoreboard players operation @a D_game_timer = @a D_game_ready
title @a reset
title @a title {"text":"Old Hotel","color":"gold"}
title @a subtitle {"text":"made by Sirius_22","color":"yellow"}

##store map##
scoreboard players set @a D_map_select 11
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select