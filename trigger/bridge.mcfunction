execute as @a[team=D_death_match] at @s if block ~ ~ ~ water run kill @s

scoreboard players remove @a[scores={D_wall_reload=61..}] D_wall_reload 60