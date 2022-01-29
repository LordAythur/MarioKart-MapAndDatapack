summon armor_stand ~ ~ ~ {Tags:["bullet_bill","lakitu_remonte","follow_path"],Invisible:1b,Pose:{RightArm:[270f,0f,0f]},HandItems:[{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:9}},{}]}

scoreboard players operation @e[tag=bullet_bill,limit=1,sort=nearest] player = @s player



item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:6,display:{Name:'{"text":"Bullet Bill","color":"black"}'},Tags:["bullet_bill_item"]} 1

playsound mk:item.bullet_bill ambient @s ~ ~ ~ 50 1
effect give @s invisibility 10 5 true
effect give @e[tag=voiture,limit=1,sort=nearest] invisibility 10 5 true


#2 methode pour l'initialisation :

#Soit par le dernier point passé (mais risque de retour si passage par exemple)
#scoreboard players operation @e[tag=bullet_bill,limit=1,sort=nearest] circuit = @s circuit

#Soit par le point le plus proche et qui prend en compte les checkpoint pour éviter les cuts (mais risque de traversé les murs)
execute at @e[tag=bullet_bill,limit=1,sort=nearest] as @e[tag=circuit,sort=furthest,distance=..200] if score @s checkpoint <= @p checkpoint run scoreboard players operation @e[tag=bullet_bill,limit=1,sort=nearest] circuit = @s circuit