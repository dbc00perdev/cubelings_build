# 06_DECISION_LOG.md

> Every locked decision lives here. If a decision is reopened, log a new entry — never delete.

---

## LEGEND

- 🟢 **LOCKED** — settled, do not re-debate without explicit reopen
- 🟡 **PROVISIONAL** — current best answer, may revisit
- 🔴 **OPEN** — needs decision

---

## 2026-04-26 — INITIAL LOCK BATCH

### 🟢 NAME
- **Decision:** Game name = `Cubelings`
- **Reason:** AB picked it; reads young, brandable, suggests "world of small cube creatures"

### 🟢 GENRE / TONE
- **Decision:** Cozy creative voxel sandbox. No combat, no monsters, no strangers.
- **Reason:** AB hates monsters/combat; brand is calm + creative

### 🟢 ART STYLE
- **Decision:** Blocky / voxel / Minecraft-adjacent. NOT 2.5D, NOT realistic, NOT cute-rounded.
- **Reason:** AB rejected non-blocky reference games

### 🟢 COLOR PALETTE
- **Decision:** Black `#1A1A1F` / Royal Purple `#6A1B9A` / Bright Yellow `#FFD60A` / Pink `#E91E63` / Lavender `#9575CD` / Sunny BG `#FFC107`
- **Reason:** AB picked black/purple/yellow as core; gradient eye colors derived from mascot reference

### 🟢 MASCOT / FIRST CUBELING
- **Decision:** Reference image `assets/reference/cubelings_master_reference.png` is canon. Every Cubeling shares anatomy: voxel cube body, gradient eyes, purple nose dots, yellow/purple accents.
- **Reason:** Single image defines entire visual identity

### 🟢 TARGET PLATFORM
- **Decision:** Android primary. Phase 1 = sideload APK. Phase 3+ = optional Play Store.
- **Reason:** AB plays on Android; dad familiar with Android

### 🟢 ENGINE
- **Decision:** Godot 4.3 with GDScript
- **Reason:** Free, native Android export, kid-readable scripting, blocky-friendly

### 🟢 ARCHITECTURE
- **Decision:** Hybrid — voxel terrain & walls (`zylann.voxel`) + GridMap snapped furniture
- **Reason:** Pure voxel = mobile performance death; pure prefab = less creative; hybrid balances

### 🟢 ART ASSETS (PHASE 1)
- **Decision:** Use Kenney Voxel Pack + Quaternius. No custom 3D modeling.
- **Reason:** Free, drop-in, saves 100+ hours; AB can recolor to fit palette

### 🟢 PETS
- **Decision:** Cat AND dog ship in Phase 1. Pets never die.
- **Reason:** AB wants both; "no death" is hard rule for kid-safety

### 🟢 SOCIAL
- **Decision:** Friends only (Phase 3). No public sharing. No strangers chat ever.
- **Reason:** AB explicitly said no social sharing; safety hard rule

### 🟢 NO PHOTO MODE
- **Decision:** No screenshot/photo mode in Phase 1
- **Reason:** AB explicitly said no

### 🟢 AGING SYSTEM
- **Decision:** Removed entirely (was provisional in earlier conversation)
- **Reason:** AB chose to skip; reduces art scope significantly

### 🟢 MULTIPLE SAVE SLOTS
- **Decision:** 3 save slots in Phase 1. Each = own character + own world.
- **Reason:** AB wants multiple characters

### 🟢 PACE
- **Decision:** 2 hrs/week, ~18-month Phase 1 timeline. Vibe-code with AB.
- **Reason:** Dad set pace; teaching AB is the meta-goal

### 🟢 CORE LOOP
- **Decision:** Build → decorate → quest → care for pets → unlock → repeat. No timer, no failure state.
- **Reason:** Cozy genre = no fail states

### 🟢 BUILDING WIZARD
- **Decision:** 3-step house wizard: room size → block type → block color → walls + ceiling spawn
- **Reason:** AB explicitly described this UX

### 🟢 BUILDER BENCH
- **Decision:** Baked into Cubelings (not standalone). Custom voxel décor builder. No weapon shapes.
- **Reason:** AB wants in-game custom creation; weapons explicitly excluded

### 🟢 DECORATION SCOPE
- **Decision:** Interior AND exterior decoration (Phase 1)
- **Reason:** AB confirmed exterior is needed too

### 🟢 NPCS
- **Decision:** 3 NPC Cubelings in Phase 1 (mailbox, shopkeeper, wanderer)
- **Reason:** Quest givers + economy + flavor

### 🟢 MONETIZATION
- **Decision:** None in Phase 1. Never ads. Never microtransactions.
- **Reason:** Hard rule for kid-safe game

### 🟢 MUSIC
- **Decision:** Built-in chill soundtrack + custom playlist import from device
- **Reason:** AB wants own music

---

## 🔴 STILL OPEN

| Topic | Question | Owner |
|---|---|---|
| Logo | Does AB design the logo herself? | AB |
| Mascot name | What is the first Cubeling called? | AB |
| Pet names | Player-chosen or fixed defaults? | AB |
| Story/narrator | Story-driven or freeform? | AB |
| First quest | What's quest #1 specifically? | AB |
| Play Dev account | $25 Google Play Developer account — yes/no for Phase 3? | Dad |
| LICENSE | MIT? CC-BY-NC for assets? | Dad |
| Repo visibility | Public from day 1, or private? | Dad |

---

## DECISION CHANGE LOG

(empty — first version)
