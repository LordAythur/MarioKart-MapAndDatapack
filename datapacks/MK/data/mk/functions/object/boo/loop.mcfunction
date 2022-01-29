#Pique devant lui + si personne ou pas objet donne un champi

#Lancement du boo
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["boo_item"]}}]},scores={click2=1..}] at @s run function mk:object/boo/lunch
clear @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["boo_item"]}}]},scores={click2=1..}] minecraft:warped_fungus_on_a_stick{Tags:["boo_item"]} 1

scoreboard players add @a[scores={boo=1..}] boo 1
scoreboard players reset @a[scores={boo=100..}] boo