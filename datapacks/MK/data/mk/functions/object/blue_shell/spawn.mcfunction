summon armor_stand ^ ^ ^ {Tags:["blue_shell","lakitu_remonte"],Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;901385544,-665173546,-1476623650,-869024540],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTE0MGFlN2EzZThlNjE1NTdkZjNhYzIxZTNlZmQzMWQ1OTE4MzIyY2JiZTIzZDllZDkyMmUyOTFlNDJiNWFmOSJ9fX0="}]}}}}]}

scoreboard players operation @e[tag=blue_shell,limit=1,sort=nearest] player = @s player

tp @e[tag=blue_shell,limit=1,sort=nearest] ^ ^ ^1


execute at @e[tag=blue_shell,limit=1,sort=nearest] as @e[tag=circuit,sort=furthest,distance=..30] run scoreboard players operation @e[tag=blue_shell,limit=1,sort=nearest] circuit = @s circuit




