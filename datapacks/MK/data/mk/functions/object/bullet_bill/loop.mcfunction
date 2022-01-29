#TP grâce à follow_path


#Lancement de la bill ball
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["bullet_bill_item","use"]}}]},scores={click2=1..}] at @s run function mk:object/bullet_bill/lunch


scoreboard players add @e[tag=bullet_bill] time_object 1
execute as @e[tag=bullet_bill] run scoreboard players set @s -1 5
execute as @e[tag=bullet_bill] run scoreboard players operation @s multiplication = @s time_object
execute as @e[tag=bullet_bill] run scoreboard players operation @s multiplication %= @s -1


execute as @e[tag=bullet_bill,scores={multiplication=0}] at @s as @a unless score @s player = @e[tag=bullet_bill,limit=1,sort=nearest] player run playsound mk:item.bip ambient @s ~ ~ ~ 2 1


#Dégats et déstructions des items
execute as @e[tag=bullet_bill,scores={time_object=..200}] at @s run kill @e[tag=casse,distance=..2]
execute as @e[tag=bullet_bill,scores={time_object=..200}] at @s at @a[distance=..2] unless score @p player = @s player if score @p stun matches 0 run scoreboard players set @p stun 40

execute as @e[tag=bullet_bill,scores={time_object=..200}] at @s at @a[distance=..2] unless score @p player = @s player if score @p stun matches 0 at @a if score @p player = @s player run playsound mk:mario.gotcha ambient @p ~ ~ ~ 5 1






execute as @e[tag=bullet_bill,scores={time_object=200..}] at @a if score @p player = @s player run clear @p minecraft:warped_fungus_on_a_stick{Tags:["bullet_bill_item"]} 1
execute as @e[tag=bullet_bill,scores={time_object=200..}] at @a if score @p player = @s player run stopsound @p * mk:item.bullet_bill
execute as @e[tag=bullet_bill,scores={time_object=200..}] at @a if score @p player = @s player run playsound mk:item.bullet_bill_end ambient @a
kill @e[tag=bullet_bill,scores={time_object=200..}]


execute as @e[tag=bullet_bill] at @a if score @p player = @s player run tp @e[tag=voiture,sort=nearest,limit=1,distance=..1] @s
execute as @e[tag=bullet_bill] at @a if score @p player = @s player run scoreboard players operation @e[tag=voiture,sort=nearest,limit=1,distance=..1] speed = @p max_speed