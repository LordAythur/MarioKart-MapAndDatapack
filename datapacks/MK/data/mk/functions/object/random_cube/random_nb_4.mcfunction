scoreboard players set max RANDOM 200
function mk:rand



execute as @s[scores={RANDOM=0..4}] run function mk:object/green_shell/give
execute as @s[scores={RANDOM=5..29}] run function mk:object/red_shell/give
execute as @s[scores={RANDOM=30..34}] run function mk:object/banana/give
execute as @s[scores={RANDOM=35..79}] run function mk:object/mushroom/give
execute as @s[scores={RANDOM=80..109}] run function mk:object/triple_mushroom/give
execute as @s[scores={RANDOM=110..129}] run function mk:object/bomb/give
execute as @s[scores={RANDOM=130..139}] run function mk:object/blue_shell/give
#execute as @s[scores={RANDOM=120..129}] run function mk:object/thunder/give
execute as @s[scores={RANDOM=140..159}] run function mk:object/triple_green_shell/give
#execute as @s[scores={RANDOM=175..179}] run function mk:object/triple_banana/give
execute as @s[scores={RANDOM=160..174}] run function mk:object/triple_red_shell/give
#execute as @s[scores={RANDOM=135..159}] run function mk:object/star/give
#execute as @s[scores={RANDOM=160..174}] run function mk:object/golden_mushroom/give
#execute as @s[scores={RANDOM=175..184}] run function mk:object/bullet_bill/give
execute as @s[scores={RANDOM=175..189}] run function mk:object/bloop/give
execute as @s[scores={RANDOM=190..}] run function mk:object/boo/give

