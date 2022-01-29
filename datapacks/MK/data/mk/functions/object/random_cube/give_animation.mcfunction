execute as @s[scores={rand_anim=0}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:1,Tags:["no_use"]} 1
execute as @s[scores={rand_anim=4}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:2,Tags:["no_use"]} 1
execute as @s[scores={rand_anim=8}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:3,Tags:["no_use"]} 1
execute as @s[scores={rand_anim=12}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:4,Tags:["no_use"]} 1
execute as @s[scores={rand_anim=16}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:5,Tags:["no_use"]} 1
execute as @s[scores={rand_anim=20}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:6,Tags:["no_use"]} 1
execute as @s[scores={rand_anim=24}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:7,Tags:["no_use"]} 1
execute as @s[scores={rand_anim=28}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:8,Tags:["no_use"]} 1
execute as @s[scores={rand_anim=32}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:9,Tags:["no_use"]} 1
execute as @s[scores={rand_anim=36}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:10,Tags:["no_use"]} 1
execute as @s[scores={rand_anim=40}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:11,Tags:["no_use"]} 1


scoreboard players add @s rand_anim 1

scoreboard players set @s[scores={rand_anim=44..}] rand_anim 0