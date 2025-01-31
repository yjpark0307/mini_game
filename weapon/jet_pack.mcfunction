###JET PACK###

###jet pack
#right click
execute as @a[scores={D_right_click=1}] if items entity @s weapon.mainhand *[minecraft:custom_name='"jet_pack"'] run scoreboard players set @s D_jet_used 1
#set reload
scoreboard players set @a[scores={D_jet_used=1..}] D_jet_reload 600
scoreboard players remove @a[scores={D_jet_used=1..},tag=D_specialization_distant] D_jet_reload 200
execute as @a[scores={D_jet_used=0}] unless items entity @s hotbar.5 * run scoreboard players set @a D_jet_reload 600
scoreboard players remove @a[scores={D_jet_reload=0..}] D_jet_reload 1
execute if entity @a[tag=D_1v1_mode] run scoreboard players remove @a[scores={D_jet_reload=2..}] D_jet_reload 1


#main
scoreboard players set @a[scores={D_jet_used=1}] D_jet_timer 60
scoreboard players remove @a[scores={D_jet_timer=1..}] D_jet_timer 1
execute if entity @a[tag=D_normal_mode] run effect give @a[scores={D_jet_used=1..}] minecraft:levitation 3 3 true

execute if entity @a[tag=D_1v1_mode] run effect give @a[scores={D_jet_used=1..,D_jet_upgrade=0}] minecraft:levitation 3 3 true
execute if entity @a[tag=D_1v1_mode] run effect give @a[scores={D_jet_used=1..,D_jet_upgrade=1}] minecraft:levitation 3 4 true
execute if entity @a[tag=D_1v1_mode] run effect give @a[scores={D_jet_used=1..,D_jet_upgrade=2}] minecraft:levitation 3 5 true
execute if entity @a[tag=D_1v1_mode] run effect give @a[scores={D_jet_used=1..,D_jet_upgrade=3}] minecraft:levitation 3 6 true
execute if entity @a[tag=D_1v1_mode] run effect give @a[scores={D_jet_used=1..,D_jet_upgrade=4}] minecraft:levitation 3 7 true
execute if entity @a[tag=D_1v1_mode] run effect give @a[scores={D_jet_used=1..,D_jet_upgrade=5}] minecraft:levitation 3 8 true


execute as @a[scores={D_jet_used=1..}] at @s run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 1 0.8
execute as @a[scores={D_jet_used=1..}] at @s run particle cloud ~ ~ ~ 0.5 0 0.5 0 50 force
scoreboard players set @a[scores={D_jet_used=1..}] D_jet_used 0
item replace entity @a[scores={D_jet_reload=0}] container.5 from block 101 -52 229 container.5

execute as @a[scores={D_jet_timer=1..}] at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force

#stop jet
execute as @a[nbt={active_effects:[{id:"minecraft:levitation"}]}] if predicate st:sneak run scoreboard players set @s D_jet_timer 0
execute as @a[nbt={active_effects:[{id:"minecraft:levitation"}]}] if predicate st:sneak run effect clear @s minecraft:levitation

#clear offhand
item replace entity @a[nbt={SelectedItemSlot:5}] weapon.offhand with air