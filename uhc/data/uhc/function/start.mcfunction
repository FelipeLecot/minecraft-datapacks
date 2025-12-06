gamerule doDaylightCycle true
gamerule naturalRegeneration true
gamerule doMobSpawning true
gamerule doWeatherCycle true

effect clear @a
effect give @a regeneration 30 1
effect give @a saturation 30 1
effect give @a resistance 30 1

scoreboard players set @a dead 0
scoreboard players set @a Kills 0
scoreboard players set lecot started 2