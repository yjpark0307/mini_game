###AIR STRIKE###
#detect
execute as @a[scores={D_right_click=1}] if items entity @s weapon.mainhand compass[minecraft:custom_name='"airstrike"'] run scoreboard players set @s D_airstrike_used 1
#reload
scoreboard players set @a[scores={D_airstrike_used=1,D_airstrike_interval=0}] D_airstrike_reload 1800
scoreboard players set @a[scores={D_airstrike_used=1,D_airstrike_interval=1}] D_airstrike_reload 2700
scoreboard players set @a[scores={D_airstrike_used=1,D_airstrike_interval=2}] D_airstrike_reload 3600
execute as @a[scores={D_airstrike_used=0}] unless items entity @s hotbar.6 * run scoreboard players set @a D_airstrike_reload 1800
scoreboard players remove @a[tag=D_specialization_scout,scores={D_airstrike_used=1}] D_airstrike_reload 200
scoreboard players remove @a[scores={D_airstrike_reload=0..}] D_airstrike_reload 1
execute if entity @a[tag=D_1v1_mode] run scoreboard players remove @a[scores={D_airstrike_reload=4..}] D_airstrike_reload 3
item replace entity @a[scores={D_airstrike_reload=0}] container.6 from block 101 -52 229 container.6

#normal
execute if entity @a[tag=D_normal_mode] as @a[gamemode=survival, scores={D_airstrike_used=0}] at @s if entity @a[scores={D_airstrike_used=1}] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1,Invisible:1,Tags:["A_kill","airstrike","D_entity_timer"]}
execute if entity @a[tag=D_normal_mode] as @e[scores={D_entity_timer=80},tag=airstrike] at @s if entity @a[scores={D_game_timer=0..}] run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:4}

#1v1 mode
execute if entity @a[tag=D_1v1_mode] as @a[gamemode=survival, scores={D_airstrike_used=0}] at @s if entity @a[scores={D_airstrike_used=1,D_airstrike_upgrade=0}] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1,Invisible:1,Tags:["A_kill","airstrike","D_entity_timer","upgrade0"]}
execute if entity @a[tag=D_1v1_mode] as @a[gamemode=survival, scores={D_airstrike_used=0}] at @s if entity @a[scores={D_airstrike_used=1,D_airstrike_upgrade=1}] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1,Invisible:1,Tags:["A_kill","airstrike","D_entity_timer","upgrade1"]}
execute if entity @a[tag=D_1v1_mode] as @a[gamemode=survival, scores={D_airstrike_used=0}] at @s if entity @a[scores={D_airstrike_used=1,D_airstrike_upgrade=2}] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1,Invisible:1,Tags:["A_kill","airstrike","D_entity_timer","upgrade2"]}
execute if entity @a[tag=D_1v1_mode] as @a[gamemode=survival, scores={D_airstrike_used=0}] at @s if entity @a[scores={D_airstrike_used=1,D_airstrike_upgrade=3}] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1,Invisible:1,Tags:["A_kill","airstrike","D_entity_timer","upgrade3"]}
execute if entity @a[tag=D_1v1_mode] as @a[gamemode=survival, scores={D_airstrike_used=0}] at @s if entity @a[scores={D_airstrike_used=1,D_airstrike_upgrade=4}] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1,Invisible:1,Tags:["A_kill","airstrike","D_entity_timer","upgrade4"]}
execute if entity @a[tag=D_1v1_mode] as @a[gamemode=survival, scores={D_airstrike_used=0}] at @s if entity @a[scores={D_airstrike_used=1,D_airstrike_upgrade=5}] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1,Invisible:1,Tags:["A_kill","airstrike","D_entity_timer","upgrade5"]}

execute if entity @a[tag=D_1v1_mode] as @e[type=armor_stand,tag=airstrike,tag=upgrade1,scores={D_entity_timer=80}] at @s run execute as @a[distance=..5] run damage @s 6 minecraft:player_explosion
execute if entity @a[tag=D_1v1_mode] as @e[type=armor_stand,tag=airstrike,tag=upgrade2,scores={D_entity_timer=80}] at @s run execute as @a[distance=..6] run damage @s 8 minecraft:player_explosion
execute if entity @a[tag=D_1v1_mode] as @e[type=armor_stand,tag=airstrike,tag=upgrade3,scores={D_entity_timer=80}] at @s run execute as @a[distance=..7] run damage @s 10 minecraft:player_explosion
execute if entity @a[tag=D_1v1_mode] as @e[type=armor_stand,tag=airstrike,tag=upgrade4,scores={D_entity_timer=80}] at @s run execute as @a[distance=..8] run damage @s 12 minecraft:player_explosion
execute if entity @a[tag=D_1v1_mode] as @e[type=armor_stand,tag=airstrike,tag=upgrade5,scores={D_entity_timer=80}] at @s run execute as @a[distance=..9] run damage @s 14 minecraft:player_explosion

execute if entity @a[tag=D_1v1_mode] as @e[type=armor_stand,tag=airstrike,scores={D_entity_timer=80}] at @s if entity @a[scores={D_game_timer=0..}] run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:2}
execute if entity @e[type=armor_stand,tag=airstrike,scores={D_entity_timer=80}] run tellraw @a {"text":"airstrike complete"}
execute as @e[type=armor_stand,tag=airstrike,scores={D_entity_timer=80}] at @s run particle minecraft:crit ~ ~ ~ 0 5 0 0 200 force
kill @e[type=armor_stand,tag=airstrike,scores={D_entity_timer=80..}]

execute as @e[type=armor_stand,tag=airstrike] at @s run particle minecraft:crit ~ ~0.5 ~ 0 0 0 0 1 force

execute as @a[scores={D_airstrike_used=1}] at @s run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 1.5 0

scoreboard players set @a[scores={D_airstrike_used=1}] D_airstrike_used 0



#clear offhand
item replace entity @a[nbt={SelectedItemSlot:6}] weapon.offhand with air


