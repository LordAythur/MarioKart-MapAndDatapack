#Lancement star
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["star_item"]}}]},scores={click2=1..}] at @s run function mk:object/star/lunch


#Bip
scoreboard players add @e[scores={time_star=..161}] time_star 1
execute as @a[scores={time_star=..161}] run scoreboard players set @s -1 5
execute as @a[scores={time_star=..161}] run scoreboard players operation @s multiplication = @s time_star
execute as @a[scores={time_star=..161}] run scoreboard players operation @s multiplication %= @s -1


execute as @a[scores={multiplication=0,time_star=..161}] at @s as @a unless score @s player = @e[scores={time_star=..161},limit=1,sort=nearest] player run playsound mk:item.bip ambient @s ~ ~ ~ 2 1


#particle
execute as @a[scores={time_star=..161}] at @s run particle minecraft:entity_effect ~ ~0.5 ~ 0.5 0.5 0.5 1 20 force @a


#Dégats et déstructions des items
execute as @a[scores={time_star=..161}] at @s run kill @e[tag=casse,distance=..2]
execute as @a[scores={time_star=..161}] at @s at @a[distance=..2] unless score @p player = @s player if score @p stun matches 0 run scoreboard players set @p stun 40
execute as @a[scores={time_star=..161}] at @s at @a[distance=..2] unless score @p player = @s player if score @p stun matches 0 at @s run playsound mk:mario.gotcha ambient @s ~ ~ ~ 3 1



execute as @a unless entity @s[scores={time_star=..161}] run clear @s carved_pumpkin 
stopsound @a[scores={time_star=161..}] * mk:item.star
execute as @a[scores={time_star=161..}] at @s run scoreboard players operation @e[tag=voiture,sort=nearest,limit=1,distance=..1] speed = @s max_speed
scoreboard players reset @a[scores={time_star=161..}] time_star



