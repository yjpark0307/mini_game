###delete book###
function st:deathmatch/weapon/utility_tellraw
execute as @a if entity @s[scores={D_utility_supply=1..}] run clear @s minecraft:written_book[written_book_content~{title:"choose utility"}]



##reload stick
item replace entity @a[scores={D_utility_reload=1..200}] container.7 with minecraft:blaze_rod[minecraft:item_name="\"reloading in 10s...\""]
item replace entity @a[scores={D_utility_reload=201..600}] container.7 with minecraft:breeze_rod[minecraft:item_name="\"reloading in 30s...\""]
item replace entity @a[scores={D_utility_reload=601..}] container.7 with minecraft:stick[minecraft:item_name="\"reloading...\""]


###reload###
#[1]explosive mine [2]gas mine [3]explosive launcher [4]flare launcher [5]timer bomb [6]sniper [7]APS [8]proximity alarm [9]Shield [10]incendiary [11]emp launcher
scoreboard players set @a[scores={D_utility_reload=-1,D_utility_supply=1},nbt=!{Inventory:[{Slot:7b}]}] D_utility_reload 1000
scoreboard players set @a[scores={D_utility_reload=-1,D_utility_supply=2},nbt=!{Inventory:[{Slot:7b}]}] D_utility_reload 1000
scoreboard players set @a[scores={D_utility_reload=-1,D_utility_supply=3},nbt=!{Inventory:[{Slot:7b}]}] D_utility_reload 400
scoreboard players set @a[scores={D_utility_reload=-1,D_utility_supply=4},nbt=!{Inventory:[{Slot:7b}]}] D_utility_reload 1200
scoreboard players set @a[scores={D_utility_reload=-1,D_utility_supply=5},nbt=!{Inventory:[{Slot:7b}]}] D_utility_reload 1200
scoreboard players set @a[scores={D_utility_reload=-1,D_utility_supply=6},nbt=!{Inventory:[{Slot:7b}]}] D_utility_reload 600
scoreboard players set @a[scores={D_utility_reload=-1,D_utility_supply=7},nbt=!{Inventory:[{Slot:7b}]}] D_utility_reload 1000
scoreboard players set @a[scores={D_utility_reload=-1,D_utility_supply=8},nbt=!{Inventory:[{Slot:7b}]}] D_utility_reload 600
scoreboard players set @a[scores={D_utility_reload=-1,D_utility_supply=9},nbt=!{Inventory:[{Slot:7b}]}] D_utility_reload 600
scoreboard players set @a[scores={D_utility_reload=-1,D_utility_supply=10},nbt=!{Inventory:[{Slot:7b}]}] D_utility_reload 600
scoreboard players set @a[scores={D_utility_reload=-1,D_utility_supply=11},nbt=!{Inventory:[{Slot:7b}]}] D_utility_reload 600
scoreboard players remove @a[scores={D_utility_reload=0..,D_game_timer=0..}] D_utility_reload 1
scoreboard players remove @a[tag=D_1v1_mode,scores={D_utility_reload=2..,D_game_timer=0..}] D_utility_reload 1
item replace entity @a[scores={D_utility_reload=0,D_utility_supply=1}] container.7 from block 101 -52 231 container.0
item replace entity @a[scores={D_utility_reload=0,D_utility_supply=2}] container.7 from block 101 -52 231 container.1
item replace entity @a[scores={D_utility_reload=0,D_utility_supply=3}] container.7 from block 101 -52 231 container.7
item replace entity @a[scores={D_utility_reload=0,D_utility_supply=4}] container.7 from block 101 -52 231 container.2
item replace entity @a[scores={D_utility_reload=0,D_utility_supply=5}] container.7 from block 101 -52 231 container.3
item replace entity @a[scores={D_utility_reload=0,D_utility_supply=6}] container.7 from block 101 -52 231 container.4
item replace entity @a[scores={D_utility_reload=0,D_utility_supply=7}] container.7 from block 101 -52 231 container.5
item replace entity @a[scores={D_utility_reload=0,D_utility_supply=8}] container.7 from block 101 -52 231 container.8
item replace entity @a[scores={D_utility_reload=0,D_utility_supply=9}] container.7 from block 101 -52 231 container.18
item replace entity @a[scores={D_utility_reload=0,D_utility_supply=10}] container.7 from block 101 -52 231 container.6
item replace entity @a[scores={D_utility_reload=0,D_utility_supply=11}] container.7 from block 101 -52 231 container.19
scoreboard players set @a[scores={D_utility_reload=0}] D_utility_reload -1





###explosive mine###
#태그부여
execute as @e[type=arrow,scores={D_outground_timer=1},nbt={item:{components:{"minecraft:custom_name":'"explosivemine_ammo"'}}}] run tag @s add explosivemine_ammo
#화살처리
execute as @e[type=arrow,tag=explosivemine_ammo,nbt={inGround:1b}] at @s run summon rabbit ~ ~ ~ {NoAI:1,Silent:1b,Tags:["A_kill","explosive_mine","default","D_entity_timer"],RabbitType:2}
kill @e[type=arrow,tag=explosivemine_ammo,nbt={inGround:1b}]

execute as @e[type=arrow,tag=explosivemine_ammo] run data merge entity @s {SoundEvent:"minecraft:entity.snow_golem.death"}
execute as @e[type=arrow,tag=explosivemine_ammo] at @s run particle minecraft:dust{color:[0.4, 0.6, 0.2], scale:1.0} ~ ~ ~ 0 0 0 0 3 force

#지뢰
execute as @e[type=rabbit,tag=explosive_mine,tag=default,scores={D_entity_timer=100..}] at @s if entity @a[gamemode=survival,distance=..3,predicate=!st:sneak] run scoreboard players set @s D_explosive_timer 10
execute as @e[type=rabbit,tag=explosive_mine,tag=default,scores={D_entity_timer=100..}] at @s if entity @a[gamemode=survival,distance=..3,predicate=!st:sneak] run tag @s remove default

execute as @e[type=rabbit,tag=explosive_mine,scores={D_entity_timer=100..,D_explosive_timer=0}] at @s run summon creeper ~ ~ ~ {Fuse:0, ExplosionRadius:3}
execute as @e[type=rabbit,tag=explosive_mine,scores={D_entity_timer=100..,D_explosive_timer=0}] at @s run effect give @a[gamemode=survival,distance=..4] minecraft:glowing 4 1 true
execute as @e[type=rabbit,tag=explosive_mine,scores={D_entity_timer=100..,D_explosive_timer=0}] at @s run effect give @a[gamemode=survival,distance=..4] minecraft:blindness 4 0 true
execute as @e[type=rabbit,tag=explosive_mine,scores={D_entity_timer=100..,D_explosive_timer=0}] at @s if entity @a[gamemode=survival,distance=..4] run tellraw @a [{"selector":"@a[gamemode=survival,distance=..4]","color":"gray"},{"text":" is damaged by ","color":"white"},{"text":"EXPLOSIVE MINE","color":"aqua"}]
execute as @e[type=rabbit,tag=explosive_mine,scores={D_entity_timer=100..,D_explosive_timer=0}] run kill @s

execute as @e[type=rabbit,tag=explosive_mine, scores={D_entity_timer=1..100}] at @s run particle minecraft:ash ~ ~1 ~ 0 0 0 0 1 force
execute as @e[type=rabbit,tag=explosive_mine, scores={D_explosive_timer=1..}] at @s run particle minecraft:small_flame ~ ~1 ~ 0 0 0 0 1 force






###gas mine###
#태그부여
execute as @e[type=arrow,scores={D_outground_timer=1},nbt={item:{components:{"minecraft:custom_name":'"gasmine_ammo"'}}}] run tag @s add gasmine_ammo
#화살처리
execute as @e[type=arrow,tag=gasmine_ammo,nbt={inGround:1b}] at @s run summon rabbit ~ ~ ~ {NoAI:1,Silent:1b,Tags:["A_kill","gas_mine","D_entity_timer"],RabbitType:2}
kill @e[type=arrow,tag=gasmine_ammo,nbt={inGround:1b}]

execute as @e[type=arrow,tag=gasmine_ammo] run data merge entity @s {SoundEvent:"minecraft:entity.snow_golem.death"}
execute as @e[type=arrow,tag=gasmine_ammo] at @s run particle minecraft:dust{color:[0.4, 0.6, 0.2], scale:1.0} ~ ~ ~ 0 0 0 0 3 force

#지뢰
execute as @e[type=rabbit,tag=gas_mine,scores={D_entity_timer=100..}] at @s run effect give @a[gamemode=survival,distance=..3,predicate=!st:sneak] minecraft:poison 5 1 true
execute as @e[type=rabbit,tag=gas_mine,scores={D_entity_timer=100..}] at @s run effect give @a[gamemode=survival,distance=..3,predicate=!st:sneak] minecraft:glowing 8 1 true

execute as @e[type=rabbit,tag=gas_mine,scores={D_entity_timer=100..}] at @s if entity @a[gamemode=survival,distance=..3,predicate=!st:sneak] run tellraw @a [{"selector":"@a[gamemode=survival,distance=..3]","color":"gray"},{"text":" is damaged by ","color":"white"},{"text":"GAS MINE","color":"aqua"}]

execute as @e[type=rabbit,tag=gas_mine,scores={D_entity_timer=100..}] at @s if entity @a[gamemode=survival,distance=..3,predicate=!st:sneak] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.01 120 force @a
execute as @e[type=rabbit,tag=gas_mine,scores={D_entity_timer=100..}] at @s if entity @a[gamemode=survival,distance=..3,predicate=!st:sneak] run playsound minecraft:block.fire.extinguish player @a
execute as @e[type=rabbit,tag=gas_mine,scores={D_entity_timer=100..}] at @s if entity @a[gamemode=survival,distance=..3,predicate=!st:sneak] run kill @s
execute as @e[type=rabbit,tag=gas_mine,scores={D_entity_timer=1..100}] at @s run particle minecraft:ash ~ ~1 ~ 0 0 0 0 1 force



###explosive launcher###
#태그부여
execute as @e[type=arrow,scores={D_outground_timer=1},nbt={item:{components:{"minecraft:custom_name":'"explosivelauncher_ammo"'}}}] run tag @s add explosivelauncher_ammo

#화살처리
execute as @e[type=arrow,tag=explosivelauncher_ammo,tag=!D_entity_timer,nbt={inGround:1b}] at @s run playsound block.chain.break player @a ~ ~ ~ 1 0.6

tag @e[type=arrow,tag=explosivelauncher_ammo,nbt={inGround:1b}] add D_entity_timer
execute as @e[type=arrow,tag=explosivelauncher_ammo,scores={D_entity_timer=30}] at @s run summon creeper ~ ~ ~ {Fuse:0, ExplosionRadius:3, Silent:1b, NoAI:1b}
kill @e[type=arrow,tag=explosivelauncher_ammo,scores={D_entity_timer=30}]

execute as @e[type=arrow,tag=explosivelauncher_ammo,scores={D_entity_timer=..30}] at @s run particle smoke ~ ~ ~ 0 0 0 0 3 force
execute as @e[type=arrow,tag=explosivelauncher_ammo,scores={D_entity_timer=30}] at @s run particle smoke ~ ~ ~ 1.2 1.2 1.2 0 200 force

execute as @e[type=arrow,tag=explosivelauncher_ammo,scores={D_outground_timer=1}] run data merge entity @s {damage:1.0d}
execute as @e[type=arrow,tag=explosivelauncher_ammo,scores={D_outground_timer=1}] run data merge entity @s {SoundEvent:"minecraft:block.stone.break"}
execute as @e[type=arrow,tag=explosivelauncher_ammo,tag=!D_entity_timer] at @s run particle minecraft:dust{color:[1.0, 0.0, 0.0], scale:1.0} ~ ~ ~ 0 0 0 0 3 force



###flare luncher###
#태그부여
execute as @e[type=arrow,scores={D_outground_timer=1},nbt={item:{components:{"minecraft:custom_name":'"flarelauncher_ammo"'}}}] run tag @s add flarelauncher_ammo
#화살처리
execute as @e[type=arrow,tag=flarelauncher_ammo,nbt={inGround:1b}] at @s run summon armor_stand ~ ~ ~ {Tags:["A_kill","flare","D_entity_timer"],Invisible:1b,Marker:1b,Invulnerable:1b}
execute as @e[type=arrow,tag=flarelauncher_ammo,nbt={inGround:1b}] at @s run playsound minecraft:entity.firework_rocket.twinkle_far player @a ~ ~ ~ 2 0.6
kill @e[type=arrow,tag=flarelauncher_ammo,nbt={inGround:1b}]

execute as @e[type=arrow,tag=flarelauncher_ammo] at @s run particle end_rod ~ ~ ~ 0 0 0 0 1 force

#플래시
execute as @e[type=armor_stand,tag=flare] at @s run effect give @a[gamemode=survival,distance=..13] minecraft:glowing 1 1 true
execute as @e[type=armor_stand,tag=flare] at @s run effect give @a[gamemode=survival,distance=..7] minecraft:blindness 2 1 true
execute as @e[type=armor_stand,tag=flare] at @s run effect give @e[type=rabbit,tag=explosive_mine,distance=..13] minecraft:glowing 1 1 true
execute as @e[type=armor_stand,tag=flare] at @s run effect give @e[type=rabbit,tag=gas_mine,distance=..13] minecraft:glowing 1 1 true

execute as @e[type=armor_stand,tag=flare] at @s run particle end_rod ~ ~ ~ 0 0 0 0.08 5 force
execute as @e[type=armor_stand,tag=flare] at @s run particle flame ~ ~ ~ 0 0 0 0.05 1 force

execute as @e[type=armor_stand,tag=flare,scores={D_entity_timer=40}] at @s run playsound minecraft:entity.firework_rocket.twinkle_far player @a ~ ~ ~ 2 0.6
execute as @e[type=armor_stand,tag=flare,scores={D_entity_timer=80}] at @s run playsound minecraft:entity.firework_rocket.twinkle_far player @a ~ ~ ~ 2 0.6
execute as @e[type=armor_stand,tag=flare,scores={D_entity_timer=120}] at @s run playsound minecraft:entity.firework_rocket.twinkle_far player @a ~ ~ ~ 2 0.6
kill @e[type=armor_stand,tag=flare, scores={D_entity_timer=160}]





###Timer bomb###
#태그부여
execute as @e[type=arrow,scores={D_outground_timer=1},nbt={item:{components:{"minecraft:custom_name":'"timerbomb_ammo"'}}}] run tag @s add timerbomb_ammo

execute as @e[type=arrow,tag=timerbomb_ammo,nbt={inGround:1b}] at @s run summon rabbit ~ ~ ~ {NoAI:1,Invulnerable:1b,Silent:1b,Tags:["A_kill","timer_bomb","D_entity_timer"]}
kill @e[type=arrow,tag=timerbomb_ammo,nbt={inGround:1b}]

execute as @e[type=arrow,tag=timerbomb_ammo] run data merge entity @s {SoundEvent:"minecraft:block.anvil.hit"}
execute as @e[type=arrow,tag=timerbomb_ammo] at @s run particle minecraft:dust{color:[1.0, 0.0, 0.0], scale:1.0} ~ ~ ~ 0 0 0 0 3 force

#폭탄
execute as @e[type=rabbit,tag=timer_bomb,scores={D_entity_timer=40}] at @s run summon creeper ~ ~ ~ {Fuse:0, ExplosionRadius:4, Silent:1b, Deathtime:19}
execute as @e[type=rabbit,tag=timer_bomb,scores={D_entity_timer=40}] at @s run effect give @a[gamemode=survival,distance=..7] minecraft:blindness 5 1 true
execute as @e[type=rabbit,tag=timer_bomb,scores={D_entity_timer=40}] at @s run particle flame ~ ~ ~ 1.5 1.5 1.5 0 200 force
execute as @e[type=rabbit,tag=timer_bomb,scores={D_entity_timer=40}] at @s run tellraw @a[gamemode=survival,distance=..7] {"text":"YOU damaged by TIMER BOMB","color":"red"}
kill @e[type=rabbit,tag=timer_bomb,scores={D_entity_timer=40}]





###Sniper###
#태그부여
execute as @e[type=arrow,scores={D_outground_timer=1},nbt={item:{components:{"minecraft:custom_name":'"sniper_ammo"'}}}] run tag @s add sniper_ammo
#화살처리
execute as @e[type=arrow,tag=sniper_ammo,scores={D_outground_timer=1}] run data merge entity @s {damage:2.34d}
execute as @e[type=arrow,tag=sniper_ammo,scores={D_outground_timer=2}] run data merge entity @s {damage:2.65d}
execute as @e[type=arrow,tag=sniper_ammo,scores={D_outground_timer=4}] run data merge entity @s {damage:2.96d}
execute as @e[type=arrow,tag=sniper_ammo,scores={D_outground_timer=8}] run data merge entity @s {damage:3.28d}

execute as @e[type=arrow,tag=sniper_ammo,scores={D_outground_timer=1}] store result entity @s Motion[0] double 0.0002 run data get entity @s Motion[0] 10000
execute as @e[type=arrow,tag=sniper_ammo,scores={D_outground_timer=1}] store result entity @s Motion[1] double 0.0002 run data get entity @s Motion[1] 10000
execute as @e[type=arrow,tag=sniper_ammo,scores={D_outground_timer=1}] store result entity @s Motion[2] double 0.0002 run data get entity @s Motion[2] 10000

kill @e[type=arrow,tag=sniper_ammo,nbt={inGround:1b}]

execute as @e[type=arrow,tag=sniper_ammo,scores={D_outground_timer=1}] at @s run playsound minecraft:entity.firework_rocket.large_blast_far voice @a ~ ~ ~ 2.5 0
execute as @e[type=arrow,tag=sniper_ammo,scores={D_outground_timer=1}] at @s run playsound minecraft:entity.firework_rocket.large_blast_far voice @a ~ ~ ~ 2.5 0.7

execute as @e[type=arrow,tag=sniper_ammo,scores={D_outground_timer=8..}] at @s run particle minecraft:dust{color:[1.0, 0.0, 0.0], scale:1.0} ~ ~ ~ 0 0 0 0 3 force
execute as @e[type=arrow,tag=sniper_ammo] run data merge entity @s {SoundEvent:"minecraft:entity.firework_rocket.large_blast_far"}



###APS###
execute as @a[scores={D_right_click=1}] if items entity @s weapon.mainhand nether_star[minecraft:custom_name='"APS"'] run scoreboard players set @s D_aps_used 1
execute as @a[scores={D_right_click=1}] if items entity @s weapon.mainhand nether_star[minecraft:custom_name='"APS"'] run clear @s nether_star[minecraft:custom_name='"APS"']

scoreboard players set @a[scores={D_aps_used=1..}] D_aps_timer 60
scoreboard players set @a[scores={D_aps_used=1..}] D_aps_used 0
scoreboard players remove @a[scores={D_aps_timer=0..}] D_aps_timer 1

execute as @e[type=arrow,scores={D_outground_timer=1}, nbt={item:{components:{"minecraft:lore":['"blockable_by_aps"']}}}] run tag @s add blockable_by_aps
execute as @e[type=trident,tag=!blockable_by_aps] run tag @s add blockable_by_aps

execute as @e[tag=blockable_by_aps] at @s if entity @a[scores={D_aps_timer=0..},distance=..4] run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.05 10 force
execute as @e[tag=blockable_by_aps] at @s if entity @a[scores={D_aps_timer=0..},distance=..4] run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 1 0
execute as @e[tag=blockable_by_aps] at @s if entity @a[scores={D_aps_timer=0..},distance=..4] run kill @s

execute as @a[scores={D_aps_timer=0..}] at @s run particle minecraft:soul_fire_flame ~ ~2.5 ~ 0 0 0 0 1 force
#sound
execute as @a[scores={D_aps_timer=59}] at @s run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 1 1
execute as @a[scores={D_aps_timer=40}] at @s run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 1 1
execute as @a[scores={D_aps_timer=20}] at @s run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 1 1
execute as @a[scores={D_aps_timer=0}] at @s run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 1 1






###Proximity Alarm###
#태그부여
execute as @e[type=arrow,scores={D_outground_timer=1},nbt={item:{components:{"minecraft:custom_name":'"proximityalarm_ammo"'}}}] run tag @s add proximityalarm_ammo
#화살처리
execute as @e[type=arrow,tag=proximityalarm_ammo,nbt={inGround:1b}] at @s run summon vex ~ ~ ~ {NoAI:1,Silent:1b,Tags:["A_kill","D_entity_timer","proximity_alarm"],Health:7}
kill @e[type=arrow,tag=proximityalarm_ammo,nbt={inGround:1b}]

execute as @e[type=arrow,tag=proximityalarm_ammo] run data merge entity @s {SoundEvent:"minecraft:entity.snow_golem.death"}
execute as @e[type=arrow,tag=proximityalarm_ammo] at @s run particle minecraft:dust{color:[0.4, 0.6, 0.2], scale:1.0} ~ ~ ~ 0 0 0 0 3 force

#알람
execute as @e[type=vex,tag=proximity_alarm] at @s if entity @a[gamemode=survival, distance=..6] run playsound minecraft:block.note_block.bell player @a ~ ~ ~ 2 0 0
execute as @e[type=vex,tag=proximity_alarm] at @s if entity @a[gamemode=survival, distance=..6] run effect give @s glowing 1 1 true
kill @e[type=vex,tag=proximity_alarm,scores={D_entity_timer=1200}]




###shield###
execute as @a[scores={D_shield_flash=5..}] at @s anchored eyes positioned ^ ^ ^4.5 if entity @a[gamemode=survival,distance=..4.5,nbt=!{SelectedItem:{id:"minecraft:shield"}}] run particle minecraft:flash ^ ^ ^2 0 0 0 0 20 force
execute as @a[scores={D_shield_flash=5..}] at @s anchored eyes if entity @a[gamemode=survival,distance=..4.5,nbt=!{SelectedItem:{id:"minecraft:shield"}}] run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1 1 0
execute as @a[scores={D_shield_flash=5..}] at @s anchored eyes positioned ^ ^ ^4.5 run effect give @a[gamemode=survival,distance=..4.5,nbt=!{SelectedItem:{id:"minecraft:shield"}}] blindness 4 1 true
execute as @a[scores={D_shield_flash=5..}] at @s anchored eyes positioned ^ ^ ^4.5 if entity @a[gamemode=survival,distance=..4.5,nbt=!{SelectedItem:{id:"minecraft:shield"}}] run clear @s shield
scoreboard players set @a[scores={D_shield_flash=5..}] D_shield_flash 0



###incendiary###
execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_effects:[{id:"minecraft:hero_of_the_village"}],custom_color:16027147},Age:0}] run data merge entity @s {Particle:{type:"minecraft:flame"},Duration:300,Radius:3.5f,RadiusPerTick:-0.01f,RadiusOnUse:0.0f}
execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_effects:[{id:"minecraft:hero_of_the_village"}],custom_color:16027147},Age:0}] at @s run particle lava ~ ~ ~ 2 0 2 0 50 force

execute as @a[nbt={active_effects:[{id:"minecraft:hero_of_the_village"}]}] run damage @s 1.2 minecraft:on_fire
execute as @a[nbt={active_effects:[{id:"minecraft:hero_of_the_village"}]}] at @s run particle minecraft:flame ~ ~ ~ 1 1 1 0 10 force


###EMP##
#태그부여
execute as @e[type=arrow,scores={D_outground_timer=1},nbt={item:{components:{"minecraft:custom_name":'"emplauncher_ammo"'}}}] run tag @s add emplauncher_ammo

#화살처리
execute as @e[type=arrow,tag=emplauncher_ammo,nbt={inGround:1b}] at @s run tag @a[distance=..7] add D_emp_effect
execute as @e[type=arrow,tag=emplauncher_ammo,nbt={inGround:1b}] at @s run playsound minecraft:entity.firework_rocket.twinkle_far player @a ~ ~ ~ 2 0.6
kill @e[type=arrow,tag=emplauncher_ammo,nbt={inGround:1b}]

execute as @e[type=arrow,tag=emplauncher_ammo] at @s run particle end_rod ~ ~ ~ 0 0 0 0 1 force



#clear offhand
item replace entity @a[nbt={SelectedItemSlot:7}] weapon.offhand with air