title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 999 1742 1049 1811
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 999 -64 1742 1049 -4 1811 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10070 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10070 grass_block
title @a subtitle "fill air2..."
fill 10051 100 10070 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10051 -54 10070 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10051 -3 10070 10000 100 10000 air
forceload remove 999 1742 1049 1811
title @a reset
tp @a 10025 -10 10035
spawnpoint @a 10025 -10 100353
scoreboard players operation @a D_game_timer = @a D_game_ready
title @a title {"text":"Old Park","color":"gold"}
title @a subtitle {"text":"made by LAKEZOO, Sirius_22, P_A_Aro","color":"yellow"}

##store map##
scoreboard players set @a D_map_select 34
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select