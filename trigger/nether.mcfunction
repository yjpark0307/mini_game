tellraw @a[scores={D_game_timer=2600}] {"text":"LAVA UPCOMING in 10s","color":"red"}
execute if entity @a[scores={D_game_timer=2400}] run fill 10001 -51 10001 10098 -50 10098 lava replace air
tellraw @a[scores={D_game_timer=1400}] {"text":"LAVA UPCOMING in 10s","color":"red"}
execute if entity @a[scores={D_game_timer=1200}] run fill 10001 -49 10001 10098 -48 10098 lava replace air
tellraw @a[scores={D_game_timer=200}] {"text":"LAVA UPCOMING in 10s","color":"red"}
execute if entity @a[scores={D_game_timer=2}] run fill 10001 -47 10001 10098 -46 10098 lava replace air

#smoke launcher
scoreboard players remove @a[scores={D_smoke_reload=3..,D_game_timer=0..}] D_smoke_reload 2