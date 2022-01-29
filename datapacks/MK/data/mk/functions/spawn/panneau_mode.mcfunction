execute positioned 0 102 0 as @a[distance=0.3..10,scores={menu=0..4}] run tp @s 0 102 0

execute as @s[scores={choix_mode=1}] at @s run data merge block 2 103 0 {Text2:'{"text":"Mode de jeu","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @a choix_map 5"}}',Text3:'{"text":"Course seule","color":"yellow","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @a choix_mode 0"}}',Text4:'{"text":"←","color":"gray","clickEvent":{"action":"run_command","value":"/kill @e[type=painting,distance=..10]"}}'}
execute as @s[scores={choix_mode=0}] at @s run data merge block 2 103 0 {Text2:'{"text":"Mode de jeu","color":"gray","bold":true}',Text3:'{"text":"Grand Prix","color":"yellow","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @a choix_mode 1"}}',Text4:'{"text":"→","color":"gray"}'}

data merge block 2 101 1 {Text2:'{"text":"Valider →","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @a menu 1"}}',Text3:'{"text":" ","clickEvent":{"action":"run_command","value":"/execute as @a at @a run scoreboard players add @s nbr_player 1"}}',Text4:'{"text":" ","clickEvent":{"action":"run_command","value":"/scoreboard players set @a choix_voiture 3"}}'}

execute if score @r nbr_player = @s nbr_player_kart run data merge block -1 101 2 {Text2:'{"text":"Valider →","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @a menu 2"}}'}
execute if score @r nbr_player = @s nbr_player_kart run gamemode adventure @a[scores={meneur=1}]
execute unless score @r nbr_player = @s nbr_player_kart run data merge block -1 101 2 {Text2:'{"text":"","color":"white","bold":true,"clickEvent":{"action":"run_command","value":""}}'}

data merge block -2 101 -1 {Text2:'{"text":"Valider →","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @a menu 3"}}'}

data merge block 1 101 2 {Text2:'{"text":"← Retour","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @a menu 0"}}'}
data merge block -2 101 1 {Text2:'{"text":"← Retour","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @a menu 1"}}',Text3:'{"text":" ","clickEvent":{"action":"run_command","value":"/scoreboard players set @a choix_voiture 3"}}'}
data merge block -1 101 -2 {Text2:'{"text":"← Retour","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @a menu 2"}}'}

#data merge block 0 104 2 {Text2:'{"text":"Kart lourd","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @r[scores={choix_voiture=3},gamemode=spectator] at @s run gamemode adventure"}}',Text3:'{"text":"+ Vit. - Accél.","color":"yellow","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @p[gamemode=adventure] choix_voiture 2]"}}'}
data merge block 0 104 2 {Text1:'{"text":" ","clickEvent":{"action":"run_command","value":"/scoreboard players add @a nbr_player_kart 1"}}',Text2:'{"text":"Kart lourd","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @a[gamemode=adventure] choix_voiture 2"}}',Text3:'{"text":" + Vit. - Accél.","color":"yellow","italic":true,"clickEvent":{"action":"run_command","value":"/execute as @r[scores={choix_voiture=3},gamemode=spectator] at @s run gamemode adventure"}}',Text4:'{"text":" ","clickEvent":{"action":"run_command","value":"/gamemode spectator @a[scores={choix_voiture=..2}]"}}'}
data merge block 0 103 2 {Text1:'{"text":" ","clickEvent":{"action":"run_command","value":"/scoreboard players add @a nbr_player_kart 1"}}',Text2:'{"text":"Kart standard","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @a[gamemode=adventure] choix_voiture 1"}}',Text3:'{"text":" Vit. = Accél.","color":"yellow","italic":true,"clickEvent":{"action":"run_command","value":"/execute as @r[scores={choix_voiture=3},gamemode=spectator] at @s run gamemode adventure"}}',Text4:'{"text":" ","clickEvent":{"action":"run_command","value":"/gamemode spectator @a[scores={choix_voiture=..2}]"}}'}
data merge block 0 102 2 {Text1:'{"text":" ","clickEvent":{"action":"run_command","value":"/scoreboard players add @a nbr_player_kart 1"}}',Text2:'{"text":"Kart léger","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @a[gamemode=adventure] choix_voiture 0"}}',Text3:'{"text":" - Vit. + Accél.","color":"yellow","italic":true,"clickEvent":{"action":"run_command","value":"/execute as @r[scores={choix_voiture=3},gamemode=spectator] at @s run gamemode adventure"}}',Text4:'{"text":" ","clickEvent":{"action":"run_command","value":"/gamemode spectator @a[scores={choix_voiture=..2}]"}}'}



execute as @s[scores={choix_objet=1}] at @s run data merge block -2 103 0 {Text2:'{"text":"Mode d\'objet","color":"gray","bold":true}',Text3:'{"text":"Explosif","color":"yellow","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @a choix_objet 0"}}',Text4:'{"text":"←","color":"gray"}'}
execute as @s[scores={choix_objet=0}] at @s run data merge block -2 103 0 {Text2:'{"text":"Mode d\'objet","color":"gray","bold":true}',Text3:'{"text":"Normal","color":"yellow","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @a choix_objet 1"}}',Text4:'{"text":"→","color":"gray"}'}

execute as @s[scores={choix_mode=0}] at @s run data merge block 0 102 -2 {Text2:'{"text":"Lancer la partie","color":"gray","bold":true}',Text3:'{"text":"partie","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function mk:spawn/lancement_partie"}}',Text4:'{"text":" ","color":"gray"}'}
execute as @s[scores={choix_mode=1}] at @s run data merge block -2 103 -2 {Text2:'{"text":"Prairie","color":"green","bold":true}',Text3:'{"text":"Meuh Meuh","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @a choix_map 0"}}',Text4:'{"text":" ","color":"gray","clickEvent":{"action":"run_command","value":"/summon painting 0 103 -2 {Motive:\\"minecraft:kebab\\"}"}}'}
execute as @s[scores={choix_mode=1}] at @s run data merge block -1 103 -2 {Text2:'{"text":"Circuit","color":"red","bold":true}',Text3:'{"text":"Champignon","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @a choix_map 1"}}',Text4:'{"text":" ","color":"gray","clickEvent":{"action":"run_command","value":"/summon painting 0 103 -2 {Motive:\\"minecraft:aztec2\\"}"}}'}
execute as @s[scores={choix_mode=1}] at @s run data merge block 1 103 -2 {Text2:'{"text":"Stade","color":"light_purple","bold":true}',Text3:'{"text":"Waluigi","color":"light_purple","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @a choix_map 2"}}',Text4:'{"text":" ","color":"gray","clickEvent":{"action":"run_command","value":"/summon painting 0 103 -2 {Motive:\\"minecraft:aztec\\"}"}}'}
execute as @s[scores={choix_mode=1}] at @s run data merge block 2 103 -2 {Text2:'{"text":"Route","color":"aqua","bold":true}',Text3:'{"text":"Arc-En-Ciel","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @a choix_map 3"}}',Text4:'{"text":" ","color":"gray","clickEvent":{"action":"run_command","value":"/summon painting 0 103 -2 {Motive:\\"minecraft:alban\\"}"}}'}
execute as @s[scores={choix_mode=1}] at @s run data merge block 0 102 -2 {Text2:'{"text":"Lancer la partie","color":"gray","bold":true}',Text3:'{"text":"partie","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function mk:spawn/lancement_partie"}}',Text4:'{"text":" ","color":"gray"}'}
execute as @s[scores={choix_mode=1, choix_map=5}] at @s run data merge block 0 102 -2 {Text2:'{"text":" ","color":"gray","bold":true}',Text3:'{"text":" ","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":" "}}',Text4:'{"text":" ","color":"gray"}'}

execute as @s[scores={choix_mode=0}] at @s run data merge block -2 103 -2 {Text2:'{"text":"","color":"green","bold":true}',Text3:'{"text":"","color":"green","bold":true,"clickEvent":{"action":"run_command","value":""}}',Text4:'{"text":" ","color":"gray"}'}
execute as @s[scores={choix_mode=0}] at @s run data merge block -1 103 -2 {Text2:'{"text":"","color":"red","bold":true}',Text3:'{"text":"","color":"red","bold":true,"clickEvent":{"action":"run_command","value":""}}',Text4:'{"text":" ","color":"gray"}'}
execute as @s[scores={choix_mode=0}] at @s run data merge block 1 103 -2 {Text2:'{"text":"","color":"purple","bold":true}',Text3:'{"text":"","color":"purple","bold":true,"clickEvent":{"action":"run_command","value":""}}',Text4:'{"text":" ","color":"gray"}'}
execute as @s[scores={choix_mode=0}] at @s run data merge block 2 103 -2 {Text2:'{"text":"","color":"aqua","bold":true}',Text3:'{"text":"","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":""}}',Text4:'{"text":" ","color":"gray"}'}

execute as @a[scores={menu=1}] if entity @s[y_rotation=45..180] at @s run tp @s ~ ~ ~ ~-20 ~
execute as @a[scores={menu=1}] if entity @s[y_rotation=-180..-45] at @s run tp @s ~ ~ ~ ~20 ~

execute as @a[scores={menu=2}] if entity @s[y_rotation=-90..45] at @s run tp @s ~ ~ ~ ~20 ~
execute as @a[scores={menu=2}] if entity @s[y_rotation=135..270] at @s run tp @s ~ ~ ~ ~-20 ~

execute as @a[scores={menu=3}] if entity @s[y_rotation=0..130] at @s run tp @s ~ ~ ~ ~20 ~
execute as @a[scores={menu=3}] if entity @s[y_rotation=-130..0] at @s run tp @s ~ ~ ~ ~-20 ~

execute as @a[scores={menu=0}] if entity @s[y_rotation=-270..-135] at @s run tp @s ~ ~ ~ ~20 ~
execute as @a[scores={menu=0}] if entity @s[y_rotation=-35..90] at @s run tp @s ~ ~ ~ ~-20 ~




data merge block 2 104 13 {Text1:'{"text":" ","clickEvent":{"action":"run_command","value":""}}',Text2:'{"text":"Cliquez quand","bold":true,"clickEvent":{"action":"run_command","value":""}}',Text3:'{"text":"tout le monde","bold":true,"clickEvent":{"action":"run_command","value":"/function mk:spawn/start_menu"}}',Text4:'{"text":"est prêt","bold":true,"clickEvent":{"action":"run_command","value":""}}'}