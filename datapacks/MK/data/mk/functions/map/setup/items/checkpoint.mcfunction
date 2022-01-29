summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Glowing:1b,Marker:0b,Tags:["classic_point","checkpoint"],Team:"Dark_Green"}
tp @e[tag=checkpoint,limit=1,sort=nearest] ~ ~ ~ ~ ~

execute as @e[tag=checkpoint,limit=1,sort=nearest] at @e[tag=classic_point,distance=..200] run scoreboard players add @s circuit 1
execute as @e[tag=checkpoint,limit=1,sort=nearest] at @e[tag=checkpoint,distance=..200] run scoreboard players add @s checkpoint 1


title @a title ["","Numéro :",{"score":{"name":"@e[tag=checkpoint,limit=1,sort=nearest]","objective":"circuit"}}]