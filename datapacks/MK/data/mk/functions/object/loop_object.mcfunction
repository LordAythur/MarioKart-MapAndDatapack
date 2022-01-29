execute as @e[tag=casse] store result score @s UUID run data get entity @s UUID[0]



#################### RANDOM CUBE #########################
function mk:object/random_cube/loop


#################### GREEN SHELL #########################
function mk:object/green_shell/loop

#################### TRIPLE GREEN SHELL #########################
function mk:object/triple_green_shell/loop


#################### RED SHELL #########################
function mk:object/red_shell/loop

#################### TRIPLE RED SHELL #########################
function mk:object/triple_red_shell/loop



#################### BANANA #########################
function mk:object/banana/loop

#################### TRIPLE BANANA #########################
function mk:object/triple_banana/loop


#################### MUSHROOM #########################
function mk:object/mushroom/loop

#################### TRIPLE MUSHROOM #########################
function mk:object/triple_mushroom/loop



#################### BOMB #########################
function mk:object/bomb/loop

#################### BLOOP #########################
function mk:object/bloop/loop

#################### BOO #########################
function mk:object/boo/loop

#################### THUNDER #########################
function mk:object/thunder/loop

#################### BLUE SHELL #########################
function mk:object/blue_shell/loop

#################### GOLDEN MUSHROOM #########################
function mk:object/golden_mushroom/loop

#################### STAR #########################
function mk:object/star/loop



#################### BULLET BILL #########################
function mk:object/bullet_bill/loop



#Retire le tag 1 si l'objet casse est buggé
execute as @e[tag=casse,tag=1] at @s unless entity @a[distance=..6] run kill @s



#Si on a le tag follow_path on le suit (voir bill ball pour une initialisation)
execute as @e[tag=follow_path,tag=!lakitu_remonte] run function mk:object/follow_path

#Si on a le tag follow_path on le suit
execute as @e[tag=follow_path_fast,tag=!lakitu_remonte] run function mk:object/follow_path_fast





#KIll les items cassables au bout d'un temps
execute as @e[tag=casse,tag=!1] run scoreboard players add @s time_object 1

execute as @e[tag=blue_shell] run scoreboard players add @s multiplication 1

kill @e[tag=casse,scores={multiplication=1200..}]
kill @e[tag=blue_shell,scores={multiplication=1500..}]
