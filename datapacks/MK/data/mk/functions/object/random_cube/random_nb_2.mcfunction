scoreboard players set max RANDOM 200
function mk:rand



execute as @s[scores={RANDOM=0..29}] run function mk:object/green_shell/give
execute as @s[scores={RANDOM=30..89}] run function mk:object/red_shell/give
execute as @s[scores={RANDOM=90..124}] run function mk:object/banana/give
execute as @s[scores={RANDOM=125..159}] run function mk:object/mushroom/give

execute as @s[scores={RANDOM=160..169}] run function mk:object/bomb/give
execute as @s[scores={RANDOM=170..184}] run function mk:object/triple_green_shell/give
execute as @s[scores={RANDOM=185..}] run function mk:object/triple_banana/give


