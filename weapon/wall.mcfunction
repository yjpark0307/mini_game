###WALL###

#detect
execute as @a[scores={D_right_click=1}] if items entity @s weapon.mainhand *[minecraft:custom_name='"barrier"'] run scoreboard players set @s D_wall_used 1
#reload
scoreboard players set @a[scores={D_wall_used=1..}] D_wall_reload 1200
scoreboard players remove @a[scores={D_airstrike_used=1},tag=D_specialization_scout] D_wall_reload 200
execute as @a[scores={D_wall_used=0}] unless items entity @s hotbar.4 * run scoreboard players set @a D_wall_reload 1200
scoreboard players remove @a[scores={D_wall_reload=0..}] D_wall_reload 1
scoreboard players remove @a[tag=D_1v1_mode,scores={D_wall_reload=2..}] D_wall_reload 1
#wall
item replace entity @a[scores={D_wall_reload=0}] container.4 from block 101 -52 229 container.4
execute as @a[scores={D_wall_used=1..}] at @s anchored eyes run setblock ^ ^ ^2 minecraft:gray_stained_glass keep
execute as @a[scores={D_wall_used=1..}] at @s anchored eyes run setblock ^1 ^ ^2 minecraft:gray_stained_glass keep
execute as @a[scores={D_wall_used=1..}] at @s anchored eyes run setblock ^1 ^1 ^2 minecraft:gray_stained_glass keep
execute as @a[scores={D_wall_used=1..}] at @s anchored eyes run setblock ^ ^1 ^2 minecraft:gray_stained_glass keep
execute as @a[scores={D_wall_used=1..}] at @s anchored eyes run setblock ^-1 ^1 ^2 minecraft:gray_stained_glass keep
execute as @a[scores={D_wall_used=1..}] at @s anchored eyes run setblock ^-1 ^ ^2 minecraft:gray_stained_glass keep
execute as @a[scores={D_wall_used=1..}] at @s anchored eyes run setblock ^-1 ^-1 ^2 minecraft:gray_stained_glass keep
execute as @a[scores={D_wall_used=1..}] at @s anchored eyes run setblock ^ ^-1 ^2 minecraft:gray_stained_glass keep
execute as @a[scores={D_wall_used=1..}] at @s anchored eyes run setblock ^1 ^-1 ^2 minecraft:gray_stained_glass keep
execute as @a[scores={D_wall_used=1..}] at @s anchored eyes run playsound minecraft:block.beacon.activate player @a ^ ^ ^2 0.7 1 0
scoreboard players set @a[scores={D_wall_used=1..}] D_wall_used 0




#clear offhand
item replace entity @a[nbt={SelectedItemSlot:4}] weapon.offhand with air