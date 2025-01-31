title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 1181 1221 1295 1316
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 1181 -64 1221 1295 0 1316 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10096 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10096 grass_block
title @a subtitle "fill air2..."
fill 10115 100 10096 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10115 -54 10096 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10000 1 10000 10114 100 10095 air
forceload remove 1181 1221 1295 1316
tp @a 10054 0 10051
spawnpoint @a 10054 0 10051
scoreboard players operation @a D_game_timer = @a D_game_ready
title @a reset
title @a title {"text":"Castle","color":"gold"}
title @a subtitle {"text":"made by Sirius_22","color":"yellow"}

##store map##
scoreboard players set @a D_map_select 8
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select