execute at @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["triple_green_shell_item2"]}}]}] as @e[tag=green_shell,tag=g1,tag=1,sort=nearest,limit=1] if score @p player = @s player rotated ~ 0 positioned ^ ^ ^-1 rotated as @p run tp @s ~ ~ ~ ~ ~
execute at @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["triple_green_shell_item2"]}}]}] as @e[tag=green_shell,tag=g2,tag=1,sort=nearest,limit=1] if score @p player = @s player rotated ~ 0 positioned ^ ^ ^-2 rotated as @p run tp @s ~ ~ ~ ~ ~
execute at @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["triple_green_shell_item2"]}}]}] as @e[tag=green_shell,tag=g3,tag=1,sort=nearest,limit=1] if score @p player = @s player rotated ~ 0 positioned ^ ^ ^-3 rotated as @p run tp @s ~ ~ ~ ~ ~



execute at @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["double_green_shell_item1"]}}]}] as @e[tag=green_shell,tag=g1,tag=1,sort=nearest,limit=1] if score @p player = @s player rotated ~ 0 positioned ^ ^ ^-1 rotated as @p run tp @s ~ ~ ~ ~ ~
execute at @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["double_green_shell_item1"]}}]}] as @e[tag=green_shell,tag=g2,tag=1,sort=nearest,limit=1] if score @p player = @s player rotated ~ 0 positioned ^ ^ ^-2 rotated as @p run tp @s ~ ~ ~ ~ ~





#Kill si le possesseur n'a pas la carapace verte en main (2)
execute as @a[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["double_green_shell_item1"]}}]}] at @s unless entity @e[tag=green_shell,tag=1,tag=g2,distance=..4] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:2,display:{Name:'{"text":"green_shell","color":"green"}'},Tags:["green_shell_item2"]} 1

#Kill si le possesseur n'a pas la carapace verte en main (3)
execute as @a[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["triple_green_shell_item2"]}}]}] at @s unless entity @e[tag=green_shell,tag=1,tag=g3,distance=..4] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:12,display:{Name:'{"text":"Double green_shell","color":"green"}'},Tags:["double_green_shell_item1"]} 1








#Lancement de la 2ère carapace verte (1ère activation double) et donne une carapace verte classique
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["double_green_shell_item1"]}}]},scores={click2=1..}] at @s as @e[tag=green_shell,limit=1,sort=nearest,tag=g2] at @s run function mk:object/green_shell/lunch
item replace entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["double_green_shell_item1"]}}]},scores={click2=1..}] weapon.offhand with warped_fungus_on_a_stick{CustomModelData:2,display:{Name:'{"text":"green_shell","color":"green"}'},Tags:["green_shell_item2"]} 1



#Lancement de la 1ère carapace verte (2ème activation triple)
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["triple_green_shell_item2"]}}]},scores={click2=1..}] at @s as @e[tag=green_shell,limit=1,sort=nearest,tag=g3] at @s run function mk:object/green_shell/lunch
item replace entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["triple_green_shell_item2"]}}]},scores={click2=1..}] weapon.offhand with warped_fungus_on_a_stick{CustomModelData:12,display:{Name:'{"text":"Double green_shell","color":"green"}'},Tags:["double_green_shell_item1"]} 1



#Mise en place des carapace vertes (1ère activation triple)
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["triple_green_shell_item1"]}}]},scores={click2=1..}] at @s run function mk:object/triple_green_shell/spawn
item replace entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["triple_green_shell_item1"]}}]},scores={click2=1..}] weapon.offhand with warped_fungus_on_a_stick{CustomModelData:13,display:{Name:'{"text":"Triple green_shell","color":"green"}'},Tags:["triple_green_shell_item2"]} 1