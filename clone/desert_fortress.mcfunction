title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
#copy
forceload add 1083 1053 1144 1127
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 1083 -64 1053 1144 -13 1127 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10075 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10075 grass_block
title @a subtitle "fill air2..."
fill 10062 100 10075 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10062 -54 10075 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10061 -12 10074 10000 100 10000 air
forceload remove 1083 1053 1144 1127
#setting
tp @a 10030 0 10035
spawnpoint @a 10030 0 10035
scoreboard players operation @a D_game_timer = @a D_game_ready
item replace entity @a container.8 from block 99 -53 221 container.18

#title
title @a reset
title @a title {"text":"Desert Fortress","color":"gold"}
title @a subtitle {"text":"made by Sirius_22, P_A_Aro","color":"yellow"}

##store map##
scoreboard players set @a D_map_select 7
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select
