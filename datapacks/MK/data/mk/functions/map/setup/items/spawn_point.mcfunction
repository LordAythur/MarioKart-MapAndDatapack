summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Glowing:1b,Marker:0b,Tags:["spawn_point"]}
tp @e[tag=spawn_point,limit=1,sort=nearest] ~ ~ ~ ~ ~

scoreboard players set @e[tag=spawn_point,limit=1,sort=nearest] spawn_point 9
execute as @e[tag=spawn_point,limit=1,sort=nearest] at @e[tag=spawn_point,distance=..200] run scoreboard players remove @s spawn_point 1

title @a title ["","Spawn :",{"score":{"name":"@e[tag=spawn_point,limit=1,sort=nearest]","objective":"spawn_point"}}]