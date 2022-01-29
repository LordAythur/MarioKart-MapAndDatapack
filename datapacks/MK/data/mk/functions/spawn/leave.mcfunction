scoreboard players set @a[scores={leave=1..}] first_co 0
scoreboard players set @a[scores={leave=1..}] leave 0

execute as @a[scores={first_co=1},gamemode=spectator] at @s run gamemode adventure
execute as @a[scores={first_co=1},gamemode=adventure] at @s run scoreboard players reset @s menu
execute as @a[scores={first_co=1},gamemode=adventure] at @s run tp @s 2 104 14 180 0
execute as @a[scores={first_co=10},gamemode=adventure] at @s run playsound mk:music.title ambient @s ~ ~ ~ 0.3 1