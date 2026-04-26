# 03_ARCHITECTURE.md

## STACK — LOCKED

| Layer | Choice | Why |
|---|---|---|
| Engine | Godot 4.3 | Free, native Android export, blocky-friendly, kid-readable scripting |
| Language | GDScript | Python-like, low learning curve, AB-friendly |
| Source control | Git + GitHub | Industry standard, version history |
| IDE | Godot built-in editor | Self-contained, no extra tooling |
| Voxel terrain | `zylann.voxel` plugin | Battle-tested, free, mobile-capable |
| Snapped furniture | Godot GridMap node | Built-in, perfect for blocky décor |
| Art pipeline | Kenney Voxel + Quaternius | Free, drop-in, no modeling required |
| Audio | Godot built-in audio | Sufficient for Phase 1 |
| Save format | JSON via FileAccess | Simple, debuggable, AB-readable |

---

## TARGET DEVICES

| Tier | Device | Specs | Role |
|---|---|---|---|
| Dev box | Win 11 Pro, Intel UHD 770, no dGPU, 500GB | Develop + light testing | Dad's machine |
| Baseline | Fire HD Max 11 | 4-6GB RAM, mid Adreno | Performance floor |
| Ceiling | Pixel 9 Pro / S24 Ultra / Note 10+ | High-end | Quality target |

**Design rule:** if it doesn't run smoothly on Fire HD Max 11, it doesn't ship.

---

## PERFORMANCE BUDGET

| Metric | Target |
|---|---|
| Frame rate | 30 FPS stable on baseline |
| World size | 48³ voxels max (Phase 1) |
| Draw distance | 24 voxels visible, fog beyond |
| Active entities | <30 (player + pets + NPCs + items) |
| Texture memory | <128 MB |
| APK size | <150 MB |
| Cold start | <8 seconds |

---

## SCENE ARCHITECTURE (GODOT)

```
Main.tscn
├── World
│   ├── VoxelTerrain         (zylann.voxel)
│   ├── GridMap_Furniture    (snapped décor)
│   ├── DayNightCycle
│   └── Lighting
├── Player
│   ├── CharacterBody3D
│   ├── Camera
│   └── Inventory
├── Companions
│   ├── CatCubeling
│   ├── DogCubeling
│   └── MascotCubeling
├── NPCs
│   └── (instanced from npc_template.tscn)
├── UI
│   ├── HUD
│   ├── InventoryDrawer
│   ├── QuestJournal
│   ├── HouseWizard
│   └── CharacterCreator
└── SystemManagers
    ├── SaveManager
    ├── QuestManager
    ├── AudioManager
    └── InputManager
```

---

## DATA MODELS

### CHARACTER
```gdscript
{
  "name": "AB",
  "slot": 1,
  "hair": {"style": 3, "color": "#6A1B9A"},
  "skin": "#F4D7A1",
  "outfit": "preset_2",
  "eye_gradient": "yellow_pink_purple",
  "current_world": "world_001",
  "created_date": "2026-04-26"
}
```

### WORLD
```gdscript
{
  "id": "world_001",
  "owner_slot": 1,
  "biome": "forest",
  "size": [48, 48, 48],
  "voxel_data": "compressed_blob_or_filepath",
  "furniture": [
    {"type": "bed_blue", "pos": [10, 1, 12], "rot": 0, "color": "#6A1B9A"},
    ...
  ],
  "houses": [...],
  "pets": [...],
  "completed_quests": [],
  "active_quests": ["welcome_basket"]
}
```

### FURNITURE ITEM
```gdscript
{
  "id": "chair_wooden",
  "display_name": "Wooden Chair",
  "category": "seating",
  "size": [1, 2, 1],          // grid cells
  "rotatable": true,
  "recolorable": true,
  "indoor": true,
  "outdoor": false,
  "unlocked_by": "default"
}
```

### QUEST
```gdscript
{
  "id": "welcome_basket",
  "title": "Welcome Basket",
  "giver": "mailbox_npc",
  "type": "find_and_deliver",
  "objectives": [
    {"item": "mushroom", "count": 3, "found": 0}
  ],
  "reward": {"items": ["yellow_lamp"], "unlock": null},
  "dialogue": {...}
}
```

---

## CORE SYSTEMS

### VOXEL TERRAIN
- `zylann.voxel` plugin
- Pre-generated 48³ world saved per character slot
- Player can dig/place voxels (limited block types)
- Voxel changes saved to character's world JSON

### GRIDMAP FURNITURE
- 1 unit = 1 voxel cell
- All furniture snaps to integer grid
- Rotations: 0°, 90°, 180°, 270°
- Stack-able (lamp on table, etc.)

### DAY/NIGHT CYCLE
- Single directional light rotates over Y axis
- Skybox shader interpolates between palette colors
  - Dawn: yellow → lavender
  - Day: sunny BG yellow tint
  - Dusk: pink → purple
  - Night: deep purple
- Cycle length: 10 minutes real-time (Phase 1; tunable)

### SAVE MANAGER
```gdscript
# Auto-save every 60s
# Manual save on quit
# Save path: user://saves/slot_<n>.json
# Format: JSON, gzip-compressed if > 1MB
```

### INPUT MANAGER
- Touch input → virtual joystick (Godot's built-in)
- Right-side drag → camera look
- Tap raycast for world interaction
- Long-press detection for object menus

### QUEST MANAGER
- Quest state in player save
- Subscribes to events: `item_collected`, `furniture_placed`, `npc_talked`
- On completion: triggers reward + unlocks

### AUDIO MANAGER
- Music: 1 active track, fades between
- SFX: pooled players, max 8 concurrent
- Custom playlist: scans `user://music/` folder for `.ogg/.mp3`

---

## ANDROID EXPORT

- Target: Android 10+ (API 29+)
- Architecture: arm64-v8a + armeabi-v7a
- Permissions: storage (for music), nothing else
- No internet permission in Phase 1
- Signing: debug keystore for sideload, prod keystore at Play Store time

---

## OPTIMIZATION RULES

1. **Bake all lighting** — no real-time shadows except sun direction
2. **Atlas all textures** — single texture sheet per category
3. **LOD aggressive** — off-screen Cubelings invisible
4. **Pool everything** — furniture instances, particles, audio
5. **Compress save data** — gzip JSON if > 1MB
6. **No background processes** when game paused

---

## TESTING STRATEGY

- **Dev box:** Editor + small world (32³)
- **Pre-commit:** Run on dev box, no FPS test
- **End of session:** Export APK → install on actual Fire HD Max 11
- **Weekly:** AB plays on her phone, dad observes
- **Monthly:** Test on borrowed/dad's high-end phone if possible

---

## REPOSITORY STRATEGY

- `main` branch = playable, stable
- `dev` branch = active work
- Feature branches: `feat/<thing>`
- Tag releases at end of each phase: `v0.1-phase1a`, etc.
- AB commits her own changes when she's ready (Month 8+)

---

## CI/CD (PHASE 1 = MANUAL)

No CI in Phase 1. Manual export to APK from Godot.

Phase 2+ consideration: GitHub Actions auto-build APK on tagged release.
