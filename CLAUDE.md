# 02_GAME_DESIGN.md

## CORE LOOP

```
WAKE → check world → quest update from NPC →
build/decorate → care for pets → complete quest →
unlock new items → SLEEP → repeat
```

No timer, no failure state, no rush.

---

## FEATURE LIST — PHASE 1 (MVP, ~MONTH 18)

### ✅ IN PHASE 1

| Feature | Notes |
|---|---|
| 1 character creator | Hair, skin, outfit, eye gradient. Multiple save slots. |
| 1 small open world | Forest biome, ~48³ voxel grid |
| Day/night cycle | Smooth, ~10 min real-time per cycle |
| 3-step house wizard | Pick room size → block type → color → 4 walls + ceiling + floor spawn |
| Multi-room stacking | Add rooms to existing house |
| Interior decoration | ~30 furniture items, snap-place |
| Exterior decoration | Gardens, fences, paths, outdoor furniture (~15 items) |
| Color/material swap | Recolor any object anytime |
| 2 pets | Cat + dog Cubelings, follow, idle, eat |
| Mascot companion | First Cubeling, permanent buddy from spawn |
| Custom music | Load from device storage |
| Save/load | Local only |
| Touch controls | Joystick + tap |
| 5 starter quests | NPC-given item-finding |
| 3 NPC Cubelings | Quest givers, dialogue (text or emoji) |

### ❌ NOT IN PHASE 1 (PHASE 2+)

- Friends multiplayer
- More biomes (beach, snow)
- Farming
- Day jobs (shop, delivery)
- More pets (bunny, fox, etc.)
- Custom Cubeling species
- Builder Bench advanced mode
- Story/narrator
- Cloud saves
- Play Store release

---

## CHARACTER SYSTEM

### CHARACTER CREATOR (PHASE 1)
- Hair: 8 styles × 6 colors (2 brand-locked: purple, black)
- Skin: 8 tones
- Outfit: 6 presets (each with yellow accent piece)
- Eye gradient: 4 combinations
- **No height/age customization in Phase 1** (aging deferred)
- Multiple save slots (each = own character)

### NAMING
- Player picks name on save creation
- Default = "AB" first slot only

---

## PET SYSTEM

- Cat OR dog (or both, second pet unlocked via early quest)
- Pets follow AB by default
- Tap pet → pet menu (feed, pet, play, dismiss/recall)
- Mood meter: hungry, happy, sleepy
- **Pets never die. Ever. Hard rule.**
- Pets can sit on furniture AB places
- Pets have idle animations in player house

---

## NPC SYSTEM

- 3 NPC Cubelings in Phase 1:
  1. **Mailbox NPC** — delivers quests
  2. **Shopkeeper NPC** — trades items for materials
  3. **Wandering NPC** — gives random tips
- Dialogue: text bubbles + emoji (kid-readable)
- Each NPC has fixed location and daily schedule
- React to AB's outfit (compliments) and house style (compliments)

---

## QUEST SYSTEM (PHASE 1)

5 starter quests, all **find-and-deliver** style:

1. **"Welcome Basket"** — find 3 mushrooms in forest, give to mailbox NPC
2. **"Fashion Forward"** — find a yellow flower, deliver to shopkeeper
3. **"Sleepy Cat"** — find/build a bed, place it for cat Cubeling
4. **"Decorate the Door"** — place a mailbox outside your house
5. **"Friend Request"** — invite mascot Cubeling into your house (build a room for them)

Quests appear in a simple **journal UI** with checkboxes.

---

## BUILDING SYSTEM

### HOUSE WIZARD (3 STEPS)
1. **Size:** Small (3x3) / Medium (5x5) / Large (7x7)
2. **Block type:** Wood / Stone / Brick / Crystal
3. **Color:** Palette-locked options

→ House spawns instantly with walls, floor, ceiling, door, window.

### MULTI-ROOM
- Tap existing wall → "Add Room" → wizard runs again
- New room snaps to selected wall

### INTERIOR DECORATION
- Inventory drawer with all unlocked furniture
- Tap item → preview ghost in world → tap floor to place
- Long-press placed item → rotate / recolor / delete

### EXTERIOR DECORATION
- Same system, outside the house
- Path tiles, fences, garden plots, outdoor furniture

### COLOR/MATERIAL SWAP
- Tap any object → palette wheel
- Limited to brand palette + neutrals (wood, stone tones)

---

## BUILDER BENCH (CORE FEATURE)

> Originally scoped as standalone tool — now baked into Cubelings.

- Accessible from house (workbench prop)
- Tiny voxel editor (8x8x8 grid)
- AB combines voxels to create custom décor
- Save creation → appears in inventory as placeable item
- **No weapon shapes** — system blocks any object that detects sword/gun-like geometry (Phase 2 feature; Phase 1 just trusts AB)

---

## CONTROLS (TOUCH)

- **Left thumb:** Virtual joystick (move)
- **Right thumb:** Drag to look
- **Tap world:** Interact / place
- **Long press:** Object menu
- **Top-left button:** Inventory
- **Top-right button:** Quest journal
- **Bottom-right button:** Camera mode (1st/3rd person toggle)

---

## SAVE SYSTEM (PHASE 1)

- Local storage only
- JSON format
- Auto-save every 60 seconds
- Manual save on quit
- Multiple slots (3 max in Phase 1)
- Each slot = own character + own world

---

## SOUND DESIGN

- Ambient: birds, wind, leaves
- UI: soft pops, chimes
- Pet sounds: cute squeaks (not realistic meow/bark)
- Music: chill royalty-free + custom playlist support
- **No sharp/loud sounds anywhere**

---

## MONETIZATION

**None in Phase 1.** None planned.

If Phase 3+ ships to Play Store, considered:
- One-time purchase ($3-5)
- Optional cosmetic DLC packs
- **No ads. No microtransactions. No loot boxes.** Ever.

---

## ACCESSIBILITY

- Large UI buttons (kid finger friendly)
- Optional dyslexia-friendly font
- Color-blind safe palette (yellow + purple = high contrast)
- Tutorial available anytime, never forced
- No reading-required quests (icons + emoji)
