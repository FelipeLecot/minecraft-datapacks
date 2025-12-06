execute as @a at @s if score @s dead matches 1 run loot spawn ~ ~ ~ loot uhc:entities/player
execute as @a at @s if score @s dead matches 1 run gamemode spectator
execute as @a at @s if score @s dead matches 1 run scoreboard players set @s dead 2