execute at @e[tag=circuit,distance=..50] if score @s circuit = @e[tag=circuit,limit=1,sort=nearest] circuit run summon armor_stand ~ ~ ~ {Tags:["remonte"],NoGravity:1b,Invisible:1b}
execute at @e[tag=circuit,distance=..50] if score @s circuit = @e[tag=circuit,limit=1,sort=nearest] circuit run scoreboard players operation @e[tag=remonte,sort=nearest,limit=1] UUID = @s UUID