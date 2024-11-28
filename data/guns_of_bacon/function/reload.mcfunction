execute store result score @s gob_bullets run data get entity @s SelectedItem.components."minecraft:charged_projectiles"[0].count
playsound minecraft:block.piston.extend player @a ~ ~ ~ 1 1.7
execute if score @s gob_bullets matches ..8 store success score @s gob_temp run clear @s *[minecraft:item_name="Bullet"] 1
execute if score @s gob_bullets matches ..8 if score @s gob_temp matches 1 run item modify entity @s weapon.mainhand guns_of_bacon:reload
execute if score @s gob_bullets matches ..7 store success score @s gob_temp run clear @s *[minecraft:item_name="Bullet"] 1
execute if score @s gob_bullets matches ..7 if score @s gob_temp matches 1 run item modify entity @s weapon.mainhand guns_of_bacon:reload
execute if score @s gob_bullets matches ..6 store success score @s gob_temp run clear @s *[minecraft:item_name="Bullet"] 1
execute if score @s gob_bullets matches ..6 if score @s gob_temp matches 1 run item modify entity @s weapon.mainhand guns_of_bacon:reload
execute if score @s gob_bullets matches ..5 store success score @s gob_temp run clear @s *[minecraft:item_name="Bullet"] 1
execute if score @s gob_bullets matches ..5 if score @s gob_temp matches 1 run item modify entity @s weapon.mainhand guns_of_bacon:reload
execute if score @s gob_bullets matches ..4 store success score @s gob_temp run clear @s *[minecraft:item_name="Bullet"] 1
execute if score @s gob_bullets matches ..4 if score @s gob_temp matches 1 run item modify entity @s weapon.mainhand guns_of_bacon:reload
execute if score @s gob_bullets matches ..3 store success score @s gob_temp run clear @s *[minecraft:item_name="Bullet"] 1
execute if score @s gob_bullets matches ..3 if score @s gob_temp matches 1 run item modify entity @s weapon.mainhand guns_of_bacon:reload
execute if score @s gob_bullets matches ..2 store success score @s gob_temp run clear @s *[minecraft:item_name="Bullet"] 1
execute if score @s gob_bullets matches ..2 if score @s gob_temp matches 1 run item modify entity @s weapon.mainhand guns_of_bacon:reload
execute if score @s gob_bullets matches ..1 store success score @s gob_temp run clear @s *[minecraft:item_name="Bullet"] 1
execute if score @s gob_bullets matches ..1 if score @s gob_temp matches 1 run item modify entity @s weapon.mainhand guns_of_bacon:reload
execute if score @s gob_temp matches 0 run title @s actionbar "Need bullets"
kill @e[tag=gob_clickme, limit=1, sort=nearest]