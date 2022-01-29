scoreboard players set max RANDOM 200
function mk:rand



#execute as @s[scores={RANDOM=0..19}] run function mk:object/green_shell/give
execute as @s[scores={RANDOM=0..19}] run function mk:object/red_shell/give
#execute as @s[scores={RANDOM=60..79}] run function mk:object/banana/give
execute as @s[scores={RANDOM=20..59}] run function mk:object/mushroom/give
execute as @s[scores={RANDOM=60..114}] run function mk:object/triple_mushroom/give
execute as @s[scores={RANDOM=115..124}] run function mk:object/bomb/give
execute as @s[scores={RANDOM=125..144}] run function mk:object/blue_shell/give
#execute as @s[scores={RANDOM=120..129}] run function mk:object/thunder/give
execute as @s[scores={RANDOM=145..154}] run function mk:object/triple_green_shell/give
#execute as @s[scores={RANDOM=175..179}] run function mk:object/triple_banana/give
execute as @s[scores={RANDOM=155..169}] run function mk:object/triple_red_shell/give
execute as @s[scores={RANDOM=170..179}] run function mk:object/star/give
#execute as @s[scores={RANDOM=160..174}] run function mk:object/golden_mushroom/give
#execute as @s[scores={RANDOM=175..184}] run function mk:object/bullet_bill/give
execute as @s[scores={RANDOM=180..189}] run function mk:object/bloop/give
execute as @s[scores={RANDOM=190..}] run function mk:object/boo/give

