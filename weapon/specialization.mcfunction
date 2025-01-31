###close combat###
execute as @a[scores={D_specialization_supply=1}] run item replace entity @s container.8 from block 102 -51 233 container.0
execute as @a[scores={D_specialization_supply=1}] run attribute @s generic.armor base set 3
execute as @a[scores={D_specialization_supply=1}] run attribute @s generic.knockback_resistance base set 0.9
execute as @a[scores={D_specialization_supply=2..}] run attribute @s generic.knockback_resistance base set 0.4

###distant combat###
execute as @a[scores={D_specialization_supply=2}] run item replace entity @s container.8 from block 102 -51 233 container.1
execute as @a[scores={D_specialization_supply=2}] run attribute @s generic.movement_speed base set 0.115
execute as @a[scores={D_specialization_supply=2}] run attribute @s generic.scale base set 0.9
execute as @a[scores={D_specialization_supply=2}] run tag @s add D_specialization_distant

###scout###
execute as @a[scores={D_specialization_supply=3}] run item replace entity @s container.8 from block 102 -51 233 container.2
execute as @a[gamemode=survival,scores={D_health_count=..12}] at @s run particle minecraft:raid_omen ~ ~1 ~ 0.5 0.5 0.5 0 2 force @a[scores={D_specialization_supply=3},nbt={SelectedItemSlot:8},distance=1..]
execute as @a[scores={D_specialization_supply=3},nbt={SelectedItemSlot:8}] run effect give @s night_vision 100 0 true
execute as @a[scores={D_specialization_supply=3},nbt={SelectedItemSlot:8}] at @s anchored eyes facing entity @a[gamemode=survival,distance=1..8] eyes run particle minecraft:electric_spark ^ ^ ^1 0 0 0 0 1 force @s
execute as @a[scores={D_specialization_supply=3},nbt=!{SelectedItemSlot:8}] run effect clear @s night_vision
execute as @a[scores={D_specialization_supply=3}] run tag @s add D_specialization_scout

#clear offhand
item replace entity @a[nbt={SelectedItemSlot:8}] weapon.offhand with air