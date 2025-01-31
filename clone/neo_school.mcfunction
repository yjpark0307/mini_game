title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 1628 1051 1729 1171
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 1628 -64 1051 1729 -10 1171 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10121 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10121 grass_block
title @a subtitle "fill air2..."
fill 10102 100 10121 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10102 -54 10121 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10102 -9 10121 10000 100 10000 air
forceload remove 1628 1051 1729 1171
title @a reset
tp @a 10041 -30 10052
spawnpoint @a 10041 -30 10052
scoreboard players operation @a D_game_timer = @a D_game_ready
title @a title {"text":"Neo School","color":"gold"}
title @a subtitle {"text":"made by Sririus_22, LAKEZOO, P_A_Aro","color":"yellow"}

##store map##
scoreboard players set @a D_map_select 24
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select