




#Spawn du circuit
execute as @e[tag=spawn_circuit] at @s as @e[tag=classic_point,distance=..200] facing entity @s feet if score @s circuit = @e[tag=spawn_circuit,limit=1,sort=nearest] circuit run tag @e[tag=spawn_circuit,limit=1,sort=nearest] add nokill

execute as @e[tag=spawn_circuit] at @s as @e[tag=classic_point,distance=..200] facing entity @s feet if score @s circuit = @e[tag=spawn_circuit,limit=1,sort=nearest] circuit run tp @e[tag=spawn_circuit,limit=1,sort=nearest] ^ ^ ^1

execute as @e[tag=spawn_circuit] at @s as @e[tag=checkpoint,distance=..1] if score @s circuit = @e[tag=spawn_circuit,limit=1,sort=nearest] circuit run scoreboard players add @e[tag=spawn_circuit,limit=1,sort=nearest] checkpoint 1
execute as @e[tag=spawn_circuit] at @s as @e[tag=classic_point,distance=..1] if score @s circuit = @e[tag=spawn_circuit,limit=1,sort=nearest] circuit run scoreboard players add @e[tag=spawn_circuit,limit=1,sort=nearest] circuit 1



execute as @e[tag=spawn_circuit] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["circuit"],Duration:1000}
execute as @e[tag=spawn_circuit] at @s as @e[tag=circuit,sort=nearest,limit=1] at @e[tag=circuit,distance=..200] run scoreboard players add @s circuit 1
execute as @e[tag=spawn_circuit] at @s as @e[tag=circuit,sort=nearest,limit=1] run scoreboard players operation @s checkpoint = @e[tag=spawn_circuit,sort=nearest,limit=1] checkpoint





kill @e[tag=spawn_circuit,tag=!nokill]
tag @e[tag=nokill] remove nokill







#Attributions des points aux joueurs (placement)
scoreboard players add @a checkpoint 1
execute at @r as @e[tag=checkpoint,distance=..300] at @s at @a[distance=..9] if score @s checkpoint = @p checkpoint run scoreboard players add @p checkpoint 1
scoreboard players remove @a checkpoint 1


#Debug
#execute as @e[tag=checkpoint] at @s at @p[distance=..9] run particle flame ~ ~ ~ 0.2 0 0.2 0 10



execute at @r as @e[tag=circuit,distance=..300] at @s at @a[distance=..200] if score @p circuit = @s circuit run tag @s add existe
execute at @r as @e[tag=circuit,tag=!existe,distance=..300] at @s at @p[distance=..8] if score @s circuit > @p circuit if score @s checkpoint = @p checkpoint run scoreboard players operation @p circuit = @s circuit
tag @e[tag=circuit,tag=existe] remove existe


execute as @a run scoreboard players operation @s multiplication = @s total_circuit
execute as @a run scoreboard players operation @s multiplication += @s circuit

scoreboard players set @a number 1
execute as @a at @a unless score @s player = @p player if score @p multiplication > @s multiplication run scoreboard players add @s number 1


execute as @a[tag=ingame] if score @s number < @s number_save at @s run playsound mk:mario.double ambient @s ~ ~ ~ 3 0.95
execute as @a[tag=ingame] run scoreboard players operation @s number_save = @s number




#give des items de place
execute as @a[scores={number=1},tag=ingame] run function mk:map/item_place/1
execute as @a[scores={number=2},tag=ingame] run function mk:map/item_place/2
execute as @a[scores={number=3},tag=ingame] run function mk:map/item_place/3
execute as @a[scores={number=4},tag=ingame] run function mk:map/item_place/4
execute as @a[scores={number=5},tag=ingame] run function mk:map/item_place/5
execute as @a[scores={number=6},tag=ingame] run function mk:map/item_place/6
execute as @a[scores={number=7},tag=ingame] run function mk:map/item_place/7
execute as @a[scores={number=8},tag=ingame] run function mk:map/item_place/8

#clear des autres slots
execute as @a[tag=ingame] run function mk:map/item_place/clear





#Détection de fin de circuit si le joueur a le nombre max de checkpoint

execute as @e[tag=end_point] at @s as @a[distance=..1.5] if score @s checkpoint = @e[tag=end_point,limit=1,sort=nearest] checkpoint run tag @s add lapok

scoreboard players add @a[tag=lapok] lap 1



execute as @a[scores={final_lap=1..}] at @s run scoreboard players add @s final_lap 1

execute as @a[tag=lapok,scores={lap=3,final_lap=1}] at @s run stopsound @s
execute as @a[tag=lapok,scores={lap=3}] at @s run scoreboard players set @s final_lap 1

execute as @a[scores={lap=3}] at @s run stopsound @s * mk:music.prairie
execute as @a[scores={lap=3}] at @s run stopsound @s * mk:music.champignon
execute as @a[scores={lap=3}] at @s run stopsound @s * mk:music.stade
execute as @a[scores={lap=3}] at @s run stopsound @s * mk:music.arc_en_ciel



#execute as @a[tag=lapok] unless entity @s[scores={lap=4}] run title @s actionbar ["","Tour :",{"score":{"name":"@s","objective":"lap"}}]
execute as @a[tag=lapok] unless entity @s[scores={lap=3..}] at @s run playsound mk:misc.lap ambient @s
execute as @a[tag=lapok] if entity @s[scores={lap=3}] at @s run playsound mk:misc.final_lap ambient @s ~ ~ ~ 1 1.05


execute as @a[scores={lap=3,choix_map=0,final_lap=80}] at @s run function mk:music/prairie2
execute as @a[scores={lap=3,choix_map=1,final_lap=80}] at @s run function mk:music/mushroom2
execute as @a[scores={lap=3,choix_map=2,final_lap=80}] at @s run function mk:music/stade2
execute as @a[scores={lap=3,choix_map=3,final_lap=80}] at @s run function mk:music/rainbow2

execute as @a[scores={final_lap=90}] at @s run scoreboard players set @s final_lap 0

execute as @a[tag=lapok] if entity @s[scores={lap=4}] run title @s title ["",{"text":"TERMINÉ !","color":"gold"}]
execute as @a[tag=lapok] if entity @s[scores={lap=4}] run tag @s add finish
execute as @a[tag=lapok] if entity @s[scores={lap=4}] at @a[tag=finish] run scoreboard players add @s final_number 1
execute as @a[tag=lapok,scores={lap=4}] run stopsound @s
execute as @a[tag=lapok,scores={lap=4}] if entity @s[scores={number=1}] at @s run playsound mk:misc.first_place ambient @s
execute as @a[tag=lapok,scores={lap=4}] unless entity @s[scores={number=1}] at @s run playsound mk:misc.other_place ambient @s
execute as @a[tag=lapok,scores={lap=4}] run function mk:map/set_team_finish
execute as @a[tag=lapok,scores={lap=4}] at @s run tag @e[type=pig,tag=voiture,limit=1,sort=nearest] add follow_path


execute as @a[tag=lapok] run scoreboard players operation @s total_circuit += @s circuit
execute as @a[tag=lapok] unless entity @s[scores={lap=4..}] run scoreboard players set @s circuit 0
scoreboard players set @a[tag=lapok] checkpoint 1


tag @a[tag=lapok] remove lapok




scoreboard players add @a[scores={lap=4..2000}] lap 1
execute as @a[scores={lap=100}] at @s run playsound mk:music.result ambient @s


execute as @a unless entity @s[scores={lap=4..}] run title @s actionbar ["","Tour : ",{"score":{"name":"@s","objective":"lap"}},"/3"]




#Fin de la partie si tous le monde a finish avec ingame et finish
execute if entity @a[tag=ingame] run tag @a add wait_finish
execute if entity @a[tag=ingame] if entity @a[tag=!finish] run tag @a remove wait_finish
execute if entity @a[tag=ingame] if entity @a[tag=wait_finish] run function mk:map/all_finish
