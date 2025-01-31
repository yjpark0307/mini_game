title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 1394 1051 1450 1131
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 1394 -64 1051 1450 -20 1131 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10081 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10081 grass_block
title @a subtitle "fill air2..."
fill 10057 100 10081 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10057 -54 10081 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10057 -19 10081 10000 100 10000 air
forceload remove 1394 1051 1450 1131
tp @a 10028 -10 10042
spawnpoint @a 10028 -10 10042
scoreboard players operation @a D_game_timer = @a D_game_ready
title @a reset
title @a title {"text":"Nether Fortress","color":"gold"}
title @a subtitle {"text":"made by Sirius_22","color":"yellow"}

##store map##
scoreboard players set @a D_map_select 15
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select