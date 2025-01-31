title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 1055 1221 1135 1301
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 1055 -64 1221 1135 -11 1301 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10081 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10081 grass_block
title @a subtitle "fill air2..."
fill 10081 100 10081 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10081 -54 10081 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10000 -10 10000 10080 100 10080 air
forceload remove 1055 1221 1135 1301
tp @a 10040 -20 10040
spawnpoint @a 10040 -20 10040
scoreboard players operation @a D_game_timer = @a D_game_ready
title @a reset
title @a title {"text":"Ancient Temple","color":"gold"}
title @a subtitle {"text":"made by Sirius_22","color":"yellow"}

##store map##
scoreboard players set @a D_map_select 12
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select