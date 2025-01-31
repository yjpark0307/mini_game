title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 1235 1553 1288 1606
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 1235 -64 1553 1288 -46 1606 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10054 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10054 grass_block
title @a subtitle "fill air2..."
fill 10054 100 10054 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10054 -54 10054 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10054 -45 10054 10000 100 10000 air
forceload remove 1235 1553 1288 1606
title @a reset
title @a title {"text":"Maze (Huge)","color":"gold"}
title @a subtitle {"text":"made by Sirius_22","color":"yellow"}
tp @a 10026 -52 10025
spreadplayers 10025 10025 5 20 under -52 false @a
spawnpoint @a 10026 -52 10025
scoreboard players operation @a D_game_timer = @a D_game_ready
##store map##
scoreboard players set @a D_map_select 39
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select
