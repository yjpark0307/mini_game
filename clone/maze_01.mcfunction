title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 1452 1118 1508 1185
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 1452 -64 1118 1508 -42 1185 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10068 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10068 grass_block
title @a subtitle "fill air2..."
fill 10057 100 10068 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10057 -54 10068 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10057 -41 10068 10000 100 10000 air
forceload remove 1452 1118 1508 1185
tp @a 10023 -45 10030
spawnpoint @a 10023 -45 10030
scoreboard players operation @a D_game_timer = @a D_game_ready
title @a reset
title @a title {"text":"Maze_01","color":"gold"}
title @a subtitle {"text":"made by Sirius_22","color":"yellow"}

##store map##
scoreboard players set @a D_map_select 17
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select