summon armor_stand ~ ~ ~ {Tags:["explosion"],Rotation:[1.0f,-90.0f,0.0f],NoGravity:1b}
execute run particle flame ~ ~ ~ 1 1 1 0.1 10000 force @a
execute run playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 2 0.7
execute as @e[tag=explosion,limit=1,sort=nearest] at @s run function mk:object/bomb/explosion_particle



execute at @a[distance=..5] unless score @p player = @s player at @a if score @p player = @s player run playsound mk:mario.gotcha ambient @p ~ ~ ~ 5 1


execute at @a[distance=..5] unless score @p player = @s player at @a if score @p player = @s player run playsound mk:mario.gotcha ambient @p ~ ~ ~ 3 1

execute as @a[distance=..5] if entity @s[scores={stun=0}] run scoreboard players set @s stun 60 
kill @e[distance=..5,tag=casse]