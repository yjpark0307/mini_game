title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 1171 1415 1308 1465
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 1171 -64 1415 1308 20 1465 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10051 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10051 grass_block
title @a subtitle "fill air2..."
fill 10138 100 10051 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10138 -54 10051 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10000 21 10000 10137 100 10050 air
forceload remove 1171 1415 1308 1465
tp @a 10069 -40 10022
spawnpoint @a 10069 -40 10022
scoreboard players operation @a D_game_timer = @a D_game_ready
title @a reset
title @a title {"text":"BRIDGE","color":"gold"}
title @a subtitle {"text":"made by Sirius_22","color":"yellow"}

##store map##
scoreboard players set @a D_map_select 4
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select