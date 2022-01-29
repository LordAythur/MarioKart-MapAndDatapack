tag @a remove ingame
tag @a remove finish
tag @a remove wait_finish


tag @e[tag=follow_path,tag=!bullet_bill] remove follow_path
tag @e[tag=follow_path_fast] remove follow_path_fast
tag @e[tag=lakitu_remove] remove lakitu_remove

execute as @a run function mk:kart/add_score


execute as @a[scores={choix_mode=1}] at @s run tellraw @s ["",{"text":"arthur","obfuscated":true,"color":"dark_green"},{"text":" Course terminée. ","color":"yellow"},{"text":"adrien","obfuscated":true,"color":"dark_green"}]

execute as @a[tag=!map4,scores={choix_mode=0}] at @s run tellraw @s ["",{"text":"arthur","obfuscated":true,"color":"dark_green"},{"text":" Course terminée. ","color":"yellow"},{"text":"adrien","obfuscated":true,"color":"dark_green"},{"text":"\n"},{"text":"Les résultats sont disponible dans la ","color":"yellow"},{"text":"liste des joueurs","color":"gold"},{"text":".\nProchaine course en préparation","color":"yellow"}]
execute as @a[tag=map4,scores={choix_mode=0}] at @s run tellraw @s ["",{"text":"arthur","obfuscated":true,"color":"dark_green"},{"text":" Course terminée. ","color":"yellow"},{"text":"adrien","obfuscated":true,"color":"dark_green"},{"text":"\n"},{"text":"Les résultats sont disponible dans la ","color":"yellow"},{"text":"liste des joueurs","color":"gold"},{"text":".\nCalculs des résultats finaux en cours...","color":"yellow"}]

schedule function mk:map/next_finish 10s