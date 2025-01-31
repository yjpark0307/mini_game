title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 1328 1400 1431 1515
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 1328 -64 1400 1431 0 1515 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10116 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10116 grass_block
title @a subtitle "fill air2..."
fill 10104 100 10116 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10104 -54 10116 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10104 1 10116 10000 100 10000 air
forceload remove 1328 1400 1431 1515
title @a reset
tp @a 10038 -25 10043
spawnpoint @a 10038 -25 10043
scoreboard players operation @a D_game_timer = @a D_game_ready
title @a title {"text":"Neo Resort","color":"gold"}
title @a subtitle {"text":"made by Sirius_22","color":"yellow"}

##store map##
scoreboard players set @a D_map_select 31
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select