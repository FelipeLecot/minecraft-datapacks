clear @s
effect clear @s

# Sword
give @s iron_sword[enchantments={sharpness:3}]

# Axe & Pickaxe
give @s iron_axe[enchantments={efficiency:2}]
give @s iron_pickaxe[enchantments={efficiency:2}]

# Bow
give @s bow[enchantments={power:2}]

# Shield
give @s shield

# Crossbow
give @s crossbow[enchantments={piercing:1}] 2

# Arrows
give @s arrow 128

# Blocks
give @s oak_planks 128

# Buckets
give @s water_bucket 2
give @s lava_bucket 2

# Golden Apples
give @s golden_apple 4
give @s cooked_beef 64

# Armor
give @s iron_helmet[enchantments={protection:2}]
give @s iron_chestplate[enchantments={protection:2}]
give @s iron_leggings[enchantments={protection:2}]
give @s iron_boots[enchantments={protection:2}]

give @s potion[potion_contents=strong_healing] 4
give @s potion[potion_contents=strong_strength] 2
give @s potion[potion_contents=strong_swiftness] 2
give @s splash_potion[potion_contents=weakness] 2
give @s splash_potion[potion_contents=long_poison] 2

scoreboard players set @s kit 0
scoreboard players set @s selecting 0
scoreboard players set @s lastkit 4
scoreboard players set @s advicebool 1

tellraw @s {"text":"Archer kit selected","color":"green"}