function mk:map/rainbow/start



kill @e[tag=remonte]
kill @e[tag=bullet_bill]
kill @e[tag=voiture]

execute as @a at @s rotated ~ 0 positioned ^ ^ ^2 run function mk:kart/spawn


tag @a add start_race
tag @e[tag=voiture] add tp
tag @e[tag=voiture] remove follow_path
tag @e[tag=voiture] remove lakitu_remonte




team modify 1er suffix [""]
team modify 2eme suffix [""]
team modify 3eme suffix [""]
team modify 4eme suffix [""]
team modify 5eme suffix [""]
team modify 6eme suffix [""]
team modify 7eme suffix [""]
team modify 8eme suffix [""]






scoreboard players set @e[tag=voiture] number -1

scoreboard players set @e[scores={number=-1},tag=voiture,limit=1] number 1
scoreboard players set @e[scores={number=-1},tag=voiture,limit=1] number 2
scoreboard players set @e[scores={number=-1},tag=voiture,limit=1] number 3
scoreboard players set @e[scores={number=-1},tag=voiture,limit=1] number 4
scoreboard players set @e[scores={number=-1},tag=voiture,limit=1] number 5
scoreboard players set @e[scores={number=-1},tag=voiture,limit=1] number 6
scoreboard players set @e[scores={number=-1},tag=voiture,limit=1] number 7
scoreboard players set @e[scores={number=-1},tag=voiture,limit=1] number 8



schedule clear mk:music/menu
stopsound @a ambient mk:music.menu


kill @e[type=cow]
summon cow 3982 101 4073 {Invulnerable:1b}
summon cow 3990 101 4078 {Invulnerable:1b}
summon cow 3992 101 4073 {Invulnerable:1b}
summon cow 3995 101 4075 {Invulnerable:1b}
summon cow 4005 101 4074 {Invulnerable:1b}
summon cow 3991 101 4066 {Invulnerable:1b}
summon cow 3985 101 4061 {Invulnerable:1b}
summon cow 3989 101 4056 {Invulnerable:1b}
summon cow 3980 101 4055 {Invulnerable:1b}
summon cow 3996 101 4060 {Invulnerable:1b}


execute at @r run kill @e[type=end_crystal,distance=..200]
execute at @r at @e[tag=cube_point,distance=..200] run summon end_crystal ~ ~0.5 ~ {Invulnerable:1b,ShowBottom:0b}