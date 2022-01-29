execute as @e[tag=green_shell,tag=!1] at @s run function mk:object/green_shell/move
execute as @e[tag=green_shell,tag=1] at @s at @p[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["green_shell_item2"]}}]},distance=..3] rotated ~ 0 run tp @s ^ ^ ^-1 ~ 0

execute as @e[tag=green_shell_anim] at @s at @e[tag=green_shell,distance=..3] if score @e[tag=green_shell,sort=nearest,limit=1] UUID = @s UUID run tp @s ~ ~-0.3 ~
execute as @e[tag=green_shell_anim] at @s run tp @s ~ ~ ~ ~10 ~


#Détection et kill s'ils sont séparés
execute as @e[tag=green_shell_anim] at @s unless entity @e[tag=green_shell,limit=1,sort=nearest,distance=..2] run function mk:object/green_shell/kill





#Kill s'ils se rencontrent (avant lancer)
execute as @e[tag=green_shell] unless entity @s[scores={time_object=20..}] at @s at @e[tag=casse,distance=..1] unless score @s player = @e[tag=casse,sort=nearest,limit=1] player at @s as @e[distance=..1,tag=casse,limit=2,sort=nearest] run kill @s
#Kill s'ils se rencontrent (après lancer)
execute as @e[tag=green_shell,scores={time_object=20..}] at @s at @e[tag=casse,distance=..1] unless score @s UUID = @e[tag=casse,sort=nearest,limit=1] UUID at @s as @e[distance=..1,tag=casse,limit=2,sort=nearest] run kill @s







#Si une carapace rencontre un joueur alors on lui met stun
execute as @e[tag=green_shell] at @s at @a[distance=..2] unless score @p player = @s player at @a if score @p player = @s player run playsound mk:mario.gotcha ambient @p ~ ~ ~ 5 1

execute as @e[tag=green_shell] if entity @s[scores={time_object=20..}] at @s at @a[distance=..2] as @p if entity @s[scores={stun=0}] run scoreboard players set @s stun 40
execute as @e[tag=green_shell] if entity @s[scores={time_object=20..}] at @s at @a[distance=..2] run function mk:object/green_shell/kill

#Si une carapace rencontre un AUTRE joueur alors on lui met stun
execute as @e[tag=green_shell] unless entity @s[scores={time_object=20..}] at @s at @a[distance=..2] unless score @p player = @s player as @p if entity @s[scores={stun=0}] run scoreboard players set @s stun 40
execute as @e[tag=green_shell] unless entity @s[scores={time_object=20..}] at @s at @a[distance=..2] unless score @p player = @s player run function mk:object/green_shell/kill








#Kill si le possesseur  n'a pas la carapace en main
execute as @e[tag=green_shell,tag=1,tag=!g1,tag=!g2,tag=!g3] at @s as @p unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["green_shell_item2"]}}]}] as @e[tag=green_shell,tag=1,limit=1,sort=nearest] run function mk:object/green_shell/lunch
execute as @a[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["green_shell_item2"]}}]}] at @s unless entity @e[tag=green_shell,tag=1,distance=..3] run clear @s minecraft:warped_fungus_on_a_stick{Tags:["green_shell_item2"]} 1





#Lancement de la carapace (2ème activation)
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["green_shell_item2"]}}]},scores={click2=1..}] at @s as @e[tag=green_shell,limit=1,sort=nearest] at @s run function mk:object/green_shell/lunch
clear @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["green_shell_item2"]}}]},scores={click2=1..}] minecraft:warped_fungus_on_a_stick{Tags:["green_shell_item2"]} 1



#Mise en place de la carapace (1ère activation)
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["green_shell_item1"]}}]},scores={click2=1..}] at @s run function mk:object/green_shell/spawn
item replace entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["green_shell_item1"]}}]},scores={click2=1..}] weapon.offhand with warped_fungus_on_a_stick{CustomModelData:2,display:{Name:'{"text":"Green Shell","color":"dark_green"}'},Tags:["green_shell_item2"]} 1