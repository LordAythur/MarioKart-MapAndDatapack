#Lancement du blooper
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["blooper_item"]}}]},scores={click2=1..}] at @s as @a unless score @s player = @p player run tag @s add blind
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["blooper_item"]}}]},scores={click2=1..}] at @s as @a unless score @s player = @p player run item replace entity @s weapon.mainhand with totem_of_undying
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["blooper_item"]}}]},scores={click2=1..}] at @s as @a unless score @s player = @p player run effect give @s minecraft:instant_damage 1 50 true
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["blooper_item"]}}]},scores={click2=1..}] run schedule function mk:object/bloop/blind 2s
clear @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["blooper_item"]}}]},scores={click2=1..}] minecraft:warped_fungus_on_a_stick{Tags:["blooper_item"]} 1



effect clear @a minecraft:fire_resistance
effect clear @a minecraft:absorption
effect clear @a minecraft:regeneration




#Enleve le blind
execute as @e[scores={speed=2000..}] at @s run effect clear @p[distance=..1] blindness
execute as @e[tag=bullet_bill] at @s run effect clear @p[distance=..1] blindness
