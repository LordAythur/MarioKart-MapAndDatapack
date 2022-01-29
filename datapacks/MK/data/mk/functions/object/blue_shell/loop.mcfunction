execute as @e[tag=blue_shell] at @s as @a[sort=furthest,distance=..10] if score @s number matches 1 facing entity @s feet run tp @e[tag=blue_shell,sort=nearest,limit=1] ~ ~ ~ ~ ~
execute as @e[tag=blue_shell] at @s at @a[sort=furthest,distance=..10] if score @p number matches 1 run tag @s add follow_player
execute as @e[tag=blue_shell,tag=follow_player] at @s run tp @s ^ ^ ^2

tag @e[tag=blue_shell] remove follow_path_fast
tag @e[tag=blue_shell,tag=!follow_player] add follow_path_fast



tag @e[tag=blue_shell] remove follow_player




execute as @e[tag=blue_shell] at @s run tp @s ~ ~ ~ ~10 ~ 


#Kill des items sur sont chemins + dégats
execute as @e[tag=blue_shell] at @s run kill @e[distance=..2,tag=casse]
execute as @e[tag=blue_shell] at @s as @a[distance=..2] unless score @s player = @e[tag=blue_shell,limit=1,sort=nearest] player if score @s stun matches 0 run scoreboard players set @s stun 40






#Si une carapace rencontre un AUTRE joueur alors on lui met stun
execute as @e[tag=blue_shell] at @s at @a[distance=..2] if score @p number matches 1 unless score @p player = @s player at @a if score @p player = @s player run playsound mk:mario.gotcha ambient @p ~ ~ ~ 5 1

execute as @e[tag=blue_shell] at @s as @a[distance=..2] if score @s number matches 1 run scoreboard players set @s stun 40

execute as @e[tag=blue_shell] at @s at @a[distance=..2] if score @p number matches 1 run data merge entity @s {Rotation:[1.0f,-90.0f,0.0f]}
execute as @e[tag=blue_shell] at @s at @a[distance=..2] if score @p number matches 1 at @s run scoreboard players set @a[distance=..4] stun 40
execute as @e[tag=blue_shell] at @s at @a[distance=..2] if score @p number matches 1 at @s run playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 4 1.2
execute as @e[tag=blue_shell] at @s at @a[distance=..2] if score @p number matches 1 at @s run particle minecraft:dust_color_transition 0.3 0.3 1 1 1 1 1 ~ ~ ~ 1 1 1 0.1 1000 force @a
execute as @e[tag=blue_shell] at @s at @a[distance=..2] if score @p number matches 1 at @s run function mk:object/blue_shell/explosion



execute as @e[tag=blue_shell] at @s run particle minecraft:dust_color_transition 0.3 0.3 1 1 1 1 1 ~ ~ ~ 0.25 0 0.25 0.1 10 force @a


#Lancement de la carapace 
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["blue_shell_item"]}}]},scores={click2=1..}] at @s run function mk:object/blue_shell/spawn
clear @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["blue_shell_item"]}}]},scores={click2=1..}] minecraft:warped_fungus_on_a_stick{Tags:["blue_shell_item"]} 1



scoreboard players add @e[tag=blue_shell] time_object 1
execute as @e[tag=blue_shell,scores={time_object=1}] at @s run playsound mk:item.blue_shell ambient @a ~ ~ ~ 3 1
scoreboard players reset @e[tag=blue_shell,scores={time_object=8}] time_object