scoreboard objectives add started dummy
scoreboard players set lecot started 0
scoreboard objectives add dead deathCount
scoreboard objectives add Timer dummy Timer
scoreboard objectives add Kills playerKillCount Kills
scoreboard objectives add Health health
scoreboard objectives setdisplay below_name Health
scoreboard objectives setdisplay list Health

gamerule doDaylightCycle false
gamerule naturalRegeneration false
gamerule doMobSpawning false
gamerule doWeatherCycle false
gamerule locatorBar false

worldborder set 4000
worldborder center 0 0
worldborder damage amount 10
worldborder damage buffer 0

say UHC Loaded