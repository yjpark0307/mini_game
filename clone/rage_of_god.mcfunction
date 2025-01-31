title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 1452 1051 1517 1116
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 1452 -64 1051 1517 -29 1116 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10066 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10066 grass_block
title @a subtitle "fill air2..."
fill 10066 100 10066 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10066 -54 10066 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10066 -28 10066 10000 100 10000 air
forceload remove 1452 1051 1517 1116
tp @a 10032 -49 10033
spawnpoint @a 10032 -49 10033
scoreboard players operation @a D_game_timer = @a D_game_ready
summon bat 10031 -61 10037 {Silent:1b,Invulnerable:1b,Tags:["A_kill"]}
summon bat 10031 -61 10037 {Silent:1b,Invulnerable:1b,Tags:["A_kill"]}
summon bat 10031 -61 10037 {Silent:1b,Invulnerable:1b,Tags:["A_kill"]}
summon bat 10031 -61 10037 {Silent:1b,Invulnerable:1b,Tags:["A_kill"]}
summon bat 10031 -61 10037 {Silent:1b,Invulnerable:1b,Tags:["A_kill"]}
summon bat 10031 -61 10037 {Silent:1b,Invulnerable:1b,Tags:["A_kill"]}
summon bat 10031 -61 10037 {Silent:1b,Invulnerable:1b,Tags:["A_kill"]}
summon bat 10031 -61 10037 {Silent:1b,Invulnerable:1b,Tags:["A_kill"]}
summon bat 10031 -61 10037 {Silent:1b,Invulnerable:1b,Tags:["A_kill"]}
summon bat 10031 -61 10037 {Silent:1b,Invulnerable:1b,Tags:["A_kill"]}
weather thunder
scoreboard players set @a D_thunder_timer 300
title @a reset
title @a title {"text":"Rage Of God","color":"gold"}
title @a subtitle {"text":"made by Sirius_22","color":"yellow"}

##store map##
scoreboard players set @a D_map_select 16
execute as @a store result score @s D_previous_map3 run scoreboard players get @s D_previous_map2
execute as @a store result score @s D_previous_map2 run scoreboard players get @s D_previous_map
execute as @a store result score @s D_previous_map run scoreboard players get @s D_map_select