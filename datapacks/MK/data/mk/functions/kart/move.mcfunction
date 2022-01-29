scoreboard players operation @s save_speed = @s motion_x2
scoreboard players operation @s save_speed *= @s speed
execute store result entity @s Motion[0] double 0.00002 run scoreboard players get @s save_speed


execute store result entity @s Motion[1] double 0.002 run scoreboard players get @s motion_y2


scoreboard players operation @s save_speed = @s motion_z2
scoreboard players operation @s save_speed *= @s speed
execute store result entity @s Motion[2] double 0.00002 run scoreboard players get @s save_speed





