title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 1434 1358 1513 1437
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 1434 -64 1358 1513 -20 1437 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10080 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10080 grass_block
title @a subtitle "fill air2..."
fill 10080 100 10080 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10080 -54 10080 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10080 -19 10080 10000 100 10000 air
forceload remove 1434 1358 1513 1437
title @a reset
tp @a 10038 0 10043
spawnpoint @a 10038 0 10043
scoreboard players operation @a D_game_timer = @a D_game_ready
title @a title {"text":"Midden","color":"gold"}
title @a subtitle {"text":"made by LAKEZOO, P_A_Aro, Sirius_22","color":"yellow"}

##store map##
scoreboard players set @a D_map_select 20
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select