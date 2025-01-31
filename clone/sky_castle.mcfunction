title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 1311 1051 1391 1131
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 1311 -64 1051 1391 -10 1131 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10081 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10081 grass_block
title @a subtitle "fill air2..."
fill 10081 100 10081 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10081 -54 10081 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10081 -9 10081 10000 100 10000 air
forceload remove 1311 1051 1391 1131
tp @a 10040 -10 10040
spawnpoint @a 10040 -10 10040
scoreboard players operation @a D_game_timer = @a D_game_ready
title @a reset
title @a title {"text":"Sky Castle","color":"gold"}
title @a subtitle {"text":"made by Sirius_22,P_A_Aro,yjpark0307","color":"yellow"}

##store map##
scoreboard players set @a D_map_select 14
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select