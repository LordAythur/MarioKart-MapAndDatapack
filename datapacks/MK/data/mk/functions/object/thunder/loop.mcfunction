#Lancement du thunder
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["thunder_item"]}}]},scores={click2=1..}] at @s at @a unless score @s player = @p player run summon lightning_bolt ~ ~-30 ~
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["thunder_item"]}}]},scores={click2=1..}] at @s at @a unless score @s player = @p player run clear @p warped_fungus_on_a_stick

execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["thunder_item"]}}]},scores={click2=1..}] at @s at @a unless score @s player = @p player if score @p number matches 1 run scoreboard players set @p slow 130
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["thunder_item"]}}]},scores={click2=1..}] at @s at @a unless score @s player = @p player if score @p number matches 2 run scoreboard players set @p slow 120
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["thunder_item"]}}]},scores={click2=1..}] at @s at @a unless score @s player = @p player if score @p number matches 3 run scoreboard players set @p slow 110
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["thunder_item"]}}]},scores={click2=1..}] at @s at @a unless score @s player = @p player if score @p number matches 4 run scoreboard players set @p slow 100
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["thunder_item"]}}]},scores={click2=1..}] at @s at @a unless score @s player = @p player if score @p number matches 5 run scoreboard players set @p slow 80
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["thunder_item"]}}]},scores={click2=1..}] at @s at @a unless score @s player = @p player if score @p number matches 6 run scoreboard players set @p slow 60
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["thunder_item"]}}]},scores={click2=1..}] at @s at @a unless score @s player = @p player if score @p number matches 7 run scoreboard players set @p slow 40
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["thunder_item"]}}]},scores={click2=1..}] at @s at @a unless score @s player = @p player if score @p number matches 8 run scoreboard players set @p slow 20


execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["thunder_item"]}}]},scores={click2=1..}] at @s at @a unless score @s player = @p player run scoreboard players set @p stun 40
clear @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["thunder_item"]}}]},scores={click2=1..}] minecraft:warped_fungus_on_a_stick{Tags:["thunder_item"]} 1


execute as @e[scores={speed=2000..}] at @s run scoreboard players set @s slow 0