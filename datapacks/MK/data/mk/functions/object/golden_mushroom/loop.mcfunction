#Lancement du champignon
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["golden_mushroom_item"]}}]},scores={click2=1..}] at @s as @e[tag=voiture,sort=nearest,limit=1] run function mk:object/golden_mushroom/speed





#Clear si le score mais pas l'item en main
execute as @a[scores={time_gold=1..}] unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["golden_mushroom_item"]}}]}] run function mk:object/golden_mushroom/reset



#Clear si délai écoulé
execute as @a[scores={time_gold=250..300}] run function mk:object/golden_mushroom/reset



scoreboard players add @a[scores={time_gold=1..}] time_gold 1
