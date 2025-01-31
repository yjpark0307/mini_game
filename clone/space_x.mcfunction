title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 1171 1318 1255 1413
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 1171 -64 1318 1255 -17 1413 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10096 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10096 grass_block
title @a subtitle "fill air2..."
fill 10085 100 10096 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10085 -54 10096 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10000 -16 10000 10084 100 10095 air
forceload remove 1171 1318 1255 1413
fill 10047 -55 10058 10055 -55 10066 minecraft:terracotta replace minecraft:observer
fill 10047 -56 10058 10055 -56 10066 minecraft:terracotta replace minecraft:command_block
tp @a 10042 -20 10048
spawnpoint @a 10042 -20 10048
scoreboard players operation @a D_game_timer = @a D_game_ready
title @a reset
title @a title {"text":"Space-X","color":"gold"}
title @a subtitle {"text":"made by Sirius_22,P_A_Aro,yjpark0307","color":"yellow"}

##store map##
scoreboard players set @a D_map_select 3
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select