title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 1299 1273 1373 1315
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 1299 -64 1273 1373 -25 1315 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10043 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10043 grass_block
title @a subtitle "fill air2..."
fill 10075 100 10043 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10075 -54 10043 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10075 -24 10043 10000 100 10000 air
forceload remove 1299 1273 1373 1315
title @a reset
tp @a 10029 -20 10017
spawnpoint @a 10029 -20 10017
scoreboard players operation @a D_game_timer = @a D_game_ready
title @a title {"text":"Ancient Portal","color":"gold"}
title @a subtitle {"text":"made by Sirius_22","color":"yellow"}

##store map##
scoreboard players set @a D_map_select 22
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select