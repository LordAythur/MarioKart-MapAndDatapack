scoreboard players set max RANDOM 40
function mk:rand

scoreboard players operation @s rand_anim = @s RANDOM

scoreboard players add @s rand_cube_time 1
playsound mk:misc.item_box ambient @s 