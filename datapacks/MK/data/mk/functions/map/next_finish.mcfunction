clear @a

execute as @r[scores={choix_mode=0},tag=map4] run function mk:map/podium

execute as @r[scores={choix_mode=0},tag=map3] run function mk:spawn/lancement_partie
execute as @r[scores={choix_mode=0},tag=map2] run function mk:spawn/lancement_partie
execute as @r[scores={choix_mode=0},tag=map1] run function mk:spawn/lancement_partie




execute as @r[scores={choix_mode=1}] run reload