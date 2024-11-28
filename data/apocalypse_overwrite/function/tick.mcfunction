function apocalypse_overwrite:count_zombies
function apocalypse_overwrite:calculate_difficulty
execute as @e[type=#apocalypse_overwrite:zombie_like] at @s if entity @e[type=minecraft:zombie, distance=0.1..2] if predicate apocalypse_overwrite:1_in_30 run function apocalypse_overwrite:lunge
execute as @e[type=#apocalypse_overwrite:zombie_like] at @s if entity @a[distance=..10] unless data storage apocalypse_overwrite:detect {difficulty:1s} run function apocalypse_overwrite:zombie_break_block
execute as @e[type=#apocalypse_overwrite:fireproof] run data modify entity @s Fire set value -1s
execute if predicate apocalypse_overwrite:1_in_8 as @a[nbt={Dimension:"minecraft:overworld"}] at @s if score @s count_zombies < @s zombie_limit run summon zombie ~ -10 ~ {Tags:["move_me"]}
execute if predicate apocalypse_overwrite:1_in_8 as @a[nbt={Dimension:"minecraft:overworld"}] at @s if score @s count_zombies < @s zombie_limit run summon zombie ~ -10 ~ {Tags:["move_me_underground"]}
execute if predicate apocalypse_overwrite:1_in_8 as @a[nbt={Dimension:"minecraft:the_nether"}] at @s run summon zombified_piglin ~ ~100 ~ {Tags:["move_me_underground"]}
execute as @r if score @s count_zombies < @s zombie_limit at @s run spreadplayers ~ ~ 1 128 false @e[tag=move_me]
execute as @r if score @s count_zombies < @s zombie_limit at @s run spreadplayers ~ ~ 1 128 under 50 false @e[tag=move_me_underground]
execute as @e[tag=move_me] at @s unless entity @p[distance=..15] run tag @s remove move_me
execute as @e[tag=move_me_underground] at @s unless entity @p[distance=..15] run tag @s remove move_me_underground
execute if predicate apocalypse_overwrite:1_in_30 run function apocalypse_overwrite:random_tick
execute as @a[nbt={SelectedItem:{id:"minecraft:rotten_flesh"}}, nbt={Inventory:[{id:"minecraft:rotten_flesh",Slot:-106b}]}] at @s run effect give @e[type=#apocalypse_overwrite:zombie_like, limit=1, sort=nearest] minecraft:weakness 1 0 true
execute as @a[nbt={Inventory:[{Slot:102b, id:"minecraft:leather_chestplate",components:{"minecraft:custom_data":{"nbt":"body_odor"}}}]}] at @s run function apocalypse_overwrite:body_odor
execute at @e[type=minecart] if entity @p[distance=..1] run function apocalypse_overwrite:car
#fireball crossbow
#execute as @e[type=arrow] at @s unless entity @p[distance=..2, nbt={SelectedItem:{id:"minecraft:crossbow", tag:{display:{Name:'{"text":"Rocket Launcher", "italic":"false", "color":"red"}'}}}}] unless entity @e[distance=..2, nbt={HandItems:[{id:"minecraft:crossbow", tag:{display:{Name:'{"text":"Rocket Launcher", "italic":"false", "color":"red"}'}}}]}] run tag @s add notFireball
#execute at @e[type=arrow, tag=!notFireball] unless entity @e[type=fireball, distance=..2] run summon minecraft:fireball ~ ~ ~ {ExplosionPower:2, power:[0.0d,-0.07d,0.0d]}
#execute as @e[type=arrow, tag=!notFireball] at @s run data modify entity @e[type=fireball, limit=1, sort=nearest] Motion set from entity @s Motion
#kill @e[type=arrow, tag=!notFireball]