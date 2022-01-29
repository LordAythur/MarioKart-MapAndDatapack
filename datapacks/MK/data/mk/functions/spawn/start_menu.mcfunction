schedule clear mk:music/menu
stopsound @a
execute as @a at @s run scoreboard players set @s meneur 0
execute as @r at @s run scoreboard players set @s meneur 1
execute as @a at @s run scoreboard players set @s choix_map 5
effect give @a invisibility 100000 1 true
gamemode spectator @a
gamemode adventure @a[scores={meneur=1}]
tellraw @a[scores={meneur=1}] ["",{"text":"Vous êtes le ","color":"yellow"},{"text":"meneur","color":"gold"},{"text":", c'est à vous de configurer la partie.","color":"yellow"}]
scoreboard players set @a menu 0
function mk:music/menu
tp @a 0 102 0