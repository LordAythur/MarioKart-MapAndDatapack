################   Crédits   ################

#Ce code a été développé par Adrien 'COOL_BEAR' SYROTNIK  et Arthur 'LordAythur' JORIS

#Si tu as des questions vis à vis du fonctionnement du code
#n'hésite pas à nous contacter sur Twitter @MinelinkPrenium ou @JrsAythur

################ AidiA © 2021 ################


scoreboard objectives add dead deathCount

scoreboard objectives add motion_x1 dummy
scoreboard objectives add motion_x2 dummy
scoreboard objectives add motion_y1 dummy
scoreboard objectives add motion_y2 dummy
scoreboard objectives add motion_z1 dummy
scoreboard objectives add motion_z2 dummy
scoreboard objectives add RANDOM dummy

scoreboard objectives add speed dummy
scoreboard objectives add save_speed dummy

scoreboard objectives add player dummy
scoreboard objectives add playermotionX dummy
scoreboard objectives add playermotionZ dummy

scoreboard objectives add max_speed dummy
scoreboard objectives add acceleration dummy
scoreboard objectives add weight dummy
scoreboard objectives add save_weight dummy

scoreboard objectives add confused dummy
scoreboard objectives add stun dummy
scoreboard objectives add slow dummy

scoreboard objectives add boo dummy

scoreboard objectives add multiplication dummy
scoreboard objectives add -1 dummy
scoreboard objectives add UUID dummy


scoreboard objectives add timeHighSpeed dummy

scoreboard objectives add lakituwarning dummy


scoreboard objectives add spawn_point dummy
scoreboard objectives add circuit dummy
scoreboard objectives add total_circuit dummy
scoreboard objectives add checkpoint dummy
scoreboard objectives add lap dummy
scoreboard objectives add number dummy
scoreboard objectives add number_save dummy
scoreboard objectives add final_number dummy

scoreboard objectives add final_point dummy

scoreboard objectives add toad dummy



scoreboard objectives add click1 minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add click2 minecraft.used:minecraft.warped_fungus_on_a_stick


#objets
scoreboard objectives add bounce dummy
scoreboard objectives add rand_anim dummy
scoreboard objectives add rand_cube_time dummy

scoreboard objectives add time_thwomp dummy

scoreboard objectives add time_object dummy
scoreboard objectives add time_gold dummy
scoreboard objectives add time_star dummy

scoreboard objectives add meneur trigger
scoreboard objectives add choix_map trigger
scoreboard objectives add choix_mode trigger
scoreboard objectives add choix_voiture trigger
scoreboard objectives add choix_objet trigger
scoreboard objectives add menu trigger

scoreboard objectives add nbr_player trigger
scoreboard objectives add nbr_player_kart trigger

scoreboard objectives add leave minecraft.custom:minecraft.leave_game
scoreboard objectives add first_co minecraft.custom:minecraft.play_time

scoreboard objectives add chargement trigger

scoreboard objectives add music trigger


scoreboard objectives add Position dummy

scoreboard objectives add final_lap dummy


#initialisation des scores par défaut pour les tests
scoreboard players reset @a
scoreboard players reset @e[tag=voiture]

scoreboard players set @e[type=pig] speed 1


scoreboard players set @a max_speed 1500
scoreboard players set @a acceleration 30
scoreboard players set @a weight 30
scoreboard players set @a save_weight 30
scoreboard players set @a -1 1
scoreboard players set @a checkpoint 1
scoreboard players set @a circuit 0
scoreboard players set @a lap 0
scoreboard players set @a final_point 0
scoreboard players set @a choix_mode 0
scoreboard players set @a choix_objet 0
scoreboard players set @a choix_map 0


execute as @a run function mk:score_player

schedule clear mk:map/stade/fireball1_position1
schedule clear mk:map/stade/fireball1_position2
schedule clear mk:map/stade/fireball1_position3
schedule clear mk:map/stade/fireball2_position1
schedule clear mk:map/stade/fireball2_position2
schedule clear mk:map/stade/fireball2_position3
schedule clear mk:map/stade/fireball2_position4

function mk:map/stade/fireball1_position1
function mk:map/stade/fireball2_position1


schedule clear mk:map/feu_artifice

schedule clear mk:map/prairie/moulin1_1
schedule clear mk:map/prairie/moulin1_2
schedule clear mk:map/prairie/moulin1_3
schedule clear mk:map/prairie/moulin1_4

schedule clear mk:map/prairie/moulin2_1
schedule clear mk:map/prairie/moulin2_2
schedule clear mk:map/prairie/moulin2_3
schedule clear mk:map/prairie/moulin2_4

function mk:map/prairie/moulin1_1
function mk:map/prairie/moulin2_3

team add 1er
team add 2eme
team add 3eme
team add 4eme
team add 5eme
team add 6eme
team add 7eme
team add 8eme

team modify 2eme prefix {"text":"2eme - "}
team modify 3eme prefix {"text":"3eme - "}
team modify 4eme prefix {"text":"4eme - "}
team modify 5eme prefix {"text":"5eme - "}
team modify 6eme prefix {"text":"6eme - "}
team modify 7eme prefix {"text":"7eme - "}
team modify 8eme prefix {"text":"8eme - "}

team modify 1er color gold
team modify 2eme color gray
team modify 3eme color dark_gray
team modify 4eme color yellow
team modify 5eme color yellow
team modify 6eme color yellow
team modify 7eme color yellow
team modify 8eme color yellow

team modify 1er suffix [""]
team modify 2eme suffix [""]
team modify 3eme suffix [""]
team modify 4eme suffix [""]
team modify 5eme suffix [""]
team modify 6eme suffix [""]
team modify 7eme suffix [""]
team modify 8eme suffix [""]

scoreboard players set @a stun 0
scoreboard players set @a confused 0

effect clear @a invisibility

schedule clear mk:music/menu
schedule clear mk:music/mushroom
schedule clear mk:music/stade
schedule clear mk:music/prairie
schedule clear mk:music/rainbow
schedule clear mk:music/title
schedule clear mk:music/mushroom2
schedule clear mk:music/stade2
schedule clear mk:music/prairie2
schedule clear mk:music/rainbow2

stopsound @a

kill @e[type=cow]
summon cow 3982 101 4073 {Invulnerable:1b}
summon cow 3990 101 4078 {Invulnerable:1b}
summon cow 3992 101 4073 {Invulnerable:1b}
summon cow 3995 101 4075 {Invulnerable:1b}
summon cow 4005 101 4074 {Invulnerable:1b}
summon cow 3991 101 4066 {Invulnerable:1b}
summon cow 3985 101 4061 {Invulnerable:1b}
summon cow 3989 101 4056 {Invulnerable:1b}
summon cow 3980 101 4055 {Invulnerable:1b}
summon cow 3996 101 4060 {Invulnerable:1b}

execute positioned 0 105 0 run kill @e[type=painting,distance=..10]


tag @a remove map1
tag @a remove map2
tag @a remove map3
tag @a remove map4
tag @a remove finish
tag @a remove ingame
clear @a


setworldspawn -9 113 -22
gamerule commandBlockOutput false
gamerule doDaylightCycle false
gamerule doFireTick false
gamerule doEntityDrops false
gamerule doImmediateRespawn true
gamerule doMobSpawning false
gamerule doTileDrops false
gamerule doWeatherCycle false
gamerule fallDamage false
gamerule keepInventory true
gamerule mobGriefing false
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks false
defaultgamemode adventure


