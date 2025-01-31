###SYSTEM###

execute if entity @a[scores={D_game_mode=0}] run function st:deathmatch/system/free_for_all
execute if entity @a[scores={D_game_mode=1}] run function st:deathmatch/system/team_deathmatch
execute if entity @a[scores={D_game_mode=2}] run function st:deathmatch/system/sunfish



###HIGH LEVEL PASSIVE###

#unlimited ammo
item replace entity @a[nbt={SelectedItem:{tag:{display:{Lore:["\"mainweapon\""]}}}}] container.35 with air

#reloading...
item replace entity @a[scores={D_mainweapon_reload=1..}] container.0 with minecraft:stick[minecraft:item_name="\"reloading...\""]
item replace entity @a[scores={D_missile_reload=1..}] container.1 with minecraft:stick[minecraft:item_name="\"reloading...\""]
item replace entity @a[scores={D_aid_reload=1..}] container.2 with minecraft:stick[minecraft:item_name="\"reloading...\""]
item replace entity @a[scores={D_airstrike_reload=1..}] container.6 with minecraft:stick[minecraft:item_name="\"reloading...\""]
item replace entity @a[scores={D_jet_reload=1..}] container.5 with minecraft:stick[minecraft:item_name="\"reloading...\""]
item replace entity @a[scores={D_wall_reload=1..}] container.4 with minecraft:stick[minecraft:item_name="\"reloading...\""]
item replace entity @a[scores={D_smoke_reload=1..}] container.3 with minecraft:stick[minecraft:item_name="\"reloading...\""]

#action bar
title @a[nbt={active_effects:[{id:"minecraft:glowing",amplifier:0b}]}] actionbar "DETECTED"
title @a[nbt={active_effects:[{id:"minecraft:glowing",amplifier:1b}]}] actionbar [{"text":"DETECTED","color":"red"}]
title @a[nbt=!{active_effects:[{id:"minecraft:glowing"}]},scores={D_mount_detect=1}] actionbar [{"text":"MOUNTED","color":"gray"}]
title @a[nbt=!{active_effects:[{id:"minecraft:glowing"}]},scores={D_mount_detect=0}] actionbar ""

#daylight
execute if entity @a[scores={D_daylight=0}] run time set day
execute if entity @a[scores={D_daylight=1}] run time set night
execute if entity @a[scores={D_daylight=2}] run time set midnight
execute if entity @a[scores={D_daylight=3}] run time set noon

#daylight tellraw
title @a[scores={D_daylight=0,D_game_timer=-1}] actionbar ["",{"text":"Time : day","color":"yellow"},{"text":" \u0020 Life : ","color":"green"},{"score":{"name":"@p","objective":"D_life_remain"},"color":"green"},{"text":" \u0020 Airstrike : ","color":"green"},{"score":{"name":"@p","objective":"D_airstrike_interval"},"color":"green"}]
title @a[scores={D_daylight=1,D_game_timer=-1}] actionbar ["",{"text":"Time : night","color":"yellow"},{"text":" \u0020 Life : ","color":"green"},{"score":{"name":"@p","objective":"D_life_remain"},"color":"green"},{"text":" \u0020 Airstrike : ","color":"green"},{"score":{"name":"@p","objective":"D_airstrike_interval"},"color":"green"}]
title @a[scores={D_daylight=2,D_game_timer=-1}] actionbar ["",{"text":"Time : midnight","color":"yellow"},{"text":" \u0020 Life : ","color":"green"},{"score":{"name":"@p","objective":"D_life_remain"},"color":"green"},{"text":" \u0020 Airstrike : ","color":"green"},{"score":{"name":"@p","objective":"D_airstrike_interval"},"color":"green"}]
title @a[scores={D_daylight=3,D_game_timer=-1}] actionbar ["",{"text":"Time : noon","color":"yellow"},{"text":" \u0020 Life : ","color":"green"},{"score":{"name":"@p","objective":"D_life_remain"},"color":"green"},{"text":" \u0020 Airstrike : ","color":"green"},{"score":{"name":"@p","objective":"D_airstrike_interval"},"color":"green"}]

#map_trigger
function st:deathmatch/delegation/map_trigger_activate
execute if entity @a[scores={D_spawnpoint_flag=0}] run function st:deathmatch/trigger/delegation/random_spawnpoint

#spawn_random
scoreboard players remove @a[scores={D_spawn_random=1..}] D_spawn_random 1
scoreboard players set @a[scores={D_spawn_random=0}] D_spawn_random 4

#forceload
kill @a[scores={D_forceload_timer=0}]
scoreboard players remove @a[scores={D_forceload_timer=0..}] D_forceload_timer 1

#mount detected
function st:deathmatch/delegation/mount_detect

#world border
execute store result score @a D_current_border run worldborder get

#entity timer
scoreboard players add @e[tag=D_entity_timer] D_entity_timer 1

#explosive timer
scoreboard players remove @e[scores={D_explosive_timer=1..}] D_explosive_timer 1

#projectile timer
scoreboard players add @e[nbt={inGround:0b}] D_outground_timer 1
scoreboard players add @e[nbt={inGround:1b}] D_inground_timer 1

#map_object
function st:deathmatch/delegation/map_object

#low level passive
function st:deathmatch/delegation/low_level_passive


#area effect cloud
tag @e[type=minecraft:area_effect_cloud,nbt={potion_contents:{custom_color:16027147}}] add D_area_effect_cloud
tag @e[type=minecraft:area_effect_cloud,nbt={potion_contents:{custom_color:16027146}}] add D_area_effect_cloud
kill @e[type=minecraft:area_effect_cloud,tag=!D_area_effect_cloud]

#right click
execute as @a store result score @s D_right_click run scoreboard players get @s A_right_click
scoreboard players set @a A_right_click 0

#blindness
execute as @a[nbt={active_effects:[{id:"minecraft:blindness"}]}] at @s run particle minecraft:electric_spark ~ ~1.8 ~ 0.3 0.3 0.3 0 2 force

#D_1v1_shop_upgrade_health
execute as @a[tag=D_1v1_shop_upgrade_health,tag=D_1v1_mode] run attribute @s minecraft:generic.max_health base set 22
execute as @a[tag=D_gift_upgradeHealth,tag=D_normal_mode] run attribute @s minecraft:generic.max_health base set 22

execute as @e[type=arrow] run data merge entity @s {crit:0b}
function st:deathmatch/weapon/missile
function st:deathmatch/weapon/aid_kit
function st:deathmatch/weapon/air_strike
function st:deathmatch/weapon/jet_pack
function st:deathmatch/weapon/wall
function st:deathmatch/weapon/smoke
function st:deathmatch/weapon/utility
function st:deathmatch/weapon/mainweapon
function st:deathmatch/upgrade/apply