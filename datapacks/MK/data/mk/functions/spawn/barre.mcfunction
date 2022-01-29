scoreboard players add @a[scores={chargement=1..}] chargement 1

effect give @a[scores={chargement=1..}] blindness 10 1 true

title @a[scores={chargement=1..}] times 0 20 0
title @a[scores={chargement=1..}] subtitle {"text":"Chargement..."}

title @a[scores={chargement=1}] title {"text":"\u258c\u258c\u258c\u258c\u258c\u258c\u258c\u258c\u258c\u258c\u258c"}

title @a[scores={chargement=5}] title ["",{"text":"\u258c","color":"dark_red"},{"text":"\u258c\u258c\u258c\u258c\u258c\u258c\u258c\u258c\\u258c\u258c"}]

title @a[scores={chargement=9}] title ["",{"text":"\u258c\u258c","color":"dark_red"},{"text":"\u258c\u258c\u258c\u258c\u258c\u258c\u258c\u258c"}]

title @a[scores={chargement=13}] title ["",{"text":"\u258c\u258c\u258c","color":"dark_red"},{"text":"\u258c\u258c\u258c\u258c\u258c\u258c\u258c\u258c"}]

title @a[scores={chargement=17}] title ["",{"text":"\u258c\u258c\u258c\u258c","color":"dark_red"},{"text":"\u258c\u258c\u258c\u258c\u258c\u258c\u258c"}]

title @a[scores={chargement=21}] title ["",{"text":"\u258c\u258c\u258c\u258c\u258c","color":"dark_red"},{"text":"\u258c\u258c\u258c\u258c\u258c\u258c"}]

title @a[scores={chargement=25}] title ["",{"text":"\u258c\u258c\u258c\u258c\u258c\u258c","color":"dark_red"},{"text":"\u258c\u258c\u258c\u258c\u258c"}]

title @a[scores={chargement=29}] title ["",{"text":"\u258c\u258c\u258c\u258c\u258c\u258c\u258c","color":"dark_red"},{"text":"\u258c\u258c\u258c\u258c"}]

title @a[scores={chargement=33}] title ["",{"text":"\u258c\u258c\u258c\u258c\u258c\u258c\u258c\u258c","color":"dark_red"},{"text":"\u258c\u258c\u258c"}]

title @a[scores={chargement=37}] title ["",{"text":"\u258c\u258c\u258c\u258c\u258c\u258c\u258c\u258c\u258c","color":"dark_red"},{"text":"\u258c\u258c"}]

title @a[scores={chargement=41}] title ["",{"text":"\u258c\u258c\u258c\u258c\u258c\u258c\u258c\u258c\u258c\u258c","color":"dark_red"},{"text":"\u258c"}]

title @a[scores={chargement=45}] title ["",{"text":"\u258c\u258c\u258c\u258c\u258c\u258c\u258c\u258c\u258c\u258c\u258c","color":"dark_red"},{"text":""}]

effect clear @a[scores={chargement=45}] blindness
title @a[scores={chargement=45}] times 0 100 20
title @a[scores={chargement=45}] subtitle {"text":"votre kart","color":"dark_red"}
title @a[scores={chargement=45}] title {"text":"Montez dans","color":"dark_red"}
scoreboard players set @a[scores={chargement=45}] chargement 0