title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 1141 1565 1196 1627
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 1141 -64 1565 1196 -40 1627 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10063 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10063 grass_block
title @a subtitle "fill air2..."
fill 10056 100 10063 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10056 -54 10063 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10056 -39 10063 10000 100 10000 air
forceload remove 1141 1565 1196 1627
title @a reset
tp @a 10031 -52 10047
spawnpoint @a 10031 -52 10047
scoreboard players operation @a D_game_timer = @a D_game_ready
title @a title {"text":"Portal Maze","color":"gold"}
title @a subtitle {"text":"made by Sirius_22","color":"yellow"}

##store map##
scoreboard players set @a D_map_select 33
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select
