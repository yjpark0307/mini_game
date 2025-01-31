execute unless block 10030 -43 10048 gold_block unless block 10030 -43 10018 gold_block unless block 10056 -43 10018 gold_block unless block 10056 -43 10048 gold_block run tag @a[gamemode=survival] add D_triggered
execute if entity @a[tag=D_triggered] run tellraw @a {"text":"Flame Trigger Activated in 5s","color":"red"}
execute if entity @a[tag=D_triggered] run setblock 10030 -43 10048 gold_block
execute if entity @a[tag=D_triggered] run setblock 10056 -43 10018 gold_block
execute if entity @a[tag=D_triggered] run setblock 10030 -43 10018 gold_block
execute if entity @a[tag=D_triggered] run setblock 10056 -43 10048 gold_block
execute as @a[tag=D_triggered] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["A_kill","D_trigger_flame","D_entity_timer"]}
tag @a remove D_triggered

execute as @e[tag=D_trigger_flame, scores={D_entity_timer=1}] at @s run playsound entity.blaze.burn player @a ~ ~ ~ 1 1 0
execute as @e[tag=D_trigger_flame, scores={D_entity_timer=..100}] at @s run particle smoke ~ ~ ~ 4 4 4 0.01 25 force
execute as @e[tag=D_trigger_flame, scores={D_entity_timer=100}] at @s run particle flame ~ ~ ~ 4 4 4 0.01 600 force
execute as @e[tag=D_trigger_flame, scores={D_entity_timer=100}] at @s run playsound entity.blaze.shoot player @a ~ ~ ~ 1 1 0
execute as @a[gamemode=survival] at @s if entity @e[tag=D_trigger_flame, scores={D_entity_timer=100},distance=..10] run effect give @s hero_of_the_village 2 0 true
kill @e[tag=D_trigger_flame, scores={D_entity_timer=100}]

