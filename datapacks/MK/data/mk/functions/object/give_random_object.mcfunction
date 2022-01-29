scoreboard players reset @s rand_anim
scoreboard players reset @s rand_cube_time



execute as @s[scores={number=1},tag=!rand_fun] run function mk:object/random_cube/random_nb_1
execute as @s[scores={number=2},tag=!rand_fun] run function mk:object/random_cube/random_nb_2
execute as @s[scores={number=3},tag=!rand_fun] run function mk:object/random_cube/random_nb_3
execute as @s[scores={number=4},tag=!rand_fun] run function mk:object/random_cube/random_nb_4
execute as @s[scores={number=5},tag=!rand_fun] run function mk:object/random_cube/random_nb_5
execute as @s[scores={number=6},tag=!rand_fun] run function mk:object/random_cube/random_nb_6
execute as @s[scores={number=7},tag=!rand_fun] run function mk:object/random_cube/random_nb_7



#Si 8 ème ou pas de score
execute as @s[tag=!rand_fun] unless entity @s[scores={number=..7}] run function mk:object/random_cube/random_nb_8

execute as @s[tag=rand_fun] run function mk:object/random_cube/random_fun



