execute at @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["triple_red_shell_item2"]}}]}] as @e[tag=red_shell,tag=r1,tag=1,sort=nearest,limit=1] if score @p player = @s player rotated ~ 0 positioned ^ ^ ^-1 rotated as @p run tp @s ~ ~ ~ ~ ~
execute at @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["triple_red_shell_item2"]}}]}] as @e[tag=red_shell,tag=r2,tag=1,sort=nearest,limit=1] if score @p player = @s player rotated ~ 0 positioned ^ ^ ^-2 rotated as @p run tp @s ~ ~ ~ ~ ~
execute at @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["triple_red_shell_item2"]}}]}] as @e[tag=red_shell,tag=r3,tag=1,sort=nearest,limit=1] if score @p player = @s player rotated ~ 0 positioned ^ ^ ^-3 rotated as @p run tp @s ~ ~ ~ ~ ~



execute at @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["double_red_shell_item1"]}}]}] as @e[tag=red_shell,tag=r1,tag=1,sort=nearest,limit=1] if score @p player = @s player rotated ~ 0 positioned ^ ^ ^-1 rotated as @p run tp @s ~ ~ ~ ~ ~
execute at @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["double_red_shell_item1"]}}]}] as @e[tag=red_shell,tag=r2,tag=1,sort=nearest,limit=1] if score @p player = @s player rotated ~ 0 positioned ^ ^ ^-2 rotated as @p run tp @s ~ ~ ~ ~ ~






#Kill si le possesseur n'a pas la carapace rouge en main (2)
execute as @a[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["double_red_shell_item1"]}}]}] at @s unless entity @e[tag=red_shell,tag=1,tag=r2,distance=..4] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:3,display:{Name:'{"text":"red_shell","color":"dark_red"}'},Tags:["red_shell_item2"]} 1

#Kill si le possesseur n'a pas la carapace rouge en main (3)
execute as @a[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["triple_red_shell_item2"]}}]}] at @s unless entity @e[tag=red_shell,tag=1,tag=r3,distance=..4] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:14,display:{Name:'{"text":"Double red_shell","color":"dark_red"}'},Tags:["double_red_shell_item1"]} 1





#Lancement de la 2ère carapace rouge (1ère activation double) et donne une carapace rouge classique
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["double_red_shell_item1"]}}]},scores={click2=1..}] at @s as @e[tag=red_shell,limit=1,sort=nearest,tag=r2] at @s run function mk:object/red_shell/lunch
item replace entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["double_red_shell_item1"]}}]},scores={click2=1..}] weapon.offhand with warped_fungus_on_a_stick{CustomModelData:3,display:{Name:'{"text":"red_shell","color":"dark_red"}'},Tags:["red_shell_item2"]} 1



#Lancement de la 1ère carapace rouge (2ème activation triple)
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["triple_red_shell_item2"]}}]},scores={click2=1..}] at @s as @e[tag=red_shell,limit=1,sort=nearest,tag=r3] at @s run function mk:object/red_shell/lunch
item replace entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["triple_red_shell_item2"]}}]},scores={click2=1..}] weapon.offhand with warped_fungus_on_a_stick{CustomModelData:14,display:{Name:'{"text":"Double red_shell","color":"dark_red"}'},Tags:["double_red_shell_item1"]} 1



#Mise en place des carapace rouges (1ère activation triple)
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["triple_red_shell_item1"]}}]},scores={click2=1..}] at @s run function mk:object/triple_red_shell/spawn
item replace entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["triple_red_shell_item1"]}}]},scores={click2=1..}] weapon.offhand with warped_fungus_on_a_stick{CustomModelData:15,display:{Name:'{"text":"Triple red_shell","color":"dark_red"}'},Tags:["triple_red_shell_item2"]} 1