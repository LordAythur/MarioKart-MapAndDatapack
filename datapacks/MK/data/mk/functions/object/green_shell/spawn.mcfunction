summon pig ~ ~ ~ {Tags:["green_shell","1","casse"],Silent:1b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000,ShowParticles:0b}],Invulnerable:1b}
summon armor_stand ~ ~ ~ {Tags:["green_shell_anim"],Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1846465696,433342802,-1824103251,1486030579],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjdkNzIzOTliMTFlMDJiMDA0YTA4NDdiZmZjNDBmYWI0Y2NiZjcxY2U4YWYwNjU0OGU4NmE3ZmJiZGMzNWI5OSJ9fX0="}]}}}}]}

scoreboard players operation @e[tag=green_shell,limit=1,sort=nearest] player = @s player
scoreboard players operation @e[tag=green_shell_anim,limit=1,sort=nearest] player = @s player

execute as @e[tag=green_shell_anim,limit=1,sort=nearest] store result score @s UUID run data get entity @e[tag=green_shell,limit=1,sort=nearest] UUID[0]
