execute if score @s D_upgrade_coin matches 0 run return run tellraw @s [{"text":"no coin"}]
execute if score @s D_upgrade_armor matches 3.. run return run tellraw @s [{"text":"full upgrade"}]
tellraw @s [{"text":"upgrade complete"}]
scoreboard players add @s D_upgrade_armor 1
scoreboard players remove @s D_upgrade_coin 1