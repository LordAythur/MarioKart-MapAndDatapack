scoreboard players set @s -1 -1


execute as @s at @s unless block ~0.45 ~0.95 ~ #mk:exeption run scoreboard players add @s bounce 1
execute as @s at @s unless block ~-0.45 ~0.95 ~ #mk:exeption run scoreboard players add @s bounce 1
execute as @s at @s unless block ~ ~0.95 ~0.45 #mk:exeption run scoreboard players add @s bounce 1
execute as @s at @s unless block ~ ~0.95 ~-0.45 #mk:exeption run scoreboard players add @s bounce 1


execute as @s at @s unless block ~0.45 ~0.95 ~ #mk:exeption run scoreboard players operation @s motion_x2 *= @s -1
execute as @s at @s unless block ~-0.45 ~0.95 ~ #mk:exeption run scoreboard players operation @s motion_x2 *= @s -1
execute as @s at @s unless block ~ ~0.95 ~0.45 #mk:exeption run scoreboard players operation @s motion_z2 *= @s -1
execute as @s at @s unless block ~ ~0.95 ~-0.45 #mk:exeption run scoreboard players operation @s motion_z2 *= @s -1




execute store result entity @s Motion[0] double 0.05 run scoreboard players get @s motion_x2
execute store result entity @s Motion[1] double 0.02 run scoreboard players get @s motion_y2
execute store result entity @s Motion[2] double 0.05 run scoreboard players get @s motion_z2


execute at @s[scores={music=1}] run playsound mk:item.green_shell ambient @a ~ ~ ~ 0.5 1
scoreboard players add @s music 1
scoreboard players set @s[scores={music=3}] music 0


execute as @s[scores={bounce=8..}] run function mk:object/green_shell/kill







execute as @s at @s unless block ~0.45 ~0.95 ~ #mk:exeption run playsound mk:item.green_shell_kick ambient @a
execute as @s at @s unless block ~-0.45 ~0.95 ~ #mk:exeption run playsound mk:item.green_shell_kick ambient @a
execute as @s at @s unless block ~ ~0.95 ~0.45 #mk:exeption run playsound mk:item.green_shell_kick ambient @a
execute as @s at @s unless block ~ ~0.95 ~-0.45 #mk:exeption run playsound mk:item.green_shell_kick ambient @a

