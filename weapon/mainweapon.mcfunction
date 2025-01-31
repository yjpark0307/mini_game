###delete book###
execute as @a if entity @s[scores={D_mainweapon_supply=1..,D_mainweapon_reload=-1}] run clear @s minecraft:written_book[written_book_content~{title:"choose mainweapon"}]

###reload###
#[1]rifle [2]falmethrower [3]shotgun [4]machinegun
scoreboard players set @a[scores={D_mainweapon_reload=-1,D_mainweapon_supply=0},nbt=!{Inventory:[{Slot:0b}]}] D_mainweapon_rpm -1
scoreboard players set @a[scores={D_mainweapon_reload=-1,D_mainweapon_supply=0},nbt=!{Inventory:[{Slot:0b}]}] D_mainweapon_mode 0
item replace entity @a[scores={D_mainweapon_reload=-1,D_mainweapon_supply=0},nbt=!{Inventory:[{Slot:0b}]}] container.0 from block 101 -52 229 container.0
scoreboard players set @a[tag=!D_specialization_scout,scores={D_mainweapon_reload=-1,D_mainweapon_supply=1..},nbt=!{Inventory:[{Slot:0b}]}] D_mainweapon_reload 160
scoreboard players set @a[tag=D_specialization_scout,scores={D_mainweapon_reload=-1,D_mainweapon_supply=1..},nbt=!{Inventory:[{Slot:0b}]}] D_mainweapon_reload 80
scoreboard players remove @a[scores={D_mainweapon_reload=1..}] D_mainweapon_reload 1
scoreboard players remove @a[tag=D_1v1_mode,scores={D_mainweapon_reload=1..}] D_mainweapon_reload 1
scoreboard players remove @a[tag=D_1v1_mode,tag=D_1v1_shop_quick_change,scores={D_mainweapon_reload=4..}] D_mainweapon_reload 4
item replace entity @a[scores={D_mainweapon_supply=1,D_mainweapon_reload=0}] container.0 from block 102 -51 231 container.0
item replace entity @a[scores={D_mainweapon_supply=2,D_mainweapon_reload=0}] container.0 from block 102 -51 231 container.1
item replace entity @a[scores={D_mainweapon_supply=3,D_mainweapon_reload=0}] container.0 from block 102 -51 231 container.2
item replace entity @a[scores={D_mainweapon_supply=4,D_mainweapon_reload=0}] container.0 from block 102 -51 231 container.3
item replace entity @a[scores={D_mainweapon_supply=5,D_mainweapon_reload=0}] container.0 from block 102 -51 231 container.4
item replace entity @a[scores={D_mainweapon_supply=6,D_mainweapon_reload=0}] container.0 from block 102 -51 231 container.5
item replace entity @a[scores={D_mainweapon_supply=7,D_mainweapon_reload=0}] container.0 from block 102 -51 231 container.6
scoreboard players set @a[scores={D_mainweapon_supply=4,D_mainweapon_reload=0}] D_mainweapon_mode 1
scoreboard players set @a[scores={D_mainweapon_supply=7,D_mainweapon_reload=0}] D_mainweapon_mode 1
execute as @a[scores={D_mainweapon_reload=-1,D_mainweapon_supply=1..}] store result score @s D_mainweapon_detect run scoreboard players get @s D_mainweapon_supply
scoreboard players set @a[scores={D_mainweapon_reload=-1,D_mainweapon_supply=1..}] D_mainweapon_supply 0
scoreboard players set @a[scores={D_mainweapon_reload=0}] D_mainweapon_reload -1



##rpm
scoreboard players remove @a[scores={D_mainweapon_rpm=0..}] D_mainweapon_rpm 1
scoreboard players remove @a[scores={D_mainweapon_heat=1..}] D_mainweapon_heat 1

execute as @a[scores={D_mainweapon_rpm=-1,D_mount_detect=0}] if items entity @s weapon.mainhand crossbow[minecraft:custom_name='"rifle"',minecraft:damage=464] run scoreboard players set @s D_mainweapon_rpm 11
execute as @a[scores={D_mainweapon_rpm=-1,D_mount_detect=1}] if items entity @s weapon.mainhand crossbow[minecraft:custom_name='"rifle"',minecraft:damage=464] run scoreboard players set @s D_mainweapon_rpm 7

execute as @a[scores={D_mainweapon_rpm=-1}] if items entity @s weapon.mainhand crossbow[minecraft:custom_name='"flame_thrower"',minecraft:damage=464] run scoreboard players set @s D_mainweapon_rpm 6

execute as @a[scores={D_mainweapon_rpm=-1}] if items entity @s weapon.mainhand crossbow[minecraft:custom_name='"buck_shot_gun"',minecraft:damage=464] run scoreboard players set @s D_mainweapon_rpm 17

execute as @a[scores={D_mainweapon_rpm=-1,D_mainweapon_heat=..100,D_mount_detect=0}] if items entity @s weapon.mainhand crossbow[minecraft:custom_name='"machine_gun"',minecraft:damage=464] run scoreboard players add @s D_mainweapon_heat 7
execute as @a[scores={D_mainweapon_rpm=-1,D_mainweapon_heat=..100,D_mount_detect=1}] if items entity @s weapon.mainhand crossbow[minecraft:custom_name='"machine_gun"',minecraft:damage=464] run scoreboard players add @s D_mainweapon_heat 4
execute as @a[scores={D_mainweapon_rpm=-1,D_mainweapon_mode=1,D_mainweapon_heat=..70}] if items entity @s weapon.mainhand crossbow[minecraft:custom_name='"machine_gun"',minecraft:damage=464] run scoreboard players set @s D_mainweapon_rpm 1
execute as @a[scores={D_mainweapon_rpm=-1,D_mainweapon_mode=2,D_mainweapon_heat=..70}] if items entity @s weapon.mainhand crossbow[minecraft:custom_name='"machine_gun"',minecraft:damage=464] run scoreboard players set @s D_mainweapon_rpm 7
execute as @a[scores={D_mainweapon_rpm=-1,D_mainweapon_heat=71..}] if items entity @s weapon.mainhand crossbow[minecraft:custom_name='"machine_gun"',minecraft:damage=464] run scoreboard players set @s D_mainweapon_rpm 7

execute as @a[scores={D_mainweapon_rpm=-1}] if items entity @s weapon.mainhand crossbow[minecraft:custom_name='"flechette_shot_gun"',minecraft:damage=464] run scoreboard players set @s D_mainweapon_rpm 12

execute as @a[scores={D_mainweapon_rpm=-1,D_mount_detect=0}] if items entity @s weapon.mainhand crossbow[minecraft:custom_name='"kar98k"',minecraft:damage=464] run scoreboard players set @s D_mainweapon_rpm 40
execute as @a[scores={D_mainweapon_rpm=-1,D_mount_detect=1}] if items entity @s weapon.mainhand crossbow[minecraft:custom_name='"kar98k"',minecraft:damage=464] run scoreboard players set @s D_mainweapon_rpm 30

execute as @a[scores={D_mainweapon_rpm=-1}] if items entity @s weapon.mainhand crossbow[minecraft:custom_name='"grenade_launcher"',minecraft:damage=464] run scoreboard players set @s D_mainweapon_rpm 30

item replace entity @a[scores={D_mainweapon_detect=1,D_mainweapon_rpm=0}] container.0 from block 102 -51 231 container.0
item replace entity @a[scores={D_mainweapon_detect=2,D_mainweapon_rpm=0}] container.0 from block 102 -51 231 container.1
item replace entity @a[scores={D_mainweapon_detect=3,D_mainweapon_rpm=0}] container.0 from block 102 -51 231 container.2
item replace entity @a[scores={D_mainweapon_detect=4,D_mainweapon_rpm=0,D_mainweapon_mode=1}] container.0 from block 102 -51 231 container.3
item replace entity @a[scores={D_mainweapon_detect=4,D_mainweapon_rpm=0,D_mainweapon_mode=2}] container.0 from block 102 -51 231 container.12
item replace entity @a[scores={D_mainweapon_detect=5,D_mainweapon_rpm=0}] container.0 from block 102 -51 231 container.4
item replace entity @a[scores={D_mainweapon_detect=6,D_mainweapon_rpm=0}] container.0 from block 102 -51 231 container.5
item replace entity @a[scores={D_mainweapon_detect=7,D_mainweapon_rpm=0,D_mainweapon_mode=1}] container.0 from block 102 -51 231 container.6
item replace entity @a[scores={D_mainweapon_detect=7,D_mainweapon_rpm=0,D_mainweapon_mode=2}] container.0 from block 102 -51 231 container.15


#템플릿
#고유태그부여 -> 초기값설정 -> 박힌화살 처리 -> 옵션

##rifle
#태그부여
execute as @e[type=arrow,scores={D_outground_timer=1},nbt={item:{components:{"minecraft:custom_name":'"mainweapon_rifle_ammo"'}}}] run tag @s add rifle_ammo
#초기값
execute as @e[type=arrow,tag=rifle_ammo,scores={D_outground_timer=1}] run data merge entity @s {damage:1.56d}
execute as @e[type=arrow,tag=rifle_ammo,scores={D_outground_timer=1},nbt={inGround:0b}] at @s run playsound minecraft:entity.firework_rocket.blast voice @a ~ ~ ~ 2.2 0
execute as @e[type=arrow,tag=rifle_ammo,scores={D_outground_timer=1},nbt={inGround:0b}] at @s run playsound minecraft:entity.firework_rocket.large_blast voice @a ~ ~ ~ 2.2 0
#추가 초기설정
execute as @e[type=arrow,tag=rifle_ammo,scores={D_outground_timer=1}] store result entity @s Motion[0] double 0.0002 run data get entity @s Motion[0] 10000
execute as @e[type=arrow,tag=rifle_ammo,scores={D_outground_timer=1}] store result entity @s Motion[1] double 0.0002 run data get entity @s Motion[1] 10000
execute as @e[type=arrow,tag=rifle_ammo,scores={D_outground_timer=1}] store result entity @s Motion[2] double 0.0002 run data get entity @s Motion[2] 10000
#박힌화살 처리
execute as @e[type=arrow,tag=rifle_ammo,nbt={inGround:1b}] at @s if entity @a[scores={D_game_timer=0..}] run summon creeper ~ ~ ~ {Fuse:0, ExplosionRadius:1,Silent:1b,DeathTime:19}
execute as @e[type=arrow,tag=rifle_ammo,nbt={inGround:1b}] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=arrow,tag=rifle_ammo,nbt={inGround:1b}] at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.002 1 force
kill @e[type=arrow,tag=rifle_ammo,nbt={inGround:1b}]
#옵션
execute as @e[type=arrow,tag=rifle_ammo,scores={D_outground_timer=1..}] at @s run particle smoke ~ ~ ~ 0 0 0 0 1 force




##flame thrower
#태그부여
execute as @e[type=arrow,scores={D_outground_timer=1},nbt={item:{components:{"minecraft:custom_name":'"mainweapon_flamethrower_ammo"'}}}] run tag @s add flamethrower_ammo
#초기값
execute as @e[type=arrow,tag=flamethrower_ammo,scores={D_outground_timer=1}] run data merge entity @s {damage:1.56d}
execute as @e[type=arrow,tag=flamethrower_ammo,scores={D_outground_timer=1}] run data merge entity @s {SoundEvent:"minecraft:block.fire.ambient"}
#추가 초기설정
execute as @e[type=arrow,tag=flamethrower_ammo,scores={D_outground_timer=1}] store result entity @s Motion[0] double 0.00007 run data get entity @s Motion[0] 10000
execute as @e[type=arrow,tag=flamethrower_ammo,scores={D_outground_timer=1}] store result entity @s Motion[1] double 0.00007 run data get entity @s Motion[1] 10000
execute as @e[type=arrow,tag=flamethrower_ammo,scores={D_outground_timer=1}] store result entity @s Motion[2] double 0.00007 run data get entity @s Motion[2] 10000
#박힌화살 처리
execute as @e[type=arrow,tag=flamethrower_ammo,nbt={inGround:1b}] at @s run particle lava ~ ~ ~ 0 0 0 0 3 force
execute as @e[type=arrow,tag=flamethrower_ammo,scores={D_outground_timer=11..},nbt={inGround:1b}] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["A_kill","flame","flame_short","D_entity_timer"]}
execute as @e[type=arrow,tag=flamethrower_ammo,scores={D_outground_timer=..10},nbt={inGround:1b}] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["A_kill","flame","flame_long","D_entity_timer"]}
kill @e[type=arrow,tag=flamethrower_ammo,nbt={inGround:1b}]


#옵션
execute as @e[type=arrow,tag=flamethrower_ammo,scores={D_outground_timer=10}] at @s run particle lava ~ ~ ~ 0 0 0 0 3 force
execute as @e[type=arrow,tag=flamethrower_ammo,scores={D_outground_timer=1..10}] at @s run particle flame ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=arrow,tag=flamethrower_ammo,scores={D_outground_timer=11..}] at @s run particle small_flame ~ ~ ~ 0 0 0 0 1 force


#flame
execute as @e[type=armor_stand,tag=flame] at @s run effect give @a[gamemode=survival,distance=..1.8] minecraft:unluck 1 1 true

execute as @e[type=armor_stand,tag=flame_long,scores={D_entity_timer=..55}] at @s run particle minecraft:flame ~ ~ ~ 0.2 0.2 0.2 0.01 3 force
kill @e[type=armor_stand,tag=flame_long,scores={D_entity_timer=65}]

execute as @e[type=armor_stand,tag=flame_short,scores={D_entity_timer=..35}] at @s run particle minecraft:flame ~ ~ ~ 0.2 0.2 0.2 0.01 3 force
kill @e[type=armor_stand,tag=flame_short,scores={D_entity_timer=45}]

execute as @a[nbt={active_effects:[{id:"minecraft:unluck",amplifier:1b}]}] run damage @s 0.95 minecraft:on_fire
execute as @a[nbt={active_effects:[{id:"minecraft:unluck",amplifier:1b}]}] at @s run particle minecraft:flame ~ ~ ~ 1 1 1 0 10 force





##Buck Shot Gun
#태그부여
execute as @e[type=arrow,scores={D_outground_timer=1},nbt={item:{components:{"minecraft:custom_name":'"mainweapon_buckshotgun_ammo"'}}}] run tag @s add buckshotgun_ammo
execute as @e[type=arrow,tag=buckshotgun_ammo,scores={D_outground_timer=1},nbt={item:{components:{"minecraft:lore":['"no_variance"']}}}] run tag @s add no_variance
execute as @e[type=arrow,tag=buckshotgun_ammo,scores={D_outground_timer=1},nbt={item:{components:{"minecraft:lore":['"explosionable"']}}}] run tag @s add explosionable
#초기값
execute as @e[type=arrow,tag=buckshotgun_ammo,scores={D_outground_timer=1}] run data merge entity @s {damage:0.8d}
execute as @e[type=arrow,tag=buckshotgun_ammo,tag=explosionable,scores={D_outground_timer=1},nbt={inGround:0b}] at @s run playsound minecraft:block.vault.break voice @a ~ ~ ~ 3 1
execute as @e[type=arrow,tag=buckshotgun_ammo,tag=explosionable,scores={D_outground_timer=1},nbt={inGround:0b}] at @s run playsound minecraft:block.vault.break voice @a ~ ~ ~ 3 1
#추가 초기설정
execute as @e[type=arrow,tag=buckshotgun_ammo,tag=!no_variance,scores={D_outground_timer=1}] store result score @s D_ammo_variance0 run random value -5000..5000
execute as @e[type=arrow,tag=buckshotgun_ammo,tag=!no_variance,scores={D_outground_timer=1}] store result score @s D_ammo_variance1 run random value -5000..5000
execute as @e[type=arrow,tag=buckshotgun_ammo,tag=!no_variance,scores={D_outground_timer=1}] store result score @s D_ammo_variance2 run random value -5000..5000
execute as @e[type=arrow,tag=buckshotgun_ammo,tag=!no_variance,scores={D_outground_timer=1}] store result score @s D_ammo_motion0 run data get entity @s Motion[0] 10000
execute as @e[type=arrow,tag=buckshotgun_ammo,tag=!no_variance,scores={D_outground_timer=1}] store result score @s D_ammo_motion1 run data get entity @s Motion[1] 10000
execute as @e[type=arrow,tag=buckshotgun_ammo,tag=!no_variance,scores={D_outground_timer=1}] store result score @s D_ammo_motion2 run data get entity @s Motion[2] 10000
execute as @e[type=arrow,tag=buckshotgun_ammo,tag=!no_variance,scores={D_outground_timer=1}] run scoreboard players operation @s D_ammo_motion0 += @s D_ammo_variance0
execute as @e[type=arrow,tag=buckshotgun_ammo,tag=!no_variance,scores={D_outground_timer=1}] run scoreboard players operation @s D_ammo_motion1 += @s D_ammo_variance1
execute as @e[type=arrow,tag=buckshotgun_ammo,tag=!no_variance,scores={D_outground_timer=1}] run scoreboard players operation @s D_ammo_motion2 += @s D_ammo_variance2
execute as @e[type=arrow,tag=buckshotgun_ammo,tag=!no_variance,scores={D_outground_timer=1}] store result entity @s Motion[0] double 0.0001 run scoreboard players get @s D_ammo_motion0
execute as @e[type=arrow,tag=buckshotgun_ammo,tag=!no_variance,scores={D_outground_timer=1}] store result entity @s Motion[1] double 0.0001 run scoreboard players get @s D_ammo_motion1
execute as @e[type=arrow,tag=buckshotgun_ammo,tag=!no_variance,scores={D_outground_timer=1}] store result entity @s Motion[2] double 0.0001 run scoreboard players get @s D_ammo_motion2
#박힌화살 처리
execute as @e[type=arrow,tag=buckshotgun_ammo,tag=explosionable,nbt={inGround:1b}] at @s if entity @a[scores={D_game_timer=0..}] run summon creeper ~ ~ ~ {Fuse:0, ExplosionRadius:1,Silent:1b,DeathTime:19}
execute as @e[type=arrow,tag=buckshotgun_ammo,tag=explosionable,nbt={inGround:1b}] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=arrow,tag=buckshotgun_ammo,tag=explosionable,nbt={inGround:1b}] at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.002 1 force
kill @e[type=arrow,tag=buckshotgun_ammo,nbt={inGround:1b}]


#옵션
kill @e[type=arrow,tag=buckshotgun_ammo,scores={D_outground_timer=5}]

execute as @e[type=arrow,tag=buckshotgun_ammo,scores={D_outground_timer=1..}] at @s run particle cloud ~ ~ ~ 0 0 0 0 1 force



##flechette Shot Gun
#태그부여
execute as @e[type=arrow,scores={D_outground_timer=1},nbt={item:{components:{"minecraft:custom_name":'"mainweapon_flechetteshotgun_ammo"'}}}] run tag @s add flechetteshotgun_ammo
execute as @e[type=arrow,tag=flechetteshotgun_ammo,scores={D_outground_timer=1},nbt={item:{components:{"minecraft:lore":['"dummy"']}}}] run tag @s add dummy
#초기값
execute as @e[type=arrow,tag=flechetteshotgun_ammo,scores={D_outground_timer=1}] run data merge entity @s {damage:2.0d}
execute as @e[type=arrow,tag=flechetteshotgun_ammo,scores={D_outground_timer=2}] run data merge entity @s {damage:1.7d}
execute as @e[type=arrow,tag=flechetteshotgun_ammo,scores={D_outground_timer=4}] run data merge entity @s {damage:1.4d}
execute as @e[type=arrow,tag=flechetteshotgun_ammo,scores={D_outground_timer=6}] run data merge entity @s {damage:1.0d}
execute as @e[type=arrow,tag=flechetteshotgun_ammo,tag=!dummy,scores={D_outground_timer=1},nbt={inGround:0b}] at @s run playsound minecraft:block.vault.break voice @a ~ ~ ~ 3 1
#박힌화살 처리
execute as @e[type=arrow,tag=flechetteshotgun_ammo,nbt={inGround:1b}] at @s if entity @a[scores={D_game_timer=0..}] run summon creeper ~ ~ ~ {Fuse:0, ExplosionRadius:1,Silent:1b,DeathTime:19}
execute as @e[type=arrow,tag=flechetteshotgun_ammo,nbt={inGround:1b}] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=arrow,tag=flechetteshotgun_ammo,nbt={inGround:1b}] at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.002 1 force
kill @e[type=arrow,tag=flechetteshotgun_ammo,nbt={inGround:1b}]


#옵션
kill @e[type=arrow,tag=flechetteshotgun_ammo,scores={D_outground_timer=10}]

execute as @e[type=arrow,tag=flechetteshotgun_ammo,scores={D_outground_timer=1..}] at @s run particle cloud ~ ~ ~ 0 0 0 0 1 force

kill @e[type=arrow,tag=flechetteshotgun_ammo,tag=dummy]



##Machine gun
#태그부여
execute as @e[type=arrow,scores={D_outground_timer=1},nbt={item:{components:{"minecraft:custom_name":'"mainweapon_machinegun_ammo"'}}}] run tag @s add machinegun_ammo
execute as @e[type=arrow,tag=machinegun_ammo,scores={D_outground_timer=1},nbt={item:{components:{"minecraft:lore":['"mode1"']}}}] run tag @s add mode1
execute as @e[type=arrow,tag=machinegun_ammo,scores={D_outground_timer=1},nbt={item:{components:{"minecraft:lore":['"mode2"']}}}] run tag @s add mode2

#초기값
#mode1
execute as @e[type=arrow,tag=machinegun_ammo,tag=mode1,scores={D_outground_timer=1}] run data merge entity @s {damage:1.0d}
execute as @e[type=arrow,tag=machinegun_ammo,tag=mode1,scores={D_outground_timer=15}] run data merge entity @s {damage:0.7d}
#mode2
execute as @e[type=arrow,tag=machinegun_ammo,tag=mode2,scores={D_outground_timer=1}] run data merge entity @s {damage:1.7d}
#
execute as @e[type=arrow,tag=machinegun_ammo,scores={D_outground_timer=1},nbt={inGround:0b}] at @s run playsound minecraft:entity.firework_rocket.blast voice @a ~ ~ ~ 2 0

#박힌화살처리
execute as @e[type=arrow,tag=machinegun_ammo,nbt={inGround:1b}] at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.002 1 force
kill @e[type=arrow,tag=machinegun_ammo,nbt={inGround:1b}]


#옵션
#mode change
execute as @a if items entity @s weapon.offhand minecraft:crossbow[minecraft:custom_name='"machine_gun"'] if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:lore":['"mode1"']}}]}] run scoreboard players set @s D_mainweapon_mode 2
execute as @a if items entity @s weapon.offhand minecraft:crossbow[minecraft:custom_name='"machine_gun"'] if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:lore":['"mode1"']}}]}] run tellraw @s [{"text":"single","color":"dark_green"}]
execute as @a if items entity @s weapon.offhand minecraft:crossbow[minecraft:custom_name='"machine_gun"'] if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:lore":['"mode2"']}}]}] run scoreboard players set @s D_mainweapon_mode 1
execute as @a if items entity @s weapon.offhand minecraft:crossbow[minecraft:custom_name='"machine_gun"'] if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:lore":['"mode2"']}}]}] run tellraw @s [{"text":"normal","color":"dark_green"}]

execute as @a if items entity @s weapon.offhand minecraft:crossbow[minecraft:custom_name='"machine_gun"'] run item replace entity @s container.0 with stick[minecraft:custom_name='"mode change.."']
execute as @a if items entity @s weapon.offhand minecraft:crossbow[minecraft:custom_name='"machine_gun"'] at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.2
execute as @a if items entity @s weapon.offhand minecraft:crossbow[minecraft:custom_name='"machine_gun"'] run scoreboard players set @s D_mainweapon_rpm 10
#
execute as @e[type=arrow,tag=machinegun_ammo] run data merge entity @s {SoundEvent:"minecraft:block.stone.break"}

execute as @a at @s anchored eyes if items entity @s weapon.mainhand crossbow[minecraft:custom_name='"machine_gun"',minecraft:damage=464] if score @s D_mainweapon_heat matches 51.. run particle minecraft:smoke ^ ^-0.3 ^1 0 0 0 0 1 force



###kar98k
#태그부여
execute as @e[type=arrow,scores={D_outground_timer=1},nbt={item:{components:{"minecraft:custom_name":'"mainweapon_kar98k_ammo"'}}}] run tag @s add kar98k_ammo
#초기값
execute as @e[type=arrow,tag=kar98k_ammo,scores={D_outground_timer=1}] run data merge entity @s {damage:2.18d}
execute as @e[type=arrow,tag=kar98k_ammo,scores={D_outground_timer=1},nbt={inGround:0b}] at @s run playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 2.5 2
execute as @e[type=arrow,tag=kar98k_ammo,scores={D_outground_timer=1},nbt={inGround:0b}] at @s run playsound minecraft:entity.firework_rocket.large_blast_far voice @a ~ ~ ~ 2.5 0
execute as @e[type=arrow,tag=kar98k_ammo,scores={D_outground_timer=1},nbt={inGround:0b}] at @s run playsound minecraft:entity.firework_rocket.large_blast_far voice @a ~ ~ ~ 2.5 0
#추가 초기설정
execute as @e[type=arrow,tag=kar98k_ammo,scores={D_outground_timer=1}] store result entity @s Motion[0] double 0.0002 run data get entity @s Motion[0] 10000
execute as @e[type=arrow,tag=kar98k_ammo,scores={D_outground_timer=1}] store result entity @s Motion[1] double 0.0002 run data get entity @s Motion[1] 10000
execute as @e[type=arrow,tag=kar98k_ammo,scores={D_outground_timer=1}] store result entity @s Motion[2] double 0.0002 run data get entity @s Motion[2] 10000
#박힌화살
execute as @e[type=arrow,tag=kar98k_ammo,nbt={inGround:1b}] at @s if entity @a[scores={D_game_timer=0..}] run summon creeper ~ ~ ~ {Fuse:0, ExplosionRadius:1,Silent:1b,DeathTime:19}
execute as @e[type=arrow,tag=kar98k_ammo,nbt={inGround:1b}] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=arrow,tag=kar98k_ammo,nbt={inGround:1b}] at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.002 1 force
kill @e[type=arrow,tag=kar98k_ammo,nbt={inGround:1b}]


#옵션
execute as @e[type=arrow,tag=kar98k_ammo,scores={D_outground_timer=1..}] at @s run particle smoke ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=arrow,tag=kar98k_ammo,scores={D_outground_timer=2}] at @s run particle smoke ~ ~ ~ 0.1 0.1 0.1 0 10 force

execute as @a at @s if items entity @s container.0 crossbow[minecraft:custom_name='"kar98k"',minecraft:damage=464] if score @s D_mainweapon_rpm matches 25 run playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 1 0
execute as @a at @s if items entity @s container.0 crossbow[minecraft:custom_name='"kar98k"',minecraft:damage=464] if score @s D_mainweapon_rpm matches 15 run playsound minecraft:block.chain.break player @a ~ ~ ~ 1 0
execute as @a at @s if items entity @s container.0 crossbow[minecraft:custom_name='"kar98k"',minecraft:damage=464] if score @s D_mainweapon_rpm matches 5 run playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 1 0



##grenade launcher
#태그부여
execute as @e[type=arrow,scores={D_outground_timer=1},nbt={item:{components:{"minecraft:custom_name":'"mainweapon_grenade_ammo"'}}}] run tag @s add grenade_ammo
execute as @e[type=arrow,tag=grenade_ammo,scores={D_outground_timer=1},nbt={item:{components:{"minecraft:lore":['"D_entity_timer"']}}}] run tag @s add D_entity_timer
execute as @e[type=arrow,tag=grenade_ammo,scores={D_outground_timer=1},nbt={item:{components:{"minecraft:lore":['"mode1"']}}}] run tag @s add mode1
execute as @e[type=arrow,tag=grenade_ammo,scores={D_outground_timer=1},nbt={item:{components:{"minecraft:lore":['"mode2"']}}}] run tag @s add mode2

#초기값
execute as @e[type=arrow,tag=grenade_ammo,scores={D_outground_timer=1}] run data merge entity @s {damage:3.0d}
execute as @e[type=arrow,tag=grenade_ammo,scores={D_outground_timer=1},nbt={inGround:0b}] at @s run playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 2.5 2
#mode1
execute as @e[type=arrow,tag=grenade_ammo,tag=mode1,scores={D_outground_timer=1}] store result entity @s Motion[0] double 0.00007 run data get entity @s Motion[0] 10000
execute as @e[type=arrow,tag=grenade_ammo,tag=mode1,scores={D_outground_timer=1}] store result entity @s Motion[1] double 0.00007 run data get entity @s Motion[1] 10000
execute as @e[type=arrow,tag=grenade_ammo,tag=mode1,scores={D_outground_timer=1}] store result entity @s Motion[2] double 0.00007 run data get entity @s Motion[2] 10000
#mode2
execute as @e[type=arrow,tag=grenade_ammo,tag=mode2,scores={D_outground_timer=1}] store result entity @s Motion[0] double 0.00004 run data get entity @s Motion[0] 10000
execute as @e[type=arrow,tag=grenade_ammo,tag=mode2,scores={D_outground_timer=1}] store result entity @s Motion[1] double 0.00004 run data get entity @s Motion[1] 10000
execute as @e[type=arrow,tag=grenade_ammo,tag=mode2,scores={D_outground_timer=1}] store result entity @s Motion[2] double 0.00004 run data get entity @s Motion[2] 10000

#박힌화살처리
execute as @e[type=arrow,tag=grenade_ammo,scores={D_entity_timer=30..},nbt={inGround:1b}] at @s if entity @a[scores={D_game_timer=0..}] run particle minecraft:smoke ~ ~ ~ 1.5 1.5 1.5 0 600 force
execute as @e[type=arrow,tag=grenade_ammo,scores={D_entity_timer=30..},nbt={inGround:1b}] at @s if entity @a[scores={D_game_timer=0..}] run summon creeper ~ ~ ~ {Fuse:0, ExplosionRadius:1,Silent:1b,DeathTime:19}
execute as @e[type=arrow,tag=grenade_ammo,scores={D_entity_timer=30..},nbt={inGround:1b}] at @s if entity @a[scores={D_game_timer=0..}] run execute as @a[distance=..3.5] run damage @s 10 minecraft:player_explosion
execute as @e[type=arrow,tag=grenade_ammo,scores={D_entity_timer=30..},nbt={inGround:1b}] at @s if entity @a[scores={D_game_timer=0..}] run execute as @a[distance=..6] run damage @s 3 minecraft:player_explosion
execute as @e[type=arrow,tag=grenade_ammo,scores={D_entity_timer=30..},nbt={inGround:1b}] at @s if entity @a[scores={D_game_timer=0..}] run execute as @a[distance=..8] run damage @s 2 minecraft:player_explosion
kill @e[type=arrow,tag=grenade_ammo,scores={D_entity_timer=30..}]

#옵션
#mode change
execute as @a if items entity @s weapon.offhand minecraft:crossbow[minecraft:custom_name='"grenade_launcher"'] if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:lore":['"mode1"']}}]}] run scoreboard players set @s D_mainweapon_mode 2
execute as @a if items entity @s weapon.offhand minecraft:crossbow[minecraft:custom_name='"grenade_launcher"'] if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:lore":['"mode1"']}}]}] run tellraw @s [{"text":"short distance","color":"dark_green"}]
execute as @a if items entity @s weapon.offhand minecraft:crossbow[minecraft:custom_name='"grenade_launcher"'] if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:lore":['"mode2"']}}]}] run scoreboard players set @s D_mainweapon_mode 1
execute as @a if items entity @s weapon.offhand minecraft:crossbow[minecraft:custom_name='"grenade_launcher"'] if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:lore":['"mode2"']}}]}] run tellraw @s [{"text":"long distance","color":"dark_green"}]

execute as @a if items entity @s weapon.offhand minecraft:crossbow[minecraft:custom_name='"grenade_launcher"'] run item replace entity @s container.0 with stick[minecraft:custom_name='"mode change.."']
execute as @a if items entity @s weapon.offhand minecraft:crossbow[minecraft:custom_name='"grenade_launcher"'] at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.2
execute as @a if items entity @s weapon.offhand minecraft:crossbow[minecraft:custom_name='"grenade_launcher"'] run scoreboard players set @s D_mainweapon_rpm 30
#
execute as @e[nbt={item:{components:{"minecraft:custom_name":'"mainweapon_grenade_ammo"'}}}] run data merge entity @s {PierceLevel:1b}

execute as @e[type=arrow,tag=grenade_ammo,scores={D_outground_timer=1..}] at @s run particle smoke ~ ~ ~ 0 0 0 0 1 force


#clear offhand
item replace entity @a[gamemode=survival,nbt={SelectedItemSlot:0}] weapon.offhand with air
