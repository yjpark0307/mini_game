scoreboard players remove @a[scores={D_spawnpoint_reload=1..}] D_spawnpoint_reload 1
scoreboard players remove @a[scores={D_spawn_reload=1..}] D_spawn_reload 1
execute if entity @a[scores={D_spawn_reload=0}] if entity @e[tag=D_spawnpoint_available] as @e[tag=D_spawnpoint_available,limit=1,sort=random] at @s run spawnpoint @a ~ ~ ~
execute if entity @a[scores={D_spawn_reload=0}] unless entity @e[tag=D_spawnpoint_available] as @e[tag=D_spawnpoint,limit=1,sort=random] at @s run spawnpoint @a ~ ~ ~
execute as @a[scores={D_spawnpoint_reload=0,D_game_timer=0..},nbt={OnGround:1b}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["A_kill","D_entity_timer","D_spawnpoint","D_spawnpoint_available"]}
scoreboard players set @a[scores={D_spawnpoint_reload=0}] D_spawnpoint_reload 160
scoreboard players set @a[scores={D_spawn_reload=0}] D_spawn_reload 20
execute as @e[tag=D_spawnpoint] at @s if entity @a[gamemode=survival,distance=..10] run tag @s remove D_spawnpoint_available
execute as @e[tag=D_spawnpoint] at @s unless entity @a[gamemode=survival,distance=..10] run tag @s add D_spawnpoint_available
kill @e[tag=D_spawnpoint,scores={D_entity_timer=1800..}]
execute as @e[tag=D_spawnpoint] at @s if block ~ ~ ~ lava run kill @s
execute as @e[tag=D_spawnpoint] at @s if block ~ ~-1 ~ lava run kill @s
execute as @e[tag=D_spawnpoint] at @s if block ~ ~-1 ~ air run kill @s

execute as @a unless data entity @s SpawnX run tellraw @s [{"text":"respawn fix...","color":"red"}]
execute as @a unless data entity @s SpawnX positioned as @e[tag=D_spawnpoint,limit=1,sort=random] run tp @s ~ ~ ~
execute as @a unless data entity @s SpawnX positioned as @e[tag=D_spawnpoint,limit=1,sort=random] run spawnpoint @s ~ ~ ~



execute if entity @a[scores={D_spawn_reload=0}] if entity @e[tag=D_spawnpoint_available] run scoreboard players set @a T_spawnpoint_log 0
execute if entity @a[scores={D_spawn_reload=0}] unless entity @e[tag=D_spawnpoint_available] run scoreboard players set @a T_spawnpoint_log 1
execute if entity @a[scores={D_spawn_reload=0}] unless entity @e[tag=D_spawnpoint] run scoreboard players set @a T_spawnpoint_log 3