execute as @s at @s at @e[tag=red_shell_anim,distance=..2] if score @e[tag=red_shell_anim,limit=1,sort=nearest] player = @s player run kill @s
kill @s
tp @s 0 0 0