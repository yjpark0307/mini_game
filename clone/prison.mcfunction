title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 1217 1467 1323 1551
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 1217 -64 1467 1323 -20 1551 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10085 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10085 grass_block
title @a subtitle "fill air2..."
fill 10107 100 10085 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10107 -54 10085 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10107 -19 10085 10000 100 10000 air
forceload remove 1217 1467 1323 1551
tp @a 10053 -10 10047
spawnpoint @a 10053 -10 10047
scoreboard players operation @a D_game_timer = @a D_game_ready
title @a reset
title @a title {"text":"Prison","color":"gold"}
title @a subtitle {"text":"made by Sirius_22, yjpark0307, P_A_Aro","color":"yellow"}

##store map##
scoreboard players set @a D_map_select 13
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select
