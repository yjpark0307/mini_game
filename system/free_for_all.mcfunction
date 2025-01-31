#spawnpoint
spawnpoint @a[scores={D_life_remain=-1}] 0 -53 0

#detect winner
execute as @a[scores={D_revive_timer=5..}] at @s if entity @a[gamemode=spectator] unless entity @a[distance=0.01..,gamemode=survival] run title @a title [{"text":"WINNER","color":"gold"}]
execute as @a[scores={D_revive_timer=5..}] at @s if entity @a[gamemode=spectator] unless entity @a[distance=0.01..,gamemode=survival] run title @a subtitle [{"selector":"@a[scores={D_life_remain=0..}]","color":"green"}]
execute as @a[scores={D_revive_timer=5..}] at @s if entity @a[gamemode=spectator] unless entity @a[distance=0.01..,gamemode=survival] run playsound minecraft:ui.toast.challenge_complete player @a 0 -53 0 10 0.8 1
execute as @a[scores={D_revive_timer=5..}] at @s if entity @a[gamemode=spectator] unless entity @a[distance=0.01..,gamemode=survival] if entity @a[tag=A_score] run scoreboard players add @a[scores={D_life_remain=0..}] A_deathmatch_score 1
execute as @a[scores={D_revive_timer=5..}] at @s if entity @a[gamemode=spectator] unless entity @a[distance=0.01..,gamemode=survival] if entity @a[tag=A_score] run scoreboard players add @a A_deathmatch_playcount 1
execute as @a[scores={D_revive_timer=5..}] at @s if entity @a[gamemode=spectator] unless entity @a[distance=0.01..,gamemode=survival] run schedule function st:reset 1t
execute as @a[scores={D_revive_timer=5..}] at @s if entity @a[gamemode=spectator] unless entity @a[distance=0.01..,gamemode=survival] run function st:reset

#spectate
gamemode spectator @a[scores={D_life_remain=0}]
scoreboard players set @a[scores={D_life_remain=0}] D_life_remain -1
team leave @a[gamemode=spectator]

#reduce life
scoreboard players remove @a[scores={D_death_count=1, D_life_remain=1..}] D_life_remain 1
execute if entity @a[scores={D_death_count=1..,D_game_timer=0}] run worldborder set 400
scoreboard players set @a[scores={D_death_count=1..}] D_death_count 0

#revive
effect give @a[scores={D_revive_timer=5}] minecraft:absorption 16 0 true
effect give @a[scores={D_revive_timer=5}] minecraft:absorption 8 1 true
effect give @a[scores={D_revive_timer=5}] minecraft:absorption 4 2 true
effect give @a[scores={D_revive_timer=5}] minecraft:absorption 2 3 true
effect give @a[scores={D_revive_timer=5}] minecraft:absorption 1 4 true
scoreboard players set @a[scores={D_revive_timer=5}] D_utility_reload -1
scoreboard players set @a[scores={D_revive_timer=5}] D_utility_supply 0
scoreboard players set @a[scores={D_revive_timer=5}] D_missile_reload 100
execute if entity @a[tag=D_1v1_mode,scores={D_revive_timer=5}] run effect give @a minecraft:regeneration 3 10 true
execute if entity @a[scores={D_revive_timer=5,D_game_timer=0}] as @r[gamemode=survival] at @s run worldborder center ~ ~
execute if entity @a[scores={D_revive_timer=5,D_game_timer=0}] run worldborder set 60 60
item replace entity @a[scores={D_revive_timer=5},gamemode=survival] container.7 from block 101 -52 229 container.7
execute as @a if entity @s[scores={D_revive_timer=5},gamemode=survival] run tellraw @a [{"selector":"@s"},{"text":" is DEAD"}]
execute as @a at @s if entity @s[scores={D_revive_timer=5},gamemode=survival] run playsound minecraft:block.ender_chest.open player @a ~ ~100 ~ 1000 0 1
execute as @a if entity @s[scores={D_revive_timer=5},gamemode=spectator] run tellraw @a [{"selector":"@s","color":"red"},{"text":" is Retired","color":"red"}]
execute as @a at @s if entity @s[scores={D_revive_timer=5},gamemode=spectator] run playsound minecraft:block.bell.use player @a ~ ~100 ~ 1000 0 1

#start effect
effect give @a[scores={D_game_timer=-1}] minecraft:slow_falling 8 0 true
effect give @a[scores={D_game_timer=-1}] minecraft:resistance 8 10 true
effect give @a[scores={D_game_timer=-1}] minecraft:speed 8 2 true

#game over
scoreboard players remove @a[scores={D_game_timer=1..}] D_game_timer 1
execute as @a[scores={D_game_timer=1}] at @s run playsound minecraft:block.bell.use player @s ~ ~100 ~ 1000 1 1
execute as @r[gamemode=survival,scores={D_game_timer=1}] at @s run worldborder center ~ ~
execute if entity @a[gamemode=survival,scores={D_game_timer=1}] run worldborder set 400
execute if entity @a[gamemode=survival,scores={D_game_timer=1}] run worldborder set 60 60
title @a[scores={D_game_timer=3600}] title ""
title @a[scores={D_game_timer=3600}] subtitle [{"text":"3 minute left","color":"green"}]
title @a[scores={D_game_timer=1200}] title ""
title @a[scores={D_game_timer=1200}] subtitle [{"text":"1 minute left","color":"yellow"}]
title @a[scores={D_game_timer=1}] title [{"text":"time over","color":"red"}]

#world border
execute if entity @a[scores={D_current_border=60}] run worldborder set 1 70
execute as @a if entity @a[scores={D_current_border=1}] run damage @s 1 minecraft:lava