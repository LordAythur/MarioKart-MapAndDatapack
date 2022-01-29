execute store result score @s UUID run data get entity @s UUID[0]

#Si le remonte n'exsite pas cela veut dire qu'il faut le créer
execute unless entity @e[tag=remonte] at @s run function mk:kart/spawn_remonte

#S'il exsite on vérifie qu'il est lié à celui-ci sinon on en crée un
tag @e[tag=lakitu_remonte] add verif_remonte
execute at @e[tag=remonte] if score @s UUID = @e[tag=remonte,limit=1,sort=nearest] UUID at @s run tag @s remove verif_remonte
execute as @s[tag=verif_remonte] at @s run function mk:kart/spawn_remonte



execute at @s as @e[tag=remonte,distance=..200] if score @s UUID = @e[tag=lakitu_remonte,limit=1,sort=nearest] UUID facing entity @s feet run tp @e[tag=lakitu_remonte,limit=1,sort=nearest] ^ ^ ^1


execute at @s at @e[tag=remonte,distance=..1] if score @s UUID = @e[tag=remonte,limit=1,sort=nearest] UUID at @s run function mk:kart/clear_remonte


