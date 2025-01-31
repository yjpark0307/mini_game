title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 1257 1318 1317 1372
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 1257 -64 1318 1317 0 1372 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10055 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10055 grass_block
title @a subtitle "fill air2..."
fill 10061 100 10055 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10061 -54 10055 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10061 1 10055 10000 100 10000 air
forceload remove 1257 1318 1317 1372
tp @a 10031 -30 10032
spawnpoint @a 10030 -30 10032
scoreboard players operation @a D_game_timer = @a D_game_ready
scoreboard players set @a D_arty_timer 600
item replace entity @a container.8 from block 99 -53 221 container.18
title @a reset
title @a title {"text":"Trench (Original)","color":"gold"}
title @a subtitle {"text":"made by Sirius_22","color":"yellow"}

##store map##
scoreboard players set @a D_map_select 5
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select