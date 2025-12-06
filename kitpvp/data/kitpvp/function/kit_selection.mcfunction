scoreboard players enable @a kit
scoreboard players enable @a autokit
scoreboard players enable @a advicebool
execute as @a[scores={kit=1}] run function kitpvp:kits/warrior
execute as @a[scores={kit=2}] run function kitpvp:kits/archer
execute as @a[scores={kit=3}] run function kitpvp:kits/tank
execute as @a[scores={kit=4}] run function kitpvp:kits/pots
execute as @a[scores={kit=5}] run function kitpvp:kits/op