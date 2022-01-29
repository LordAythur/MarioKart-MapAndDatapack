#Lancement du champignon
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["mushroom_item"]}}]},scores={click2=1..}] at @s as @e[tag=voiture,sort=nearest,limit=1] run function mk:object/mushroom/speed
clear @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["mushroom_item"]}}]},scores={click2=1..}] minecraft:warped_fungus_on_a_stick{Tags:["mushroom_item"]} 1
