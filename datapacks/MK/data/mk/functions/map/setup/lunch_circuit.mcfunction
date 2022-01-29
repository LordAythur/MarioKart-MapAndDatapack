execute at @s run kill @e[tag=circuit,distance=..200]
execute at @e[scores={circuit=1},tag=classic_point,sort=nearest,limit=1] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Glowing:1b,Marker:0b,Tags:["spawn_circuit"]}
scoreboard players set @e[tag=spawn_circuit] circuit 1

scoreboard players reset @e[tag=end_point,distance=..200] checkpoint

execute as @e[tag=end_point,distance=..200] at @s at @e[tag=checkpoint,distance=..200] run scoreboard players add @s checkpoint 1

kill @e[type=end_crystal,distance=..200]
execute at @e[tag=cube_point,distance=..200] run summon end_crystal ~ ~0.5 ~ {Invulnerable:1b,ShowBottom:0b}

scoreboard players set @a total_circuit 0


