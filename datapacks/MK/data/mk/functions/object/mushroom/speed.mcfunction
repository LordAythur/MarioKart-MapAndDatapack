playsound mk:mario.acceleration ambient @p ~ ~ ~ 5 0.9
scoreboard players set @s speed 3000
scoreboard players set @p weight 10
execute unless entity @s[scores={timeHighSpeed=20..}] run scoreboard players set @s timeHighSpeed 20
