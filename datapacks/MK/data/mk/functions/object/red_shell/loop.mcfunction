execute as @e[tag=red_shell,tag=!1] at @s as @a[sort=furthest,distance=..10] unless score @s player = @e[tag=red_shell,tag=!1,sort=nearest,limit=1] player facing entity @s feet run tp @e[tag=red_shell,tag=!1,sort=nearest,limit=1] ~ ~ ~ ~ ~
execute as @e[tag=red_shell,tag=!1] at @s at @a[sort=furthest,distance=..10] unless score @s player = @p player run tag @s add follow_player
execute as @e[tag=red_shell,tag=!1,tag=follow_player,tag=!lakitu_remonte] at @s run tp @s ^ ^ ^1
execute as @e[tag=red_shell,tag=!1,tag=follow_player,tag=lakitu_remonte] at @s run tp @s ^ ^ ^2

tag @e[tag=red_shell,tag=!1] remove follow_path_fast
tag @e[tag=red_shell,tag=!1,tag=!follow_player] add follow_path_fast

tag @e[tag=red_shell,tag=!1] remove follow_player



#Kill de la carapce rouge si elle est buggé en lakitu remonte
execute as @e[tag=red_shell,tag=lakitu_remonte] at @s unless entity @a[distance=..15] run kill @s



execute at @e[tag=red_shell,tag=!1,scores={music=1}] run playsound mk:item.red_shell ambient @a
scoreboard players add @e[tag=red_shell,tag=!1] music 1
scoreboard players set @e[tag=red_shell,tag=!1,scores={music=3}] music 0


#Kill si il y a un mur
execute as @e[tag=red_shell,tag=!1] at @s unless block ~ ~-0.5 ~ air unless block ~ ~0.5 ~ air unless block ~0.5 ~ ~ air unless block ~ ~ ~0.5 air unless block ~-0.5 ~ ~ air unless block ~ ~ ~-0.5 air run function mk:object/red_shell/kill



execute as @e[tag=red_shell,tag=1] at @s at @p[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["red_shell_item2"]}}]},distance=..3] rotated ~ 0 run tp @s ^ ^ ^-1 ~ 0


execute as @e[tag=red_shell_anim] at @s at @e[tag=red_shell,distance=..4] if score @e[tag=red_shell,sort=nearest,limit=1] UUID = @s UUID run tp @s ~ ~-0.3 ~
execute as @e[tag=red_shell_anim] at @s run tp @s ~ ~ ~ ~10 ~

#Détection et kill s'ils sont séparés
execute as @e[tag=red_shell_anim] at @s unless entity @e[tag=red_shell,limit=1,sort=nearest,distance=..2] run function mk:object/red_shell/kill




#Kill s'ils se rencontrent
execute as @e[tag=red_shell,scores={time_object=15..}] at @s at @e[tag=casse,distance=..2] unless score @s UUID = @e[tag=casse,sort=nearest,limit=1] UUID at @s as @e[distance=..2,tag=casse,limit=2,sort=nearest] run kill @s



#Si une carapace rencontre un AUTRE joueur alors on lui met stun
execute as @e[tag=red_shell] at @s at @a[distance=..2] unless score @p player = @s player at @a if score @p player = @s player run playsound mk:mario.gotcha ambient @p ~ ~ ~ 3 1

execute as @e[tag=red_shell] if entity @s[scores={time_object=30..}] at @s at @a[distance=..2] as @p if entity @s[scores={stun=0}] run scoreboard players set @s stun 40
execute as @e[tag=red_shell] if entity @s[scores={time_object=30..}] at @s at @a[distance=..2] run function mk:object/red_shell/kill


#Si une carapace rencontre un AUTRE joueur alors on lui met stun
execute as @e[tag=red_shell] unless entity @s[scores={time_object=30..}] at @s at @a[distance=..2] unless score @p player = @s player as @p if entity @s[scores={stun=0}] run scoreboard players set @s stun 40
execute as @e[tag=red_shell] unless entity @s[scores={time_object=30..}] at @s at @a[distance=..2] unless score @p player = @s player run function mk:object/red_shell/kill






#Kill si le possesseur  n'a pas la carapace en main
execute as @e[tag=red_shell,tag=1,tag=!r1,tag=!r2,tag=!r3] at @s as @p unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["red_shell_item2"]}}]}] as @e[tag=red_shell,tag=1,limit=1,sort=nearest] run function mk:object/red_shell/lunch
execute as @a[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["red_shell_item2"]}}]}] at @s unless entity @e[tag=red_shell,tag=1,distance=..3] run clear @s minecraft:warped_fungus_on_a_stick{Tags:["red_shell_item2"]} 1




#Lancement de la carapace (2ème activation)
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["red_shell_item2"]}}]},scores={click2=1..}] at @s as @e[tag=red_shell,limit=1,sort=nearest] at @s run function mk:object/red_shell/lunch
clear @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["red_shell_item2"]}}]},scores={click2=1..}] minecraft:warped_fungus_on_a_stick{Tags:["red_shell_item2"]} 1



#Mise en place de la carapace (1ère activation)
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["red_shell_item1"]}}]},scores={click2=1..}] at @s run function mk:object/red_shell/spawn
item replace entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["red_shell_item1"]}}]},scores={click2=1..}] weapon.offhand with warped_fungus_on_a_stick{CustomModelData:3,display:{Name:'{"text":"Red Shell","color":"dark_red"}'},Tags:["red_shell_item2"]} 1