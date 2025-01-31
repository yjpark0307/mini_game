title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 1146 1112 1245 1211
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 1146 -64 1112 1245 -20 1211 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10100 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10100 grass_block
title @a subtitle "fill air2..."
fill 10100 100 10100 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10100 -54 10100 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10099 -19 10099 10000 100 10000 air
forceload remove 1146 1112 1245 1211
tp @a 10049 -43 10050
spawnpoint @a 10049 -43 10050
scoreboard players set @a D_game_ready 3600
scoreboard players operation @a D_game_timer = @a D_game_ready
scoreboard players set @a D_life_remain 5
title @a reset
title @a title {"text":"Nether Arena","color":"gold"}
title @a subtitle {"text":"made by Sirius_22","color":"yellow"}

##store map##
scoreboard players set @a D_map_select 1
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select