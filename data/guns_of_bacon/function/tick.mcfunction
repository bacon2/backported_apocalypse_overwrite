execute as @e[tag=gob_clickme] at @p run tp @s ~ ~1 ~
execute at @a[nbt={SelectedItem:{components:{"minecraft:item_name":'"Sidearm"'}}}] unless entity @e[tag=gob_clickme, distance=..1.5] run summon minecraft:interaction ~ ~1 ~ {Tags:["gob_clickme"]}
execute as @e[tag=gob_clickme] at @s unless entity @p[distance=..1.5, nbt={SelectedItem:{components:{"minecraft:item_name":'"Sidearm"'}}}] run kill @s
# Later fix that another player nearby you can reload for you or shoot for you
execute as @e[tag=gob_clickme] at @s if data entity @s attack as @p at @s run function guns_of_bacon:try_shoot
execute as @e[tag=gob_clickme] at @s if data entity @s interaction as @p at @s run function guns_of_bacon:reload
execute as @e[tag=gob_flying] at @s positioned ^ ^ ^ as @e[dx=0,dy=0,dz=0] run function guns_of_bacon:hit
execute as @e[tag=gob_flying] at @s positioned ^ ^ ^0.08 as @e[dx=0,dy=0,dz=0] run function guns_of_bacon:hit
execute as @e[tag=gob_flying] at @s positioned ^ ^ ^0.16 as @e[dx=0,dy=0,dz=0] run function guns_of_bacon:hit
execute as @e[tag=gob_flying] at @s positioned ^ ^ ^0.24 as @e[dx=0,dy=0,dz=0] run function guns_of_bacon:hit
execute as @e[tag=gob_flying] at @s positioned ^ ^ ^0.32 as @e[dx=0,dy=0,dz=0] run function guns_of_bacon:hit
execute as @e[tag=gob_flying] at @s positioned ^ ^ ^0.48 as @e[dx=0,dy=0,dz=0] run function guns_of_bacon:hit
execute as @e[tag=gob_flying] at @s positioned ^ ^ ^0.56 as @e[dx=0,dy=0,dz=0] run function guns_of_bacon:hit
execute as @e[tag=gob_flying] at @s positioned ^ ^ ^0.64 as @e[dx=0,dy=0,dz=0] run function guns_of_bacon:hit
execute as @e[tag=gob_flying] at @s positioned ^ ^ ^0.72 as @e[dx=0,dy=0,dz=0] run function guns_of_bacon:hit
execute as @e[tag=gob_flying] at @s positioned ^ ^ ^0.80 as @e[dx=0,dy=0,dz=0] run function guns_of_bacon:hit
execute as @e[tag=gob_flying] at @s positioned ^ ^ ^0.88 as @e[dx=0,dy=0,dz=0] run function guns_of_bacon:hit
execute as @e[tag=gob_flying] at @s positioned ^ ^ ^0.96 as @e[dx=0,dy=0,dz=0] run function guns_of_bacon:hit
execute as @e[tag=gob_flying] at @s positioned ^ ^ ^1.04 as @e[dx=0,dy=0,dz=0] run function guns_of_bacon:hit
execute as @e[tag=gob_flying] at @s positioned ^ ^ ^1.12 as @e[dx=0,dy=0,dz=0] run function guns_of_bacon:hit
execute as @e[tag=gob_flying] at @s positioned ^ ^ ^1.2 as @e[dx=0,dy=0,dz=0] run function guns_of_bacon:hit
execute as @e[tag=gob_flying] at @s positioned ^ ^ ^1.28 as @e[dx=0,dy=0,dz=0] run function guns_of_bacon:hit
execute as @e[tag=gob_flying] at @s positioned ^ ^ ^1.36 as @e[dx=0,dy=0,dz=0] run function guns_of_bacon:hit
execute as @e[tag=gob_flying] at @s positioned ^ ^ ^1.44 as @e[dx=0,dy=0,dz=0] run function guns_of_bacon:hit
execute as @e[tag=gob_flying] at @s positioned ^ ^ ^1.52 as @e[dx=0,dy=0,dz=0] run function guns_of_bacon:hit
execute as @e[tag=gob_flying] at @s positioned ^ ^ ^1.6 as @e[dx=0,dy=0,dz=0] run function guns_of_bacon:hit
execute as @e[tag=gob_flying] at @s positioned ^ ^ ^1.68 as @e[dx=0,dy=0,dz=0] run function guns_of_bacon:hit
execute as @e[tag=gob_flying] at @s positioned ^ ^ ^1.76 as @e[dx=0,dy=0,dz=0] run function guns_of_bacon:hit
execute as @e[tag=gob_flying] at @s positioned ^ ^ ^1.84 as @e[dx=0,dy=0,dz=0] run function guns_of_bacon:hit
execute as @e[tag=gob_flying] at @s positioned ^ ^ ^1.92 as @e[dx=0,dy=0,dz=0] run function guns_of_bacon:hit
execute as @e[tag=gob_flying] at @s positioned ^ ^ ^2 as @e[dx=0,dy=0,dz=0] run function guns_of_bacon:hit
execute as @e[tag=gob_flying] at @s positioned ^ ^ ^2.08 as @e[dx=0,dy=0,dz=0] run function guns_of_bacon:hit
execute as @e[tag=gob_flying] at @s run tp @s ^ ^ ^2.16
execute as @e[tag=gob_flying] at @s run particle crit
execute as @e[tag=gob_flying] at @s unless block ^ ^ ^ air run kill @s