###AID KIT###

#aid kit
effect give @a[scores={D_aid_reload=-1,D_life_remain=1},nbt={Inventory:[{Slot:2b,id:"minecraft:glass_bottle"}]}] minecraft:absorption 8 0 true
effect give @a[scores={D_aid_reload=-1,D_life_remain=1},nbt={Inventory:[{Slot:2b,id:"minecraft:glass_bottle"}]}] minecraft:absorption 4 1 true
effect give @a[scores={D_aid_reload=-1,D_life_remain=1},nbt={Inventory:[{Slot:2b,id:"minecraft:glass_bottle"}]}] minecraft:absorption 2 2 true
effect give @a[scores={D_aid_reload=-1,D_life_remain=1},nbt={Inventory:[{Slot:2b,id:"minecraft:glass_bottle"}]}] minecraft:absorption 1 3 true

scoreboard players set @a[scores={D_aid_reload=-1},nbt={Inventory:[{Slot:2b,id:"minecraft:glass_bottle"}]}] D_aid_reload 600
scoreboard players remove @a[scores={D_aid_reload=0..,D_game_timer=0..}] D_aid_reload 1
item replace entity @a[scores={D_aid_reload=0,D_aid_type=0}] container.2 from block 101 -52 229 container.2
item replace entity @a[scores={D_aid_reload=0,D_aid_type=1}] container.2 from block 101 -52 229 container.11

#change
execute as @a[scores={D_aid_reload=-1,D_aid_type=0,D_aid_swap=0},nbt=!{Inventory:[{Slot:2b}]}] store success score @s D_aid_swap run scoreboard players set @s D_aid_type 1
execute as @a[scores={D_aid_reload=-1,D_aid_type=1,D_aid_swap=0},nbt=!{Inventory:[{Slot:2b}]}] store success score @s D_aid_swap run scoreboard players set @s D_aid_type 0
scoreboard players set @a[scores={D_aid_reload=-1},nbt=!{Inventory:[{Slot:2b}]}] D_aid_reload 20
scoreboard players set @a D_aid_swap 0

#clear offhand
item replace entity @a[nbt={SelectedItemSlot:2}] weapon.offhand with air