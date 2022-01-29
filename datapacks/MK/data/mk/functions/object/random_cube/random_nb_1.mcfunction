scoreboard players set max RANDOM 200
function mk:rand



execute as @s[scores={RANDOM=0..69}] run function mk:object/green_shell/give
execute as @s[scores={RANDOM=70..99}] run function mk:object/triple_banana/give
execute as @s[scores={RANDOM=100..}] run function mk:object/banana/give
