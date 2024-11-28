playsound minecraft:entity.dragon_fireball.explode player @a ~ ~ ~ 5 0.5
execute as @p at @s anchored eyes run summon minecraft:block_display ^ ^ ^2 {block_state:{Name:"copper_block"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.1f,0.1f,0.1f]}, Tags:["gob_bullet"]}
#execute as @p at @s anchored eyes run summon minecraft:marker ^ ^ ^1 {Tags:["gob_bullet"]}
#execute as @p at @s anchored eyes run summon minecraft:silverfish ^ ^ ^1 {Tags:["gob_bullet"], NoAI:1b, Silent:1b, Invulnerable:1b}
execute at @a as @e[tag=gob_bullet, tag=!gob_flying] run data modify entity @s Rotation set from entity @p Rotation
execute at @a as @e[tag=gob_bullet, tag=!gob_flying] run tag @s add gob_flying