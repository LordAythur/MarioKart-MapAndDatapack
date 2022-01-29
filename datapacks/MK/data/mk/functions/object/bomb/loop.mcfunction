scoreboard players add @e[tag=bomb,tag=!1] time_object 1

#Tp de la bombe
execute as @e[tag=bomb,tag=1] at @s at @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["bomb_item2"]}}]},distance=..3] if score @p player = @s player rotated ~ 0 positioned ^ ^ ^-1 rotated as @p run tp @s ~ ~ ~ ~ ~



#Si une bombe rencontre un AUTRE joueur alors on la fait exploser immediatement
execute as @e[tag=bomb] at @s at @a[distance=..3] unless score @p player = @s player run scoreboard players set @s time_object 80






#Kill si le possesseur n'a pas la bombe en main
execute as @e[tag=bomb,tag=1] at @s as @p unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["bomb_item2"]}}]}] as @e[tag=bomb,tag=1,limit=1,sort=nearest,distance=..2] run function mk:object/bomb/lunch
execute as @a[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["bomb_item2"]}}]}] at @s unless entity @e[tag=bomb,tag=1,distance=..3] run clear @s minecraft:warped_fungus_on_a_stick{Tags:["bomb_item2"]} 1






#Lancement de la bombe (2ème activation)
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["bomb_item2"]}}]},scores={click2=1..}] at @s as @e[tag=bomb,limit=1,sort=nearest] at @s run function mk:object/bomb/lunch
clear @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["bomb_item2"]}}]},scores={click2=1..}] minecraft:warped_fungus_on_a_stick{Tags:["bomb_item2"]} 1



#Mise en place de la bombe (1ère activation)
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["bomb_item1"]}}]},scores={click2=1..}] at @s run function mk:object/bomb/spawn
item replace entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["bomb_item1"]}}]},scores={click2=1..}] weapon.offhand with warped_fungus_on_a_stick{CustomModelData:9,display:{Name:'{"text":"Bomb-omb","color":"dark"}'},Tags:["bomb_item2"]} 1


execute as @e[tag=bomb,scores={time_object=80..}] at @s run function mk:object/bomb/spawn_explosion
execute as @e[tag=bomb,scores={time_object=80..}] at @s run kill @s



#Clignotement
#Rouge
execute as @e[tag=bomb,scores={time_object=40}] run data merge entity @s {ArmorItems:[{},{},{},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;138177983,952978638,-1996948002,1906533730],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzZmZjczNDYzMjUwZWY3OWFkNDA4YWI0MGJkODE1NjM4Y2E5ZTEzOWQzMGJmYzYzZTg1ODMxYzE4NTgwYzAzZiJ9fX0="}]}}}}]}
#Classique
execute as @e[tag=bomb,scores={time_object=50}] run data merge entity @s {ArmorItems:[{},{},{},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1365676247,-2029432989,-1321142647,-460410509],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmQzNzUzY2QxZjRjNDkyM2ZlOWM3ZmZiNWZjZTExNGYzYWI5ODBjNzU2NDQ2NDYxZDNiNDczMzIyZGE4ZDE0YiJ9fX0="}]}}}}]}
#Rouge
execute as @e[tag=bomb,scores={time_object=60}] run data merge entity @s {ArmorItems:[{},{},{},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;138177983,952978638,-1996948002,1906533730],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzZmZjczNDYzMjUwZWY3OWFkNDA4YWI0MGJkODE1NjM4Y2E5ZTEzOWQzMGJmYzYzZTg1ODMxYzE4NTgwYzAzZiJ9fX0="}]}}}}]}
#Classique
execute as @e[tag=bomb,scores={time_object=70}] run data merge entity @s {ArmorItems:[{},{},{},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1365676247,-2029432989,-1321142647,-460410509],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmQzNzUzY2QxZjRjNDkyM2ZlOWM3ZmZiNWZjZTExNGYzYWI5ODBjNzU2NDQ2NDYxZDNiNDczMzIyZGE4ZDE0YiJ9fX0="}]}}}}]}

