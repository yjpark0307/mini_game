#detect mount
scoreboard players set @a D_mount_detect 1
execute as @a at @s anchored eyes if block ^ ^-1 ^0.9 #minecraft:ignore_mount run scoreboard players set @s D_mount_detect 0
scoreboard players set @a[nbt=!{SelectedItem:{components:{"minecraft:lore":['"mountable"']}}}] D_mount_detect 0