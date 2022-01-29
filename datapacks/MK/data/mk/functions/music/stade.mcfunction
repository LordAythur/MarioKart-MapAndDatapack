execute as @a unless entity @s[scores={final_lap=1..}] at @s run playsound mk:music.stade ambient @s[tag=ingame,tag=!finish] ~ ~ ~ 0.3 1

schedule function mk:music/stade 1385t