title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 999 1661 1077 1739
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 999 -64 1661 1077 -18 1739 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10079 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10079 grass_block
title @a subtitle "fill air2..."
fill 10079 100 10079 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10079 -54 10079 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10079 -17 10079 10000 100 10000 air
forceload remove 999 1661 1077 1739
title @a reset
tp @a 10039 -39 10039
spawnpoint @a 10039 -39 10039
scoreboard players operation @a D_game_timer = @a D_game_ready
title @a title {"text":"Stone Arena","color":"gold"}
title @a subtitle {"text":"made by Sirius_22,P_A_Aro,LAKEZOO","color":"yellow"}

##store map##
scoreboard players set @a D_map_select 30
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select