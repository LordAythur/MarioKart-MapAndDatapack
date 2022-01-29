tag @s remove 1
tag @s remove b1
tag @s remove b2
tag @s remove b3
execute at @s unless entity @p[x_rotation=90] run playsound mk:item.throw ambient @p ~ ~ ~

execute store result score @s motion_x1 run data get entity @s Pos[0] 120
execute store result score @s motion_y1 run data get entity @s Pos[1] 10
execute store result score @s motion_z1 run data get entity @s Pos[2] 120



execute at @s run tp @s ^ ^ ^0.2


execute store result score @s motion_x2 run data get entity @s Pos[0] 120
execute store result score @s motion_y2 run data get entity @s Pos[1] 10
execute store result score @s motion_z2 run data get entity @s Pos[2] 120

execute at @s run tp @s ^ ^ ^-0.2


scoreboard players operation @s motion_y2 -= @s motion_y1
scoreboard players set @s motion_y1 50


execute at @p unless entity @p[x_rotation=90] store result entity @s Motion[0] double 0.20 run scoreboard players operation @s motion_x2 -= @s motion_x1
execute at @p unless entity @p[x_rotation=90] store result entity @s Motion[1] double 0.02 run scoreboard players operation @s motion_y2 += @s motion_y1
execute at @p unless entity @p[x_rotation=90] store result entity @s Motion[2] double 0.20 run scoreboard players operation @s motion_z2 -= @s motion_z1

