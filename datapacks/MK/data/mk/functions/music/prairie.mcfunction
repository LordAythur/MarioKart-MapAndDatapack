execute as @a unless entity @s[scores={final_lap=1..}] at @s run playsound mk:music.prairie ambient @s[tag=ingame,tag=!finish] ~ ~ ~ 0.3 1

schedule function mk:music/prairie 1200t