scoreboard players set @a final_number 0


execute as @a at @s run playsound mk:misc.engine_start ambient @s


tag @a[tag=lunch] remove lunch
tag @a remove start_race

schedule function mk:map/before_go 50t
