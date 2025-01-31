title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 1146 1053 1239 1110
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 1146 -64 1053 1239 -13 1110 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10058 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10058 grass_block
title @a subtitle "fill air2..."
fill 10094 100 10058 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10094 -54 10058 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10094 -12 10058 10000 100 10000 air
forceload remove 1146 1053 1239 1110
title @a reset
#setting
tp @a 10050 0 10025
spawnpoint @a 10050 0 10025
scoreboard players operation @a D_game_timer = @a D_game_ready

#title
title @a title {"text":"Snowy Outpost","color":"gold"}
title @a subtitle {"text":"made by Sirius_22, yjpark0307","color":"yellow"}

##store map##
scoreboard players set @a D_map_select 23
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select