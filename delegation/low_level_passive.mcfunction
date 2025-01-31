#passive effect
effect give @a[nbt={SelectedItemSlot:1}] minecraft:weakness 1 10 true
effect give @a minecraft:saturation 1 10 true

#projectile default
execute as @e[type=arrow] run data merge entity @s {pickup:0b}

#kill area cloud
kill @e[type=minecraft:area_effect_cloud,nbt={effects:[{id:"minecraft:unluck"}]}]

#kill item
kill @e[type=item,nbt=!{Item:{components:{"minecraft:lore":['"D_map_object"']}}}]

#cheat
execute if entity @a[nbt={SelectedItem:{id:"minecraft:written_book"}}] run gamerule sendCommandFeedback false
execute unless entity @a[nbt={SelectedItem:{id:"minecraft:written_book"}}] run gamerule sendCommandFeedback true