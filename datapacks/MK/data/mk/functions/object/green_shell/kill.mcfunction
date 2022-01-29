execute as @s at @s as @e[tag=green_shell_anim,distance=..2] if score @e[tag=green_shell_anim,limit=1,sort=nearest] UUID = @s UUID run kill @s
kill @s
tp @s 0 0 0