scoreboard players set max RANDOM 200
function mk:rand



execute as @s[scores={RANDOM=0..19}] run function mk:object/green_shell/give
execute as @s[scores={RANDOM=20..59}] run function mk:object/red_shell/give
execute as @s[scores={RANDOM=60..79}] run function mk:object/banana/give
execute as @s[scores={RANDOM=80..119}] run function mk:object/mushroom/give
execute as @s[scores={RANDOM=120..129}] run function mk:object/triple_mushroom/give
execute as @s[scores={RANDOM=130..149}] run function mk:object/bomb/give
execute as @s[scores={RANDOM=150..174}] run function mk:object/triple_green_shell/give
execute as @s[scores={RANDOM=175..179}] run function mk:object/triple_banana/give
execute as @s[scores={RANDOM=180..184}] run function mk:object/triple_red_shell/give
execute as @s[scores={RANDOM=185..194}] run function mk:object/bloop/give
execute as @s[scores={RANDOM=195..}] run function mk:object/boo/give

