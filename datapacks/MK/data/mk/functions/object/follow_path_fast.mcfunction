execute at @s as @e[tag=circuit,distance=..5] facing entity @s feet if score @s circuit = @e[tag=follow_path_fast,limit=1,sort=nearest] circuit run tag @e[tag=follow_path_fast,limit=1,sort=nearest] add inrace


execute at @s as @e[tag=circuit,distance=..5] facing entity @s feet if score @s circuit = @e[tag=follow_path_fast,limit=1,sort=nearest] circuit run tp @e[tag=follow_path_fast,limit=1,sort=nearest] ^ ^ ^1
execute at @s as @e[tag=circuit,distance=..1] if score @s circuit = @e[tag=follow_path_fast,limit=1,sort=nearest] circuit run scoreboard players add @e[tag=follow_path_fast,limit=1,sort=nearest] circuit 1


#Cas de la red shell

#Kill s'ils se rencontrent
execute as @e[tag=red_shell,scores={time_object=15..}] at @s at @e[tag=casse,distance=..2] unless score @s UUID = @e[tag=casse,sort=nearest,limit=1] UUID at @s as @e[distance=..2,tag=casse,limit=2,sort=nearest] run kill @s





execute at @s as @e[tag=circuit,distance=..5] facing entity @s feet if score @s circuit = @e[tag=follow_path_fast,limit=1,sort=nearest] circuit run tp @e[tag=follow_path_fast,limit=1,sort=nearest] ^ ^ ^1
execute at @s as @e[tag=circuit,distance=..1] if score @s circuit = @e[tag=follow_path_fast,limit=1,sort=nearest] circuit run scoreboard players add @e[tag=follow_path_fast,limit=1,sort=nearest] circuit 1


scoreboard players set @s[tag=!inrace] circuit 1
tag @s[tag=inrace] remove inrace

