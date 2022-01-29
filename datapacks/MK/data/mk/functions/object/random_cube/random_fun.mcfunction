scoreboard players set max RANDOM 280
function mk:rand



#execute as @s[scores={RANDOM=0..19}] run function mk:object/green_shell/give
execute as @s[scores={RANDOM=0..19}] run function mk:object/red_shell/give
#execute as @s[scores={RANDOM=40..59}] run function mk:object/banana/give
execute as @s[scores={RANDOM=20..39}] run function mk:object/mushroom/give
execute as @s[scores={RANDOM=40..59}] run function mk:object/triple_mushroom/give
execute as @s[scores={RANDOM=60..79}] run function mk:object/bomb/give
execute as @s[scores={RANDOM=80..99}] run function mk:object/blue_shell/give
execute as @s[scores={RANDOM=100..119}] run function mk:object/thunder/give
execute as @s[scores={RANDOM=120..139}] run function mk:object/triple_green_shell/give
execute as @s[scores={RANDOM=140..159}] run function mk:object/triple_banana/give
execute as @s[scores={RANDOM=160..179}] run function mk:object/triple_red_shell/give
execute as @s[scores={RANDOM=180..199}] run function mk:object/star/give
execute as @s[scores={RANDOM=200..219}] run function mk:object/golden_mushroom/give
execute as @s[scores={RANDOM=220..239}] run function mk:object/bullet_bill/give
execute as @s[scores={RANDOM=240..259}] run function mk:object/bloop/give
execute as @s[scores={RANDOM=260..}] run function mk:object/boo/give

