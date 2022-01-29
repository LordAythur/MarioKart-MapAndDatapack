#Si star ou boo, alors reset de tous les scores
scoreboard players set @a[scores={time_star=1..}] stun 0
scoreboard players set @a[scores={time_star=1..}] confused 0

scoreboard players set @a[scores={boo=1..}] stun 0
scoreboard players set @a[scores={boo=1..}] confused 0



scoreboard players set @a playermotionX 0
scoreboard players set @a playermotionZ 0

execute as @a store result score @s playermotionX run data get entity @s Motion[0] 300
execute as @a store result score @s playermotionZ run data get entity @s Motion[2] 300


#Si score player motionX ou Motion Y, alors le joueur bouge
execute as @a unless entity @s[scores={playermotionX=0,playermotionZ=0}] unless entity @s[scores={confused=1..}] at @s as @e[type=pig,tag=voiture,limit=1,sort=nearest,distance=..1] if score @s speed < @p[distance=..1] max_speed run scoreboard players operation @s speed += @p[distance=..1] acceleration

#Redirection du cochon
execute as @e[type=pig,tag=voiture] at @s if entity @p[distance=..1] unless score @p confused matches 1.. rotated as @p[distance=..1] run function mk:kart/redirect_kart


#Récupération du poids du pilote
execute as @e[type=pig,tag=voiture] at @s if entity @p[distance=..1] run scoreboard players operation @s weight = @p[distance=..1] weight



#frein
execute as @e[type=pig,tag=voiture] at @s run scoreboard players set @s multiplication 3
execute as @e[type=pig,tag=voiture] at @s run scoreboard players operation @s multiplication *= @s weight


execute as @a[scores={playermotionX=0,playermotionZ=0}] unless entity @s[scores={confused=1..}] at @s as @e[type=pig,tag=voiture,distance=..1,sort=nearest,limit=1,scores={speed=1..}] run scoreboard players operation @s speed -= @s multiplication

execute as @e[type=pig,tag=voiture] at @s unless entity @p[distance=..1] run scoreboard players operation @s[scores={speed=1..}] speed -= @s multiplication
execute as @e[type=pig,tag=voiture] at @s if entity @p[distance=..1,scores={confused=1..}] run scoreboard players operation @s[scores={speed=1..}] speed -= @s multiplication






#je met le max speed du cochon pour detecter qaund on a utilisé un boost ou non :
#Si le score speed est au dessus cela veut dire qu'on a utilisé un boost, sinon cela veut dire que l'on a atteint le max_speed
execute as @e[type=pig,tag=voiture] at @s run scoreboard players operation @s max_speed = @p[distance=..1] acceleration
execute as @e[type=pig,tag=voiture] at @s run scoreboard players operation @s max_speed += @p[distance=..1] max_speed
#execute as @e[type=pig,tag=voiture] at @s if score @s speed > @s max_speed run scoreboard players remove @s speed 100



#Block qui accelere
execute as @e[type=pig,tag=voiture] at @s if block ~ ~-0.2 ~ yellow_glazed_terracotta run scoreboard players set @s speed 3000
execute as @e[type=pig,tag=voiture] at @s if block ~ ~-0.2 ~ yellow_glazed_terracotta run scoreboard players set @p weight 10
execute as @e[type=pig,tag=voiture] at @s if block ~ ~-0.2 ~ yellow_glazed_terracotta run playsound mk:mario.acceleration ambient @p ~ ~ ~ 5 0.9
execute as @e[type=pig,tag=voiture] at @s if block ~ ~-0.2 ~ yellow_glazed_terracotta unless entity @s[scores={timeHighSpeed=10..}] run scoreboard players set @s timeHighSpeed 10

#+ longtemps
execute as @e[type=pig,tag=voiture] at @s if block ~ ~-0.2 ~ light_blue_glazed_terracotta run scoreboard players set @s speed 3000
execute as @e[type=pig,tag=voiture] at @s if block ~ ~-0.2 ~ light_blue_glazed_terracotta run scoreboard players set @p weight 10
execute as @e[type=pig,tag=voiture] at @s if block ~ ~-0.2 ~ light_blue_glazed_terracotta run playsound mk:mario.acceleration ambient @p ~ ~ ~ 5 0.9
execute as @e[type=pig,tag=voiture] at @s if block ~ ~-0.2 ~ light_blue_glazed_terracotta unless entity @s[scores={timeHighSpeed=20..}] run scoreboard players set @s timeHighSpeed 20



#+++ longtemps
execute as @e[type=pig,tag=voiture] at @s if block ~ ~-0.2 ~ lime_glazed_terracotta run scoreboard players set @s speed 3000
execute as @e[type=pig,tag=voiture] at @s if block ~ ~-0.2 ~ lime_glazed_terracotta run scoreboard players set @p weight 10
execute as @e[type=pig,tag=voiture] at @s if block ~ ~-0.2 ~ lime_glazed_terracotta run playsound mk:mario.acceleration ambient @p ~ ~ ~ 5 0.9
execute as @e[type=pig,tag=voiture] at @s if block ~ ~-0.2 ~ lime_glazed_terracotta unless entity @s[scores={timeHighSpeed=40..}] run scoreboard players set @s timeHighSpeed 40





#Reset de la multiplication
execute as @e[type=pig,tag=voiture] at @s run scoreboard players set @s multiplication 6
execute as @e[type=pig,tag=voiture] at @s run scoreboard players operation @s multiplication *= @s weight


execute as @e[type=pig,tag=voiture] at @s if block ~ ~-0.2 ~ #mk:ralentissement unless entity @s[scores={speed=..200}] run scoreboard players operation @s speed -= @s multiplication


#Cube acceleration forte
execute as @e[type=pig,tag=voiture,scores={timeHighSpeed=1}] at @s as @p run scoreboard players operation @s weight = @s save_weight
execute as @e[type=pig,tag=voiture,scores={timeHighSpeed=1}] at @s if score @s speed > @p[distance=..1] max_speed run scoreboard players operation @s speed = @p[distance=..1] max_speed
scoreboard players remove @e[scores={timeHighSpeed=1..}] timeHighSpeed 1






#detection collisions
execute as @e[type=pig,tag=voiture,scores={speed=600..}] at @s unless block ~-0.45 ~0.95 ~ #mk:exeption run scoreboard players set @s speed 0
execute as @e[type=pig,tag=voiture,scores={speed=600..}] at @s unless block ~0.45 ~0.95 ~ #mk:exeption run scoreboard players set @s speed 0
execute as @e[type=pig,tag=voiture,scores={speed=600..}] at @s unless block ~ ~0.95 ~0.45 #mk:exeption run scoreboard players set @s speed 0
execute as @e[type=pig,tag=voiture,scores={speed=600..}] at @s unless block ~ ~0.95 ~-0.45 #mk:exeption run scoreboard players set @s speed 0





#Si ca vitesse est négative on la met nulle
scoreboard players set @e[type=pig,tag=voiture,scores={speed=..0}] speed 0

#Si il va vite, on lui retire le slow
execute as @a[scores={slow=1..}] at @s as @e[tag=voiture,sort=nearest,limit=1] if entity @s[scores={timeHighSpeed=1..}] run scoreboard players set @p slow 0


execute as @a[scores={slow=1..}] at @s as @e[tag=voiture,sort=nearest,limit=1] if entity @s[scores={speed=300..}] run scoreboard players set @s speed 300
execute as @a[scores={stun=1..}] at @s run function mk:kart/stun


#Attribution de la vitesse de l'étoile
execute as @a[scores={time_star=..161}] at @s as @e[tag=voiture,sort=nearest,limit=1] run scoreboard players set @s[scores={speed=..2000}] speed 2000



#Déplacement + affichage de la vitesse

#execute as @e[type=pig,tag=voiture] at @s run title @p[distance=..1] actionbar ["","Vitesse : ",{"score":{"name":"@s","objective":"speed"}}," / ",{"score":{"name":"@p[distance=..1]","objective":"max_speed"}}]
execute as @e[type=pig,tag=voiture] run function mk:kart/move
#execute as @e[type=pig,tag=voiture] at @s if entity @p[distance=..1,scores={confused=1..}] run tp @s ~ ~ ~ ~20 ~




#Lakitu / remonte
execute as @e[type=pig,tag=voiture] at @s run scoreboard players operation @s checkpoint = @p[distance=..1] checkpoint

#Si dans l'eau ou sur un block barrier ajout du tag et tp
execute as @e[tag=voiture,tag=!lakitu_remonte] at @s if block ~ ~ ~ water at @e[tag=circuit,sort=furthest,distance=..70] unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water unless block ~ ~-1 ~ barrier if score @s checkpoint = @e[tag=circuit,limit=1,sort=nearest] checkpoint run scoreboard players operation @e[tag=voiture,limit=1,sort=nearest] circuit = @e[tag=circuit,limit=1,sort=nearest] circuit
execute as @e[tag=voiture,tag=!lakitu_remonte] at @s if block ~ ~ ~ water run tag @s add lakitu_remonte

execute as @e[tag=voiture,tag=!lakitu_remonte] at @s if block ~ ~-0.3 ~ barrier at @e[tag=circuit,sort=furthest,distance=..70] unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water unless block ~ ~-1 ~ barrier if score @s checkpoint = @e[tag=circuit,limit=1,sort=nearest] checkpoint run scoreboard players operation @e[tag=voiture,limit=1,sort=nearest] circuit = @e[tag=circuit,limit=1,sort=nearest] circuit
execute as @e[tag=voiture,tag=!lakitu_remonte] at @s if block ~ ~-0.3 ~ barrier run tag @s add lakitu_remonte

#Si trop loin d'un circuit également #vide
execute as @e[tag=voiture,tag=!lakitu_remonte] at @s if block ~ ~-1 ~ air if block ~ ~-2 ~ air unless entity @e[tag=circuit,distance=..15] at @e[tag=circuit,sort=furthest,distance=..70] if score @s checkpoint = @e[tag=circuit,limit=1,sort=nearest] checkpoint run scoreboard players operation @e[tag=voiture,limit=1,sort=nearest] circuit = @e[tag=circuit,limit=1,sort=nearest] circuit
execute as @e[tag=voiture,tag=!lakitu_remonte] at @s if block ~ ~-1 ~ air if block ~ ~-2 ~ air unless entity @e[tag=circuit,distance=..15] run tag @s add lakitu_remonte


execute as @e[tag=lakitu_remonte] run function mk:kart/lakitu




#Title si on a loupé un checkpoint !
execute as @a[tag=ingame] at @s as @e[tag=circuit,sort=nearest,limit=1] if score @s checkpoint > @p checkpoint run scoreboard players add @p lakituwarning 1

execute as @a[scores={lakituwarning=10..}] run title @s times 10 10 10
execute as @a[scores={lakituwarning=10..}] run title @s subtitle {"text":"Checkpoint loupé...","italic":true,"color":"dark_red"}
execute as @a[scores={lakituwarning=10..}] run title @s title {"text":"Reviens !!!","bold":true,"color":"dark_red"}

execute as @a[scores={lakituwarning=10..}] at @s run playsound mk:misc.warninglakitu ambient @s ~ ~ ~ 0.8 0.9
scoreboard players reset @a[scores={lakituwarning=10..}] lakituwarning




#Enlevement des stuns et des confused
scoreboard players remove @a[scores={confused=1..}] confused 1
scoreboard players remove @a[scores={stun=1..}] stun 1
scoreboard players remove @a[scores={slow=1..}] slow 1



#Vie des cochons

data merge entity @e[type=pig,limit=1,sort=nearest,scores={speed=..199}] {Health:1f}
data merge entity @e[type=pig,limit=1,sort=nearest,scores={speed=200..299}] {Health:2f}
data merge entity @e[type=pig,limit=1,sort=nearest,scores={speed=300..399}] {Health:3f}
data merge entity @e[type=pig,limit=1,sort=nearest,scores={speed=300..499}] {Health:4f}
data merge entity @e[type=pig,limit=1,sort=nearest,scores={speed=400..599}] {Health:5f}
data merge entity @e[type=pig,limit=1,sort=nearest,scores={speed=500..699}] {Health:6f}
data merge entity @e[type=pig,limit=1,sort=nearest,scores={speed=600..799}] {Health:7f}
data merge entity @e[type=pig,limit=1,sort=nearest,scores={speed=700..899}] {Health:8f}
data merge entity @e[type=pig,limit=1,sort=nearest,scores={speed=800..999}] {Health:9f}
data merge entity @e[type=pig,limit=1,sort=nearest,scores={speed=900..1099}] {Health:10f}
data merge entity @e[type=pig,limit=1,sort=nearest,scores={speed=1000..1199}] {Health:11f}
data merge entity @e[type=pig,limit=1,sort=nearest,scores={speed=1100..1299}] {Health:12f}
data merge entity @e[type=pig,limit=1,sort=nearest,scores={speed=1200..1399}] {Health:13f}
data merge entity @e[type=pig,limit=1,sort=nearest,scores={speed=1300..1499}] {Health:14f}
data merge entity @e[type=pig,limit=1,sort=nearest,scores={speed=1500..2000}] {Health:15f}
data merge entity @e[type=pig,limit=1,sort=nearest,scores={speed=2000..}] {Health:20f}

