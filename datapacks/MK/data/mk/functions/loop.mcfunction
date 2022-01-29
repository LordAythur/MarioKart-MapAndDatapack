################   Crédits   ################

#Ce code a été développé par Adrien 'COOL_BEAR' SYROTNIK  et Arthur 'LordAythur' JORIS

#Si tu as des questions vis à vis du fonctionnement du code
#n'hésite pas à nous contacter sur Twitter @MinelinkPrenium ou @JrsAythur

################ AidiA © 2021 ################


#Kart
function mk:kart/loop

#Spawn
function mk:spawn/spawn
function mk:spawn/leave

#Map maker
function mk:map/setup/items_point

#Race
function mk:map/loop


#Objects
function mk:object/loop_object

#chargement
function mk:spawn/barre


#Reset des scores à reset
scoreboard players reset @a click1
scoreboard players reset @a click2

execute as @e[name="Thwomp",type=armor_stand] at @s run function mk:map/rainbow/thwomp

#execute as @a at @s run scoreboard players operation @s Position = @s number
#scoreboard players set @a Position 1
#execute as @a at @a unless score @p player = @s player if score @p number >= @s number run scoreboard players add @s Position 1


scoreboard players set @a[scores={number=8},tag=ingame] Position 1
scoreboard players set @a[scores={number=7},tag=ingame] Position 2
scoreboard players set @a[scores={number=6},tag=ingame] Position 3
scoreboard players set @a[scores={number=5},tag=ingame] Position 4
scoreboard players set @a[scores={number=4},tag=ingame] Position 5
scoreboard players set @a[scores={number=3},tag=ingame] Position 6
scoreboard players set @a[scores={number=2},tag=ingame] Position 7
scoreboard players set @a[scores={number=1},tag=ingame] Position 8




team join 8eme @a[scores={number=8},tag=ingame]
team join 7eme @a[scores={number=7},tag=ingame]
team join 6eme @a[scores={number=6},tag=ingame]
team join 5eme @a[scores={number=5},tag=ingame]
team join 4eme @a[scores={number=4},tag=ingame]
team join 3eme @a[scores={number=3},tag=ingame]
team join 2eme @a[scores={number=2},tag=ingame]
team join 1er @a[scores={number=1},tag=ingame]

execute as @e[type=pig] at @s run particle minecraft:mycelium ~ ~ ~ 0.1 0 0.1 0.00001 100

scoreboard players set @e[name="toad",scores={toad=160..}] toad 0
execute as @e[name="toad",scores={toad=0}] at @s run playsound mk:misc.toad1 ambient @a ~ ~ ~ 2 1
execute as @e[name="toad",scores={toad=80}] at @s run playsound mk:misc.toad2 ambient @a ~ ~ ~ 2 1
scoreboard players add @e[name="toad"] toad 1


#Obstacle (chomp / vache)
execute as @e[name="Chomp"] at @s run scoreboard players set @a[distance=..2,scores={stun=..0}] stun 40

execute as @e[type=cow] at @s run scoreboard players set @a[distance=..1,scores={stun=..0}] stun 40
execute as @e[type=cow] at @s run playsound mk:misc.cow ambient @a[distance=..1,scores={stun=40}] ~ ~ ~ 1 1
execute as @a[scores={stun=30..40}] at @s run execute as @e[type=cow,distance=..3,limit=1,sort=nearest] at @s run tp @s ~ ~0.4 ~
effect give @e[type=cow] resistance 10000 100 true

#Aera effect invinsible
execute as @e[type=minecraft:area_effect_cloud,tag=circuit] run data merge entity @s {Age:1}

effect give @a minecraft:saturation 10000 10 true
effect give @a minecraft:instant_health 10000 200 true

effect give @a[tag=ingame,predicate=!mk:ride_pig] minecraft:slowness 1 200 true

#summon minecraft:painting -1 105 13 {Motive:"minecraft:fighters"}
#summon minecraft:painting 2 105 13 {Motive:"minecraft:bust"}
#summon minecraft:painting 4 105 13 {Motive:"minecraft:match"}
#summon minecraft:painting 6 105 13 {Motive:"minecraft:graham"}

kill @e[type=item]

