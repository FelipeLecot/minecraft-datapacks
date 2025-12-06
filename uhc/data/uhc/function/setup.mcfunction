scoreboard objectives add status dummy
scoreboard players set status status 0
scoreboard objectives add dead deathCount
scoreboard objectives add Timer dummy Timer
scoreboard objectives add Kills playerKillCount Kills
scoreboard objectives add Health health
scoreboard objectives setdisplay below_name Health
scoreboard objectives setdisplay list Health

gamerule doDaylightCycle false
gamerule doMobSpawning false
gamerule doWeatherCycle false

gamerule naturalRegeneration false
gamerule locatorBar false

difficulty hard

worldborder set 3000
worldborder center 0 0
worldborder damage amount 10
worldborder damage buffer 0

say UHC Loaded