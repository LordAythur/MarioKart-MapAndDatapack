tag @e[tag=voiture] remove tp

tag @a add ingame

execute as @a store result score @s motion_x1 run data get entity @s Pos[0]
execute as @a store result score @s motion_z1 run data get entity @s Pos[2]


execute as @r[scores={motion_x1=800..1200,motion_z1=800..1200}] at @s run function mk:music/mushroom
execute as @r[scores={motion_x1=1800..2200,motion_z1=1800..2200}] at @s run function mk:music/stade
execute as @r[scores={motion_x1=2800..3200,motion_z1=2800..3200}] at @s run function mk:music/rainbow
execute as @r[scores={motion_x1=3800..4200,motion_z1=3800..4200}] at @s run function mk:music/prairie
