execute if entity @s[tag=voiture] run scoreboard players set @p confused 30
execute at @e[tag=remonte,distance=..1] if score @s UUID = @e[tag=remonte,limit=1,sort=nearest] UUID run kill @e[tag=remonte,limit=1,sort=nearest]
tag @s remove lakitu_remonte
tp @s ~ ~2 ~

