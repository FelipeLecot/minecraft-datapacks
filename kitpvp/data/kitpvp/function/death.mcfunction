execute as @a at @s if score @s dead matches 1 run loot spawn ~ ~ ~ loot kitpvp:entities/player
execute as @a if score @s dead matches 1 run clear
execute as @a if score @s dead matches 1 run effect clear @s
execute as @a if score @s dead matches 1 if score @s autokit matches 0 run scoreboard players set @s selecting 1
execute as @a if score @s dead matches 1 if score @s autokit matches 1 run scoreboard players operation @s kit = @s lastkit
execute as @a run scoreboard players set @s dead 0
execute as @a if score @s dead matches 1 run tellraw @s {"text":"Use /trigger kit set [1-4] to select a kit","color":"green"}
execute as @a if score @s dead matches 1 run tellraw @s {"text":"You can toggle auto kit with /trigger autokit set 1 to respawn with your previous kit","color":"green"}