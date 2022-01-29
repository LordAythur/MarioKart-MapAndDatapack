scoreboard players add @s time_thwomp 1

item replace entity @s[scores={time_thwomp=..100}] weapon.mainhand with minecraft:dried_kelp{CustomModelData:1}

tp @s[scores={time_thwomp=..30}] ~ ~0.1 ~

item replace entity @s[scores={time_thwomp=50..}] weapon.mainhand with minecraft:dried_kelp{CustomModelData:0}

tp @s[scores={time_thwomp=60}] ~ ~-3 ~
execute as @e[scores={time_thwomp=60}] at @s run playsound mk:misc.thwomp ambient @a ~ ~ ~ 0.5 1

scoreboard players set @s[scores={time_thwomp=70..}] time_thwomp 0

execute as @s at @s run execute as @p[distance=..2] at @s run scoreboard players set @s confused 20


