#D_thunder_timer
scoreboard players set @a[scores={D_thunder_timer=0}] D_thunder_timer 600
scoreboard players remove @a[scores={D_thunder_timer=1..}] D_thunder_timer 1

#summon frog
execute as @e[type=bat,limit=4,sort=random] at @s if entity @a[scores={D_thunder_timer=40}] run summon frog ~ -20 ~ {Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:12b,Duration:1000,ShowParticles:false}],Tags:["A_kill"]}
execute as @e[type=bat,limit=4,sort=random] at @s if entity @a[scores={D_thunder_timer=20}] run summon frog ~ -20 ~ {Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:12b,Duration:1000,ShowParticles:false}],Tags:["A_kill"]}
execute as @e[type=bat,limit=4,sort=random] at @s if entity @a[scores={D_thunder_timer=0}] run summon frog ~ -20 ~ {Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:12b,Duration:1000,ShowParticles:false}],Tags:["A_kill"]}

#summon thunder
execute as @e[type=frog,nbt={OnGround:1b}] at @s run particle minecraft:end_rod ~ ~10 ~ 0 4.5 0 0 100 force
execute as @e[type=frog,nbt={OnGround:1b}] at @s run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=frog,nbt={OnGround:1b}] at @s run summon minecraft:lightning_bolt ~ ~ ~
execute as @e[type=frog,nbt={OnGround:1b}] at @s run kill @s