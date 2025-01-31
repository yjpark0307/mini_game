##fire_pot
execute as @e[type=item,nbt={Item:{components:{"minecraft:lore":['"D_fire_object"']}}}] run tag @s add fire_object
execute as @e[type=item,tag=fire_object] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {potion_contents:{custom_effects:[{id:"minecraft:hero_of_the_village",duration:20,show_particles:0b}],custom_color:16027146},Particle:{type:"minecraft:flame"},Duration:600,Radius:4.5f,RadiusPerTick:-0.01f,RadiusOnUse:0.0f,Tags:['"A_kill"']}
kill @e[type=item,tag=fire_object]


execute as @e[type=item,nbt={Item:{components:{"minecraft:lore":['"D_poison_object"']}}}] run tag @s add poison_object
execute as @e[type=item,tag=poison_object] at @s run effect give @a[distance=..8,gamemode=survival] minecraft:poison 4 0 true
execute as @e[type=item,tag=poison_object] at @s run particle minecraft:dragon_breath ~ ~ ~ 1 1 1 0 500 force
kill @e[type=item,tag=poison_object]


execute as @e[type=item,nbt={Item:{components:{"minecraft:lore":['"D_explode_object"']}}}] run tag @s add explode_object
execute as @e[type=item,tag=explode_object] at @s run particle minecraft:flame ~ ~ ~ 1 1 1 0 100 force
execute as @e[type=item,tag=explode_object] at @s run summon creeper ~ ~ ~ {Fuse:0, ExplosionRadius:4,Silent:1b,DeathTime:19}
kill @e[type=item,tag=explode_object]