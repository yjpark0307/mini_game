#setting
function st:init
function st:deathmatch/init
scoreboard objectives remove D_life_remain
scoreboard objectives add D_life_remain dummy "LIFE"
gamemode survival @a
scoreboard objectives setdisplay sidebar D_life_remain
scoreboard players set @a D_life_remain 1
team join D_death_match @a
scoreboard players set @a D_game_ready 2400
gamerule sendCommandFeedback false
execute store result score @a D_player_count if entity @a
execute as @a run function st:deathmatch/upgrade/board
scoreboard players set @a D_upgrade_coin 1



#give
item replace entity @a container.0 from block 101 -52 229 container.0
item replace entity @a container.1 from block 101 -52 229 container.1
item replace entity @a container.2 from block 101 -52 229 container.2
item replace entity @a container.3 from block 101 -52 229 container.3
item replace entity @a container.4 from block 101 -52 229 container.4
item replace entity @a container.5 from block 101 -52 229 container.5
item replace entity @a container.6 from block 101 -52 229 container.6
item replace entity @a container.7 from block 101 -52 229 container.7
item replace entity @a container.8 from block 101 -52 229 container.8
item replace entity @a armor.chest from block 102 -51 229 container.1
item replace entity @a armor.legs from block 102 -51 229 container.2
item replace entity @a armor.feet from block 102 -51 229 container.3

#give armor
item replace entity @r[nbt=!{Inventory:[{Slot:103b}]}] armor.head from block 102 -51 229 container.9
item replace entity @r[nbt=!{Inventory:[{Slot:103b}]}] armor.head from block 102 -51 229 container.10
item replace entity @r[nbt=!{Inventory:[{Slot:103b}]}] armor.head from block 102 -51 229 container.11
item replace entity @r[nbt=!{Inventory:[{Slot:103b}]}] armor.head from block 102 -51 229 container.12
item replace entity @r[nbt=!{Inventory:[{Slot:103b}]}] armor.head from block 102 -51 229 container.13
item replace entity @r[nbt=!{Inventory:[{Slot:103b}]}] armor.head from block 102 -51 229 container.14
item replace entity @r[nbt=!{Inventory:[{Slot:103b}]}] armor.head from block 102 -51 229 container.15

#last
tp @a 81 -41 -57
setblock 102 -54 215 minecraft:redstone_block