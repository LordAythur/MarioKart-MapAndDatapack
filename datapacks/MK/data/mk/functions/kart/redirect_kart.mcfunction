execute store result score @s motion_x1 run data get entity @s Pos[0] 100
execute store result score @s motion_z1 run data get entity @s Pos[2] 100


tp @s ~ ~ ~ ~ 0

execute at @s run tp @s ^ ^ ^0.2


execute store result score @s motion_x2 run data get entity @s Pos[0] 100
execute store result score @s motion_z2 run data get entity @s Pos[2] 100

execute at @s run tp @s ^ ^ ^-0.2



scoreboard players set @s motion_y2 -10
scoreboard players operation @s motion_x2 -= @s motion_x1
execute at @s run scoreboard players operation @s motion_y2 *= @s weight
scoreboard players operation @s motion_z2 -= @s motion_z1

