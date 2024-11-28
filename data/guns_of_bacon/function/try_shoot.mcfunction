execute store result score @s gob_bullets run data get entity @s SelectedItem.components."minecraft:charged_projectiles"[0].count
execute unless score @s gob_bullets matches 2.. run playsound minecraft:ui.button.click player @a ~ ~ ~ 1 2
execute if score @s gob_bullets matches 2.. run item modify entity @s weapon.mainhand guns_of_bacon:consume_bullet
execute if score @s gob_bullets matches 2.. as @e[tag=gob_clickme] at @s run function guns_of_bacon:shoot
kill @e[tag=gob_clickme, limit=1, sort=nearest]