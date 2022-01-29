#Tp en continue sur les spawn
execute at @p as @e[tag=spawn_point,distance=..200] at @e[tag=tp] if score @s spawn_point = @e[tag=tp,sort=nearest,limit=1] number run tp @e[tag=tp,sort=nearest,limit=1] @s
execute if entity @e[tag=voiture,tag=tp] at @p at @e[tag=spawn_point,distance=..200] as @a[predicate=!mk:ride_pig] if score @s final_number = @e[tag=spawn_point,limit=1,sort=nearest] spawn_point rotated ~ 0 positioned ^ ^ ^-2 facing ^ ^-1 ^2 run tp @s ~ ~ ~ ~ ~


#LUNCH CIRCUIT SI YA le tag TP

execute at @p[tag=start_race] at @e[sort=random,tag=tp,limit=1,distance=..50] run tag @a[distance=..50] add lunch
execute at @p[tag=start_race] at @e[sort=random,tag=tp,limit=1,distance=..50] as @a[distance=..50] unless entity @s[predicate=mk:ride_pig] run tag @a remove lunch
execute as @r[tag=lunch] run function mk:map/start





execute as @r at @s run function mk:spawn/panneau_mode