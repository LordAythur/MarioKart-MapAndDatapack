summon pig ~ ~ ~ {Tags:["red_shell","1","casse"],Silent:1b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20000,ShowParticles:0b}],Invulnerable:1b}
summon armor_stand ~ ~ ~ {Tags:["red_shell_anim"],Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;697022346,126504101,-1987521852,-1367175552],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODdkNmFlNDc1NTAwN2E4NmZmYjRlN2NhMWViYTU0MGI1NjNkMmYzNjA4ODhjYWIwYTNjNGY0MDVmYzU5ZTFmMyJ9fX0="}]}}}}]}

scoreboard players operation @e[tag=red_shell,limit=1,sort=nearest] player = @s player
scoreboard players operation @e[tag=red_shell_anim,limit=1,sort=nearest] player = @s player


execute as @e[tag=red_shell_anim,limit=1,sort=nearest] at @s store result score @s UUID run data get entity @e[tag=red_shell,limit=1,sort=nearest] UUID[0]
execute as @e[tag=red_shell,limit=1,sort=nearest] store result score @s UUID run data get entity @s UUID[0]


