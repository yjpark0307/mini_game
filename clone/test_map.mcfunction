title @a times 0s 30s 0s
title @a title [{"text":"copying...","color":"aqua"}]
forceload add 1500 1500 1650 1650
forceload add 10000 10000 10200 10200
title @a subtitle "clone..."
clone 1500 -64 1500 1650 100 1650 10000 -64 10000
title @a subtitle "fill air1..."
fill 10000 100 10200 10200 -54 10151 air
title @a subtitle "fill grass_block1..."
fill 10000 -54 10200 10200 -54 10151 grass_block
title @a subtitle "fill air2..."
fill 10151 100 10151 10200 -54 10000 air
title @a subtitle "fill grass_block2..."
fill 10151 -54 10151 10200 -54 10000 grass_block
title @a subtitle "fill upper_air..."
fill 10151 101 10151 10000 100 10000 air
forceload remove 1500 1500 1650 1650
title @a reset
tp @a 10000 100 10000
spawnpoint @a 10000 100 10000
scoreboard players operation @a D_game_timer = @a D_game_ready