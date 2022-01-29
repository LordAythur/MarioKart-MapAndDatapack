#detection des joueurs
execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick"}]}] at @s positioned ~ ~-0.5 ~ if entity @e[type=end_crystal,distance=..1] run function mk:object/random_cube/rand_anim
execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick"}]}] at @s positioned ~ ~-0.5 ~ as @e[type=end_crystal,distance=..1] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["spawn_cube_time"],Duration:50}
execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick"}]}] at @s positioned ~ ~-0.5 ~ as @e[type=end_crystal,distance=..1] run kill @s


#animation de random
execute as @a[scores={rand_anim=0..}] run function mk:object/random_cube/give_animation


#Détection du temps et give de l'item
scoreboard players add @a[scores={rand_cube_time=1..}] rand_cube_time 1

execute as @a[scores={rand_cube_time=50..}] run function mk:object/give_random_object
#execute as @a[scores={rand_cube_time=50..,nbr_player=7}] run function mk:object/give_random_object2
#execute as @a[scores={rand_cube_time=50..,nbr_player=6}] run function mk:object/give_random_object3
#execute as @a[scores={rand_cube_time=50..,nbr_player=5}] run function mk:object/give_random_object4
#execute as @a[scores={rand_cube_time=50..,nbr_player=4}] run function mk:object/give_random_object5
#execute as @a[scores={rand_cube_time=50..,nbr_player=3}] run function mk:object/give_random_object6
#execute as @a[scores={rand_cube_time=50..,nbr_player=2}] run function mk:object/give_random_object7



#Détection des aera_effect en fin de vie pour respawn les cubes
execute at @e[nbt={Age:49},tag=spawn_cube_time] run summon end_crystal ~ ~ ~ {Invulnerable:1b,ShowBottom:0b}