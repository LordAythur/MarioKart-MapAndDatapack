scoreboard players reset @s rand_anim
scoreboard players reset @s rand_cube_time



execute as @s[scores={number=1},tag=!rand_fun] run function mk:object/random_cube/random_nb_1
execute as @s[scores={number=2},tag=!rand_fun] run function mk:object/random_cube/random_nb_2

execute as @s[scores={number=3},tag=!rand_fun] run function mk:object/random_cube/random_nb_4

execute as @s[scores={number=4},tag=!rand_fun] run function mk:object/random_cube/random_nb_6




#Si 8 ème ou pas de score
execute as @s[tag=!rand_fun] unless entity @s[scores={number=..4}] run function mk:object/random_cube/random_nb_8

execute as @s[tag=rand_fun] run function mk:object/random_cube/random_fun



