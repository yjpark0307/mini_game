title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 999 999 1051 1051
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 999 -64 999 1051 -20 1051 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10053 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10053 grass_block
title @a subtitle "fill air2..."
fill 10053 100 10053 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10053 -54 10053 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10053 -20 10053 10000 100 10000 air
forceload remove 999 999 1051 1051
tp @a 10025 -21 10025
spawnpoint @a 10025 -21 10025
scoreboard players operation @a D_game_timer = @a D_game_ready
title @a reset
title @a title {"text":"Countryside","color":"gold"}
title @a subtitle {"text":"made by yjpark0307","color":"yellow"}

##store map##
scoreboard players set @a D_map_select 0
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select