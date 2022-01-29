tag @a remove map4




scoreboard players set @a final_number 1
execute as @a at @a unless score @s player = @p player if score @p final_point > @s final_point run scoreboard players add @s final_number 1






execute positioned 5000 100 5000 as @r[distance=200..,scores={final_number=1}] run tp @s 5005 103 4999
#Si un joueur a aussi le joueur 1, alors on ajoute 1 à tous le monde (1er et 2emes pour qu'ils soient 2 eme et 3 eme à la place)
execute positioned 5000 100 5000 as @r[distance=200..,scores={final_number=1}] run scoreboard players add @a[distance=200..,scores={final_number=..2}] final_number 1


execute positioned 5000 100 5000 as @r[distance=200..,scores={final_number=2}] run tp @s 5002 102 5000
execute positioned 5000 100 5000 as @r[distance=200..,scores={final_number=2}] run scoreboard players add @a[distance=200..,scores={final_number=..3}] final_number 1


execute positioned 5000 100 5000 as @r[distance=200..,scores={final_number=3}] run tp @s 5008 101 5000
execute positioned 5000 100 5000 as @r[distance=200..,scores={final_number=3}] run scoreboard players add @a[distance=200..,scores={final_number=..4}] final_number 1


execute positioned 5000 100 5000 as @a[distance=200..,scores={final_number=4..}] run tp @s 5005 99 5011



stopsound @a


execute as @a[scores={final_number=1..3}] at @s run playsound mk:music.trophy ambient @s
execute as @a[scores={final_number=4..8}] at @s run playsound mk:music.no_trophy ambient @s




team join 8eme @a[scores={final_number=8}]
team join 7eme @a[scores={final_number=7}]
team join 6eme @a[scores={final_number=6}]
team join 5eme @a[scores={final_number=5}]
team join 4eme @a[scores={final_number=4}]
team join 3eme @a[scores={final_number=3}]
team join 2eme @a[scores={final_number=2}]
team join 1er @a[scores={final_number=1}]


scoreboard players set @a[scores={final_number=8}] Position 1
scoreboard players set @a[scores={final_number=7}] Position 2
scoreboard players set @a[scores={final_number=6}] Position 3
scoreboard players set @a[scores={final_number=5}] Position 4
scoreboard players set @a[scores={final_number=4}] Position 5
scoreboard players set @a[scores={final_number=3}] Position 6
scoreboard players set @a[scores={final_number=2}] Position 7
scoreboard players set @a[scores={final_number=1}] Position 8




tellraw @a ["",{"text":"========== ","color":"dark_green"},{"text":"Résultats ","color":"dark_red"},{"text":"==========","color":"dark_green"},{"text":"\n\n"},{"selector":"@a[scores={final_number=1}]"},{"text":" - ","color":"gold"},{"score":{"name":"@r[scores={final_number=1}]","objective":"final_point"},"color":"gold"},{"text":"pts","color":"gold"},{"text":"\n\n"},{"selector":"@a[scores={final_number=2}]"},{"text":" - ","color":"gold"},{"score":{"name":"@r[scores={final_number=2}]","objective":"final_point"},"color":"gold"},{"text":"pts","color":"gold"},{"text":"\n\n"},{"selector":"@a[scores={final_number=3}]"},{"text":" - ","color":"gold"},{"score":{"name":"@r[scores={final_number=3}]","objective":"final_point"},"color":"gold"},{"text":"pts","color":"gold"},{"text":"\n\n"},{"text":"==========","color":"dark_green"},{"text":" ========","color":"dark_green"},{"text":" ==========","color":"dark_green"}]


schedule function mk:map/feu_artifice 1s


schedule function mk:map/fin_podium 20s