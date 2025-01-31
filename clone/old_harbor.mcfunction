title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 999 1221 1053 1314
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 999 -64 1221 1053 -20 1314 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10094 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10094 grass_block
title @a subtitle "fill air2..."
fill 10055 100 10094 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10055 -54 10094 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10000 -19 10000 10055 100 10094 air
forceload remove 999 1221 1053 1314
tp @a 10025 0 10045
spawnpoint @a 10025 0 10045
scoreboard players operation @a D_game_timer = @a D_game_ready
title @a reset
title @a title {"text":"old Harbor","color":"gold"}
title @a subtitle {"text":"made by Sirius_22","color":"yellow"}

##store map##
scoreboard players set @a D_map_select 10
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select