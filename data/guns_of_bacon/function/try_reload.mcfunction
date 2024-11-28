execute store result score @s gob_bullets run data get entity @s SelectedItem.components."minecraft:charged_projectiles"[0].count
playsound minecraft:block.piston.extend player @a ~ ~ ~ 1 1.7
execute if score @s gob_bullets matches ..7 run function guns_of_bacon:reload