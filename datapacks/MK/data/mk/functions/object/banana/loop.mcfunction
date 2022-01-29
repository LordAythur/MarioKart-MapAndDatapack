execute as @e[tag=banana,tag=1] at @s at @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["banana_item2"]}}]},distance=..3] if score @p player = @s player rotated ~ 0 positioned ^ ^ ^-1 rotated as @p run tp @s ~ ~ ~ ~ ~



#Si une banane rencontre un AUTRE joueur alors on lui met confused et un playsound
execute as @e[tag=banana] at @s at @a[distance=..1] unless score @p player = @s player at @a if score @p player = @s player run playsound mk:mario.gotcha ambient @p ~ ~ ~ 3 1


execute as @e[tag=banana] if entity @s[scores={time_object=5..}] at @s at @a[distance=..1] as @p if entity @s[scores={confused=0}] at @s run playsound mk:mario.damage_banana ambient @s
execute as @e[tag=banana] if entity @s[scores={time_object=5..}] at @s at @a[distance=..1] as @p if entity @s[scores={confused=0}] run scoreboard players set @s confused 40
execute as @e[tag=banana] if entity @s[scores={time_object=5..}] at @s at @a[distance=..1] run kill @s


execute as @e[tag=banana] unless entity @s[scores={time_object=5..}] at @s at @a[distance=..1] unless score @p player = @s player as @p if entity @s[scores={confused=0}] at @s run playsound mk:mario.damage_banana ambient @s
execute as @e[tag=banana] unless entity @s[scores={time_object=5..}] at @s at @a[distance=..1] unless score @p player = @s player as @p if entity @s[scores={confused=0}] run scoreboard players set @s confused 40
execute as @e[tag=banana] unless entity @s[scores={time_object=5..}] at @s at @a[distance=..1] unless score @p player = @s player run kill @s




#Kill s'ils se rencontrent
execute as @e[tag=banana] at @s at @e[tag=!banana,tag=casse,distance=..1] unless score @s UUID = @e[tag=casse,sort=nearest,limit=1] UUID at @s as @e[distance=..1,tag=casse] run kill @s


#Kill si le possesseur n'a pas la banane en main
execute as @e[tag=banana,tag=1,tag=!b1,tag=!b2,tag=!b3] at @s as @p unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["banana_item2"]}}]}] as @e[tag=banana,tag=1,limit=1,sort=nearest,distance=..2] run function mk:object/banana/lunch
execute as @a[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["banana_item2"]}}]}] at @s unless entity @e[tag=banana,tag=1,distance=..3] run clear @s minecraft:warped_fungus_on_a_stick{Tags:["banana_item2"]} 1






#Lancement de la banane (2ème activation)
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["banana_item2"]}}]},scores={click2=1..}] at @s as @e[tag=banana,limit=1,sort=nearest] at @s run function mk:object/banana/lunch
clear @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["banana_item2"]}}]},scores={click2=1..}] minecraft:warped_fungus_on_a_stick{Tags:["banana_item2"]} 1



#Mise en place de la banane (1ère activation)
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["banana_item1"]}}]},scores={click2=1..}] at @s run function mk:object/banana/spawn
item replace entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["banana_item1"]}}]},scores={click2=1..}] weapon.offhand with warped_fungus_on_a_stick{CustomModelData:8,display:{Name:'{"text":"Banana","color":"yellow"}'},Tags:["banana_item2"]} 1