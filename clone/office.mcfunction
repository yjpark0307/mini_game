title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 1137 1221 1179 1301
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 1137 -64 1221 1179 -24 1301 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10081 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10081 grass_block
title @a subtitle "fill air2..."
fill 10043 100 10081 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10043 -54 10081 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10000 -23 10000 10042 100 10080 air
forceload remove 1137 1221 1179 1301
tp @a 10020 -27 10036
spawnpoint @a 10020 -27 10036
scoreboard players operation @a D_game_timer = @a D_game_ready
title @a reset
title @a title {"text":"Office","color":"gold"}
title @a subtitle {"text":"made by Sirius_22, yjpark0307","color":"yellow"}

##store map##
scoreboard players set @a D_map_select 2
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select