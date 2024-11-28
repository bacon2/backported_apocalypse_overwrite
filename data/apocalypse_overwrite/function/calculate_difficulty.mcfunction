scoreboard players set @a zombie_limit 20
execute store result storage apocalypse_overwrite:time time short 1 run time query daytime
execute if data storage legit_mcweather:time {time:1234s} run scoreboard players add @a zombie_limit 20
scoreboard players add @a[advancements={minecraft:story/smelt_iron=true}] zombie_limit 20
scoreboard players add @a[advancements={minecraft:story/mine_diamond=true}] zombie_limit 20
scoreboard players add @a[advancements={minecraft:story/enchant_item=true}] zombie_limit 20
scoreboard players add @a[advancements={minecraft:nether/obtain_blaze_rod=true}] zombie_limit 20
scoreboard players add @a[advancements={minecraft:nether/obtain_ancient_debris=true}] zombie_limit 20
scoreboard players add @a[advancements={minecraft:nether/netherite_armor=true}] zombie_limit 20
scoreboard players add @a[advancements={minecraft:nether/create_beacon=true}] zombie_limit 30
scoreboard players add @a[advancements={minecraft:nether/create_full_beacon=true}] zombie_limit 20
scoreboard players add @a[advancements={minecraft:adventure/sleep_in_bed=true}] zombie_limit 5
scoreboard players add @a[advancements={minecraft:adventure/trade=true}] zombie_limit 10
scoreboard players add @a[advancements={minecraft:adventure/hero_of_the_village=true}] zombie_limit 30
scoreboard players add @a[advancements={minecraft:adventure/throw_trident=true}] zombie_limit 15
scoreboard players add @a[advancements={minecraft:end/dragon_egg=true}] zombie_limit 20
scoreboard players add @a[advancements={minecraft:end/elytra=true}] zombie_limit 30
scoreboard players add @a[advancements={minecraft:end/respawn_dragon=true}] zombie_limit 20
execute store result storage apocalypse_overwrite:detect difficulty short 1 run difficulty
execute if data storage apocalypse_overwrite:detect {difficulty:0s} run scoreboard players reset @a zombie_limit
execute if data storage apocalypse_overwrite:detect {difficulty:2s} run scoreboard players add @a zombie_limit 10
execute if data storage apocalypse_overwrite:detect {difficulty:3s} run scoreboard players add @a zombie_limit 20
scoreboard players set game zombie_max 400
scoreboard players operation game zombie_max /= @r count_players
scoreboard players operation @a zombie_limit < game zombie_max