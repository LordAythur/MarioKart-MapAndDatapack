tag @s remove 1
tag @s remove r1
tag @s remove r2
tag @s remove r3

tag @s add lakitu_remonte
execute as @e[tag=circuit,sort=furthest,distance=..30] run scoreboard players operation @e[tag=red_shell,limit=1,sort=nearest] circuit = @s circuit