execute at @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["triple_banana_item2"]}}]}] as @e[tag=banana,tag=b1,tag=1,sort=nearest,limit=1] if score @p player = @s player rotated ~ 0 positioned ^ ^ ^-1 rotated as @p run tp @s ~ ~ ~ ~ ~
execute at @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["triple_banana_item2"]}}]}] as @e[tag=banana,tag=b2,tag=1,sort=nearest,limit=1] if score @p player = @s player rotated ~ 0 positioned ^ ^ ^-2 rotated as @p run tp @s ~ ~ ~ ~ ~
execute at @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["triple_banana_item2"]}}]}] as @e[tag=banana,tag=b3,tag=1,sort=nearest,limit=1] if score @p player = @s player rotated ~ 0 positioned ^ ^ ^-3 rotated as @p run tp @s ~ ~ ~ ~ ~



execute at @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["double_banana_item1"]}}]}] as @e[tag=banana,tag=b1,tag=1,sort=nearest,limit=1] if score @p player = @s player rotated ~ 0 positioned ^ ^ ^-1 rotated as @p run tp @s ~ ~ ~ ~ ~
execute at @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["double_banana_item1"]}}]}] as @e[tag=banana,tag=b2,tag=1,sort=nearest,limit=1] if score @p player = @s player rotated ~ 0 positioned ^ ^ ^-2 rotated as @p run tp @s ~ ~ ~ ~ ~






#Kill si le possesseur n'a pas la banane en main (2)
execute as @a[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["double_banana_item1"]}}]}] at @s unless entity @e[tag=banana,tag=1,tag=b2,distance=..4] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:8,display:{Name:'{"text":"Banana","color":"yellow"}'},Tags:["banana_item2"]} 1

#Kill si le possesseur n'a pas la banane en main (3)
execute as @a[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["triple_banana_item2"]}}]}] at @s unless entity @e[tag=banana,tag=1,tag=b3,distance=..4] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:18,display:{Name:'{"text":"Double Banana","color":"yellow"}'},Tags:["double_banana_item1"]} 1






#Lancement de la 2ère banane (1ère activation double) et donne une banane classique
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["double_banana_item1"]}}]},scores={click2=1..}] at @s as @e[tag=banana,limit=1,tag=b2,sort=nearest] if score @p player = @s player at @s run function mk:object/banana/lunch
item replace entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["double_banana_item1"]}}]},scores={click2=1..}] weapon.offhand with warped_fungus_on_a_stick{CustomModelData:8,display:{Name:'{"text":"Banana","color":"yellow"}'},Tags:["banana_item2"]} 1



#Lancement de la 1ère banane (2ème activation triple)
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["triple_banana_item2"]}}]},scores={click2=1..}] at @s as @e[tag=banana,tag=b3,limit=1,sort=nearest] if score @p player = @s player at @s run function mk:object/banana/lunch
item replace entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["triple_banana_item2"]}}]},scores={click2=1..}] weapon.offhand with warped_fungus_on_a_stick{CustomModelData:18,display:{Name:'{"text":"Double Banana","color":"yellow"}'},Tags:["double_banana_item1"]} 1



#Mise en place des bananes (1ère activation triple)
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["triple_banana_item1"]}}]},scores={click2=1..}] at @s run function mk:object/triple_banana/spawn
item replace entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["triple_banana_item1"]}}]},scores={click2=1..}] weapon.offhand with warped_fungus_on_a_stick{CustomModelData:19,display:{Name:'{"text":"Triple Banana","color":"yellow"}'},Tags:["triple_banana_item2"]} 1