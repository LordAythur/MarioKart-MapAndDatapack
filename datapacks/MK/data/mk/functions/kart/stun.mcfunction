execute as @e[type=pig,tag=voiture,distance=..1,sort=nearest,limit=1] run scoreboard players set @s speed 0

execute as @s[scores={stun=60}] at @s run playsound mk:mario.damage_explosion ambient @s ~ ~ ~ 1 0.9
execute as @s[scores={stun=60}] at @s run tag @s add sound_stun 


execute as @s[scores={stun=40},tag=!sound_stun] at @s run playsound mk:mario.damage_shell ambient @s ~ ~ ~ 1 0.9
execute as @s[scores={stun=40}] at @s run tag @s add sound_stun 



execute as @s[scores={stun=55..60}] as @e[type=pig,tag=voiture,distance=..1,sort=nearest,limit=1] run scoreboard players set @s motion_y2 300


execute as @s[scores={stun=35..40}] as @e[type=pig,tag=voiture,distance=..1,sort=nearest,limit=1] run scoreboard players set @s motion_y2 200

execute as @s[scores={stun=25..30}] as @e[type=pig,tag=voiture,distance=..1,sort=nearest,limit=1] run scoreboard players set @s motion_y2 100


execute as @s[scores={stun=1..}] run scoreboard players set @s confused 0



tag @s[scores={stun=1}] remove sound_stun