execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["ClassicPoint"]}}},scores={click2=1..}] at @s run function mk:map/setup/items/classic_point
#clear @s[scores={competence1=1}] minecraft:warped_fungus_on_a_stick{Tags:["Tornade"]} 1

execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["Checkpoint"]}}},scores={click2=1..}] at @s align xz positioned ~0.5 ~ ~0.5 run function mk:map/setup/items/checkpoint



execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["TestCircuit"]}}},scores={click2=1..}] at @s run function mk:map/setup/lunch_circuit

execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["EndLine"]}}},scores={click2=1..}] at @s align xz positioned ~0.5 ~ ~0.5 run function mk:map/setup/items/end_point

execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["RandomCube"]}}},scores={click2=1..}] at @s align xz positioned ~0.5 ~ ~0.5 run function mk:map/setup/items/cube_point



#SPAWN POINT
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["SpawnPoint1"]}}},scores={click2=1..}] at @s align xz positioned ~0.5 ~ ~0.5 run function mk:map/setup/items/spawn_point
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["SpawnPoint1"]}}},scores={click2=1..}] at @s run clear @s minecraft:warped_fungus_on_a_stick{Tags:["SpawnPoint1"]} 1

execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["SpawnPoint2"]}}},scores={click2=1..}] at @s align xz positioned ~0.5 ~ ~0.5 run function mk:map/setup/items/spawn_point
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["SpawnPoint2"]}}},scores={click2=1..}] at @s run item replace entity @s container.0 with warped_fungus_on_a_stick{display:{Name:'{"text":"Spawn (1)","color":"white"}'},Tags:["SpawnPoint1"]} 1

execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["SpawnPoint3"]}}},scores={click2=1..}] at @s align xz positioned ~0.5 ~ ~0.5 run function mk:map/setup/items/spawn_point
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["SpawnPoint3"]}}},scores={click2=1..}] at @s run item replace entity @s container.0 with warped_fungus_on_a_stick{display:{Name:'{"text":"Spawn (2)","color":"white"}'},Tags:["SpawnPoint2"]} 1

execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["SpawnPoint4"]}}},scores={click2=1..}] at @s align xz positioned ~0.5 ~ ~0.5 run function mk:map/setup/items/spawn_point
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["SpawnPoint4"]}}},scores={click2=1..}] at @s run item replace entity @s container.0 with warped_fungus_on_a_stick{display:{Name:'{"text":"Spawn (3)","color":"white"}'},Tags:["SpawnPoint3"]} 1

execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["SpawnPoint5"]}}},scores={click2=1..}] at @s align xz positioned ~0.5 ~ ~0.5 run function mk:map/setup/items/spawn_point
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["SpawnPoint5"]}}},scores={click2=1..}] at @s run item replace entity @s container.0 with warped_fungus_on_a_stick{display:{Name:'{"text":"Spawn (4)","color":"white"}'},Tags:["SpawnPoint4"]} 1

execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["SpawnPoint6"]}}},scores={click2=1..}] at @s align xz positioned ~0.5 ~ ~0.5 run function mk:map/setup/items/spawn_point
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["SpawnPoint6"]}}},scores={click2=1..}] at @s run item replace entity @s container.0 with warped_fungus_on_a_stick{display:{Name:'{"text":"Spawn (5)","color":"white"}'},Tags:["SpawnPoint5"]} 1

execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["SpawnPoint7"]}}},scores={click2=1..}] at @s align xz positioned ~0.5 ~ ~0.5 run function mk:map/setup/items/spawn_point
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["SpawnPoint7"]}}},scores={click2=1..}] at @s run item replace entity @s container.0 with warped_fungus_on_a_stick{display:{Name:'{"text":"Spawn (6)","color":"white"}'},Tags:["SpawnPoint6"]} 1

execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["SpawnPoint8"]}}},scores={click2=1..}] at @s align xz positioned ~0.5 ~ ~0.5 run function mk:map/setup/items/spawn_point
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Tags:["SpawnPoint8"]}}},scores={click2=1..}] at @s run item replace entity @s container.0 with warped_fungus_on_a_stick{display:{Name:'{"text":"Spawn (7)","color":"white"}'},Tags:["SpawnPoint7"]} 1








