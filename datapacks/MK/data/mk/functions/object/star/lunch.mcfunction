scoreboard players set @s time_star 1
stopsound @s * mk:item.star
clear @s minecraft:warped_fungus_on_a_stick{Tags:["star_item"]} 1
playsound mk:item.star ambient @s ~ ~ ~ 20 1
item replace entity @s armor.head with carved_pumpkin