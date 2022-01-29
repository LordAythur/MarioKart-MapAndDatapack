execute as @a at @s run playsound mk:misc.start_race ambient @s ~ ~ ~ 0.5
execute as @a at @s run playsound mk:misc.engine_start ambient @s

title @a times 20 100 20
title @a title ["",{"text":"\u2b24","color":"dark_red"},{"text":" \u2b24 \u2b24","color":"dark_gray"}]
schedule function mk:map/title2 1s
schedule function mk:map/title3 2s
schedule function mk:map/title4 3s

schedule function mk:map/go 70t