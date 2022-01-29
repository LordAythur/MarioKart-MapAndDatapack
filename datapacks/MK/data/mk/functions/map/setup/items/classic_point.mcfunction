summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Glowing:1b,Marker:0b,Tags:["classic_point"],Team:"Gris"}
tp @e[tag=classic_point,limit=1,sort=nearest] ~ ~ ~ ~ ~

execute as @e[tag=classic_point,limit=1,sort=nearest] at @e[tag=classic_point,distance=..200] run scoreboard players add @s circuit 1

title @a title ["","Numéro :",{"score":{"name":"@e[tag=classic_point,limit=1,sort=nearest]","objective":"circuit"}}]