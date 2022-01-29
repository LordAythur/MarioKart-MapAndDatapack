
#Lancement du champignon 2/3
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["double_mushroom_item"]}}]},scores={click2=1..}] at @s as @e[tag=voiture,sort=nearest,limit=1] run function mk:object/mushroom/speed
#execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["triple_mushroom_item"]}}]},scores={click2=1..}] at @s 
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["double_mushroom_item"]}}]},scores={click2=1..}] run function mk:object/mushroom/give



#Lancement du champignon 1/3
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["triple_mushroom_item"]}}]},scores={click2=1..}] at @s as @e[tag=voiture,sort=nearest,limit=1] run function mk:object/mushroom/speed
#execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["triple_mushroom_item"]}}]},scores={click2=1..}] at @s 
item replace entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["triple_mushroom_item"]}}]},scores={click2=1..}] weapon.offhand with warped_fungus_on_a_stick{CustomModelData:16,display:{Name:'{"text":"Double mushroom","color":"red"}'},Tags:["double_mushroom_item","use"]} 1
