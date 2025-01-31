##MISSILE

#missile reload
scoreboard players set @a[scores={D_missile_used=1..}] D_missile_reload 140
scoreboard players set @a[scores={D_missile_used=1..}] D_missile_used 0
item replace entity @a[scores={D_missile_reload=0}] container.1 from block 101 -52 229 container.1
scoreboard players remove @a[scores={D_missile_reload=0..}] D_missile_reload 1
scoreboard players set @a[scores={D_missile_reload=-1},nbt=!{Inventory:[{Slot:1b}]}] D_missile_reload 120

#missile explode
execute as @e[type=trident,nbt={inGround:0b}] at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.2 0.2 0.2 0.005 15 force
execute as @e[type=trident,nbt={inGround:0b}] at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 1 1 force
execute as @e[type=trident,nbt={inGround:1b}] at @s run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force
execute as @e[type=trident,nbt={inGround:1b}] at @s if entity @a[scores={D_game_timer=0..}] run summon creeper ~ ~ ~ {Fuse:0, ExplosionRadius:3,Silent:1b, Deathtime:19}
kill @e[type=trident,nbt={inGround:1b}]


#clear offhand
item replace entity @a[nbt={SelectedItemSlot:1}] weapon.offhand with air