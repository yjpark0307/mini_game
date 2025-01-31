#smoke launcher
execute as @e[type=arrow,nbt={inGround:1b, item:{components:{"minecraft:custom_name":'"smokelauncher_ammo"'}}}] at @s run particle minecraft:campfire_signal_smoke ~ ~1 ~ 1.5 1.5 1.5 0.003 800 force
execute as @e[type=arrow, nbt={item:{components:{"minecraft:custom_name":'"smokelauncher_ammo"'}}}] run data merge entity @s {SoundEvent:"minecraft:block.fire.extinguish"}
kill @e[type=arrow,nbt={inGround:1b,item:{components:{"minecraft:custom_name":'"smokelauncher_ammo"'}}}]


#reload
scoreboard players set @a[scores={D_smoke_reload=-1},nbt=!{Inventory:[{Slot:3b}]}] D_smoke_reload 600
scoreboard players remove @a[scores={D_smoke_reload=0..,D_game_timer=0..}] D_smoke_reload 1
scoreboard players remove @a[tag=D_1v1_mode,scores={D_smoke_reload=2..,D_game_timer=0..}] D_smoke_reload 1
item replace entity @a[scores={D_smoke_reload=0}] container.3 from block 101 -52 229 container.3
scoreboard players set @a[scores={D_smoke_reload=0}] D_smoke_reload -1

item replace entity @a[nbt={SelectedItemSlot:3}] weapon.offhand with air