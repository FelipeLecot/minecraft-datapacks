gamerule doDaylightCycle true
gamerule doMobSpawning true
gamerule doWeatherCycle true

effect clear @a
effect give @a regeneration 30 5
effect give @a saturation 30 5
effect give @a resistance 30 5

scoreboard players set @a dead 0
scoreboard players set @a Kills 0
scoreboard players set status status 2

# Integrate TP logic