execute at @p if entity @p[x_rotation=90] run tp @s ~ ~ ~ ~180 ~

execute at @s rotated ~ 0 run tp @s ^ ^ ^2 
execute at @s as @e[tag=green_shell_anim,distance=..3] if score @e[tag=green_shell,limit=1,sort=nearest] player = @s player run tp @s ^ ^ ^
tag @s remove 1
tag @s remove g1
tag @s remove g3
tag @s remove g2


execute store result score @s motion_x1 run data get entity @s Pos[0] 100
execute store result score @s motion_z1 run data get entity @s Pos[2] 100



execute at @s rotated ~ 0 run tp @s ^ ^ ^0.2


execute store result score @s motion_x2 run data get entity @s Pos[0] 100
execute store result score @s motion_z2 run data get entity @s Pos[2] 100

execute at @s rotated ~ 0 run tp @s ^ ^ ^-0.2



scoreboard players set @s motion_y2 -10


execute store result entity @s Motion[0] double 0.05 run scoreboard players operation @s motion_x2 -= @s motion_x1
execute store result entity @s Motion[1] double 0.02 run scoreboard players operation @s motion_y2 = @s motion_y2
execute store result entity @s Motion[2] double 0.05 run scoreboard players operation @s motion_z2 -= @s motion_z1