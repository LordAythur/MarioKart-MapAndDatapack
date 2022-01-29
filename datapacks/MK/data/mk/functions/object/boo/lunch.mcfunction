effect give @e[tag=voiture,sort=nearest,limit=1] invisibility 5 1 true
effect give @s invisibility 5 1 true
scoreboard players add @s boo 1

execute as @a if score @s number < @p number if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["use"]}}]}] run tag @s add pick
execute unless entity @a[tag=pick] run function mk:object/mushroom/give


execute as @a[tag=pick,sort=random,limit=1] run tag @s add pick2

execute as @p[tag=pick2] run item replace entity @p weapon.offhand from entity @s weapon.offhand
execute as @p[tag=pick2] at @s run particle elder_guardian ~ ~ ~ 0 0 0 1 1 force @s
execute as @p[tag=pick2] at @s run playsound mk:item.boo ambient @s
clear @p[tag=pick2] warped_fungus_on_a_stick

tag @a[tag=pick] remove pick
tag @a[tag=pick2] remove pick2

scoreboard players reset @s click2