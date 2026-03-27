# Minecraft Datapacks

A collection of Minecraft datapacks for custom game modes.

---

## Table of Contents

- [KitPvP](#kitpvp)
  - [Features](#kitpvp-features)
  - [Kits](#kits)
  - [Sample Tasks](#kitpvp-sample-tasks)
  - [TODO](#kitpvp-todo)
- [UHC](#uhc)
  - [Features](#uhc-features)
  - [Recipes](#recipes)
  - [Sample Tasks](#uhc-sample-tasks)
  - [TODO](#uhc-todo)
- [Installation](#installation)

---

## KitPvP

A Kit PvP datapack that gives players a kit on spawn, prevents item drops on death, and adds a golden head mechanic.

### KitPvP Features

- **No item drops on death** – players keep nothing when they die; their inventory is cleared and a Golden Head is spawned at their death location.
- **Kit selection on respawn** – players use `/trigger kit set <1-5>` to choose a kit after dying.
- **Auto-kit** – players can toggle `/trigger autokit set 1` to automatically respawn with their previous kit.
- **Spawn protection** – players selecting a kit receive temporary Resistance III, Regeneration III, and Saturation III while choosing.
- **Golden Head** – consuming a Golden Head grants Regeneration II (10 s) and Absorption II (2 min).
- **Configurable world border** – `/function kitpvp:set_border` sets a 300-block border centered on the caller.

### Kits

| # | Kit | Weapon | Armor | Special |
|---|-----|--------|-------|---------|
| 1 | **Warrior** | Iron Sword (Sharp III) + Bow (Power II) | Iron (Prot II) | Water/lava buckets, pickaxe & axe |
| 2 | **Archer** | Iron Sword (Sharp II) + Bow (Power III) + 2× Crossbow (Piercing II) | Iron (Prot II) | 256 arrows |
| 3 | **Tank** | Iron Sword (Sharp II) + Bow (Power II) | Iron (Prot III) | 6 Golden Apples, pickaxe & axe |
| 4 | **Pots** | Iron Sword (Sharp III) | Iron (Prot II) | Healing/Strength/Swiftness/Poison/Weakness potions |
| 5 | **OP** | Diamond Sword (Sharp IV) + Bow (Power IV) | Diamond (Prot II) | 8 Golden Apples, strong potions |

### KitPvP Sample Tasks

```
# Load / reload the datapack
/function kitpvp:setup

# Set the world border to 300 blocks centered on yourself
/function kitpvp:set_border

# Select a kit (run after dying, while selecting = 1)
/trigger kit set 1       # Warrior
/trigger kit set 2       # Archer
/trigger kit set 3       # Tank
/trigger kit set 4       # Pots
/trigger kit set 5       # OP

# Enable auto-kit (respawn with previous kit automatically)
/trigger autokit set 1

# Give a player the Warrior kit manually
/function kitpvp:kits/warrior
```

### KitPvP TODO

- [ ] Teams support

---

## UHC

An Ultra Hardcore (UHC) datapack that disables natural regeneration, adds custom golden head crafting, and handles UHC-style game flow (waiting → start → in-game).

### UHC Features

- **No natural regeneration** – `naturalRegeneration` gamerule is disabled; health can only be restored via golden items.
- **Hard difficulty** – set automatically on load.
- **Spectator on death** – players are switched to spectator mode when they die; a player head is dropped at their location.
- **Kill & health scoreboard** – kill count shown in the tab list; health shown below each player's name.
- **Ghast loot replacement** – Ghasts drop a Gold Ingot instead of a Ghast Tear.
- **Custom recipes** (see below).
- **World border** – 3,000-block border centered on `0, 0` with instant damage on contact.
- **Waiting phase** – before the game starts (`/function uhc:start`), all players receive permanent Resistance IV, Saturation IV, and Regeneration IV so they cannot be harmed.

### Recipes

| Item | Recipe | Result |
|------|--------|--------|
| **Golden Apple** | 1 Apple + 4 Gold Ingots (shapeless) | `minecraft:golden_apple` |
| **Golden Head** | Player Head surrounded by 8 Gold Ingots (3×3) | Golden Head – grants Regen II + Absorption II |
| **Apple of Instant Health** | Golden Apple surrounded by 8 Gold Ingots (3×3) | Apple of Instant Health – grants Instant Health |
| **Glistering Melon Slice** | 1 Gold Block + 1 Melon (shapeless) | `minecraft:glistering_melon_slice` |

### UHC Sample Tasks

```
# Load / reload the datapack
/function uhc:setup

# Start the game (enables day cycle, mob spawning, weather; clears waiting-phase buffs)
/function uhc:start

# Check current game status (0 = waiting, 2 = in-game)
/scoreboard players get status status
```

### UHC TODO

- [ ] TP logic on start
- [ ] Teams – pre-made, random, or on meetup
- [ ] AFK detection for players
- [ ] Border shrink
- [ ] Final heal and boost before endgame
- [ ] Win detection

---

## Installation

1. Download or clone this repository.
2. Copy the desired datapack folder (`kitpvp` or `uhc`) into your world's `datapacks` directory:
   ```
   saves/<world_name>/datapacks/
   ```
3. In-game, run `/reload` to load the datapack.
4. Verify the datapack is active:
   ```
   /datapack list
   ```

> **Pack format:** `88` (Minecraft 1.21+)
