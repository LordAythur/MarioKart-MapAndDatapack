execute at @s run particle minecraft:dust_color_transition 0.3 0.3 1 1 1 1 1 ^ ^ ^4 0 0 0 1 1 force @a
execute at @s run tp @s ~ ~ ~ ~ ~5

execute if entity @s[x_rotation=90] unless entity @s[y_rotation=-2..0] at @s run tp @s ~ ~ ~ ~2 -90


execute unless entity @s[x_rotation=90] run function mk:object/blue_shell/explosion

execute if entity @s[x_rotation=90] if entity @s[y_rotation=-2..0] at @s run kill @s