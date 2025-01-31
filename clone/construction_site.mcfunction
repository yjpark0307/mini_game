title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 1400 1290 1450 1348
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 1400 -64 1290 1450 -14 1348 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10059 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10059 grass_block
title @a subtitle "fill air2..."
fill 10051 100 10059 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10051 -54 10059 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10051 -13 10059 10000 100 10000 air
forceload remove 1400 1290 1450 1348
title @a reset
title @a title {"text":"Construction Stie","color":"gold"}
title @a subtitle {"text":"made by LAKEZOO, Sirius_22","color":"yellow"}
tp @a 10026 -30 10034
spawnpoint @a 10026 -30 10034
scoreboard players operation @a D_game_timer = @a D_game_ready
##store map##
scoreboard players set @a D_map_select 40
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select