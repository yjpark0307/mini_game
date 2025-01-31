title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
#copy
forceload add 999 1053 1081 1135
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 999 -64 1053 1081 0 1135 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10083 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10083 grass_block
title @a subtitle "fill air2..."
fill 10083 100 10083 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10083 -54 10083 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10000 1 10000 10082 100 10082 air
forceload remove 999 1053 1081 1135

#setting
tp @a 10040 -12 10040
spawnpoint @a 10040 -12 10040
scoreboard players operation @a D_game_timer = @a D_game_ready
item replace entity @a container.8 from block 99 -53 221 container.18

#title
title @a reset
title @a title {"text":"DESERT-CITY","color":"gold"}
title @a subtitle {"text":"made by yjpark0307","color":"yellow"}

##store map##
scoreboard players set @a D_map_select 6
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select