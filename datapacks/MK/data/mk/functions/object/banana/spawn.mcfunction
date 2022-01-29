summon armor_stand ~ ~ ~ {Tags:["banana","1","casse"],Small:1b,Invisible:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"gold_ingot",Count:1b,tag:{CustomModelData:10}},{}],Pose:{LeftArm:[360f,0f,0f],RightArm:[270f,0f,0f]}}


scoreboard players operation @e[tag=banana,limit=1,sort=nearest] player = @s player


