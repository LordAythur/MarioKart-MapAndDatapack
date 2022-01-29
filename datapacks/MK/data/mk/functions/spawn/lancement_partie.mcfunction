execute as @a run function mk:score_player

scoreboard players set max RANDOM 3
execute as @r[scores={choix_map=-1}] at @s run function mk:rand
execute as @a[scores={RANDOM=0..3}] at @s run scoreboard players add @s RANDOM 1
execute as @a[scores={RANDOM=1..4}] at @s run scoreboard players operation @s choix_map = @s RANDOM

scoreboard players set @a menu 5
gamemode adventure @a
effect clear @a invisibility




execute as @a[scores={choix_voiture=2}] as @s run scoreboard players set @s acceleration 10
execute as @a[scores={choix_voiture=2}] as @s run scoreboard players set @s max_speed 1500
execute as @a[scores={choix_voiture=2}] as @s run scoreboard players set @s weight 40
execute as @a[scores={choix_voiture=2}] as @s run scoreboard players set @s save_weight 40

execute as @a[scores={choix_voiture=1}] as @s run scoreboard players set @s acceleration 20
execute as @a[scores={choix_voiture=1}] as @s run scoreboard players set @s max_speed 1400
execute as @a[scores={choix_voiture=1}] as @s run scoreboard players set @s weight 30
execute as @a[scores={choix_voiture=1}] as @s run scoreboard players set @s save_weight 30

execute as @a[scores={choix_voiture=0}] as @s run scoreboard players set @s acceleration 30 
execute as @a[scores={choix_voiture=0}] as @s run scoreboard players set @s max_speed 1300
execute as @a[scores={choix_voiture=0}] as @s run scoreboard players set @s weight 20
execute as @a[scores={choix_voiture=0}] as @s run scoreboard players set @s save_weight 20

execute as @a[scores={choix_objet=1}] as @s run tag @s add rand_fun
execute as @a[scores={choix_objet=0}] as @s run tag @s remove rand_fun


scoreboard players set @a circuit 0
scoreboard players set @a checkpoint 1
scoreboard players set @a lap 0
scoreboard players set @a total_circuit 0
scoreboard players set @a rand_cube_time 0
stopsound @a
clear @a

schedule clear mk:music/mushroom
schedule clear mk:music/prairie
schedule clear mk:music/rainbow
schedule clear mk:music/stade
schedule clear mk:music/mushroom2
schedule clear mk:music/stade2
schedule clear mk:music/prairie2
schedule clear mk:music/rainbow2

scoreboard players set @a final_lap 0


execute as @a unless entity @s[scores={final_point=1..}] run scoreboard players set @s final_number -1

scoreboard players set @r[scores={final_number=-1}] final_number 1
scoreboard players set @r[scores={final_number=-1}] final_number 2
scoreboard players set @r[scores={final_number=-1}] final_number 3
scoreboard players set @r[scores={final_number=-1}] final_number 4
scoreboard players set @r[scores={final_number=-1}] final_number 5
scoreboard players set @r[scores={final_number=-1}] final_number 6
scoreboard players set @r[scores={final_number=-1}] final_number 7
scoreboard players set @r[scores={final_number=-1}] final_number 8

#TP des joueurs

#GRAND PRIX

execute as @r[scores={choix_mode=0},tag=map4] run tag @a remove map4

execute as @r[scores={choix_mode=0},tag=map3] run tag @a add map4
execute as @r[scores={choix_mode=0},tag=map3] run tag @a remove map3

execute as @r[scores={choix_mode=0},tag=map2] run tag @a add map3
execute as @r[scores={choix_mode=0},tag=map2] run tag @a remove map2


execute as @r[scores={choix_mode=0},tag=map1] run tag @a add map2
execute as @r[scores={choix_mode=0},tag=map1] run tag @a remove map1




execute as @r[scores={choix_mode=0},tag=!map1,tag=!map2,tag=!map3,tag=!map4] run tag @a add map1

execute as @r[tag=map1] run scoreboard players set @a choix_map 0
execute as @r[tag=map2] run scoreboard players set @a choix_map 1
execute as @r[tag=map3] run scoreboard players set @a choix_map 2
execute as @r[tag=map4] run scoreboard players set @a choix_map 3

#MAP CLASSIQUE
#choix_mode=1
#0 prairie
#1 mush
#2 stade
#3 arc en ciel
execute as @r[scores={choix_map=0}] as @a run tp @s 4003 105 4003
execute as @r[scores={choix_map=1}] as @a run tp @s 1002 105 998
execute as @r[scores={choix_map=2}] as @a run tp @s 2000 106 2001
execute as @r[scores={choix_map=3}] as @a run tp @s 3000 113 3003


execute as @r[scores={choix_map=0}] as @a run time set 12000
execute as @r[scores={choix_map=1}] as @a run time set day
execute as @r[scores={choix_map=2}] as @a run time set 13000
execute as @r[scores={choix_map=3}] as @a run time set 15000






kill @e[tag=voiture]
kill @e[type=item]
kill @e[tag=casse]
kill @e[tag=blue_shell]
kill @e[tag=bullet_bill]





scoreboard players add @a chargement 1
schedule function mk:spawn/lunch2 1s



execute positioned 0 105 0 run kill @e[type=painting,distance=..10]







