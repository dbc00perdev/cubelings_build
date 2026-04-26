# CLAUDE.md — AI Session Bootstrap

> Read this first if you are vibe-coding Cubelings with Claude. Then read `README.md`. Then read the doc you need.

---

## PROJECT IN ONE PARAGRAPH

Cubelings is a cozy creative voxel sandbox for Android, built by **dad + AB (age 10)** at 2 hrs/week, ~18 months to Phase 1 ship. Engine is **Godot 4.3 / GDScript**. No combat, no monsters, no strangers, no ads. Build, decorate, care for cube-creature pets, complete find-and-deliver quests. Teaching AB to code is the meta-goal.

---

## DOCS MAP — ALWAYS START HERE

| Doc | When to read it |
|---|---|
| [`README.md`](README.md) | Repo overview, tech stack, current status |
| [`docs/00_VISION.md`](docs/00_VISION.md) | What Cubelings is and is not |
| [`docs/01_ART_BIBLE.md`](docs/01_ART_BIBLE.md) | Visual identity (currently a placeholder — see file) |
| [`docs/02_GAME_DESIGN.md`](docs/02_GAME_DESIGN.md) | Phase 1 features, mechanics, scope |
| [`docs/03_ARCHITECTURE.md`](docs/03_ARCHITECTURE.md) | Engine, scene graph, data models, perf budgets |
| [`docs/04_ROADMAP.md`](docs/04_ROADMAP.md) | Phased plan, milestones, weekly cadence |
| [`docs/05_AB_JOURNAL.md`](docs/05_AB_JOURNAL.md) | AB's session journal — read for tone, do not edit |
| [`docs/06_DECISION_LOG.md`](docs/06_DECISION_LOG.md) | Every locked decision — **do not contradict** |
| [`assets/reference/`](assets/reference/) | Canon art (mascot reference image lives here) |
| [`assets/concept_art/`](assets/concept_art/) | AB's WIP drawings |

---

## HARD RULES — DO NOT VIOLATE

These are locked in `docs/06_DECISION_LOG.md`. Treat them as immutable in any code or content you generate:

1. **No combat. No monsters. No weapons.** The Builder Bench blocks weapon-shaped voxel creations.
2. **No strangers, no public chat, no social sharing.** Friends-only, Phase 3+, invite codes only.
3. **Pets never die.** Ever.
4. **No ads, no microtransactions, no loot boxes.** Optional one-time purchase is the only monetization considered (Phase 3+).
5. **No screenshot / photo mode in Phase 1.**
6. **No aging system.** (Removed.)
7. **Palette is locked:** `#1A1A1F` black / `#6A1B9A` royal purple / `#FFD60A` bright yellow / `#E91E63` pink / `#9575CD` lavender / `#FFC107` sunny BG.
8. **Mascot anatomy is canon.** All Cubelings derive from `assets/reference/cubelings_master_reference.jpg`: voxel cube body, gradient eyes, purple nose dots, yellow/purple accents.
9. **Performance floor:** must run ≥ 30 FPS on Fire HD Max 11. If it doesn't, it doesn't ship.
10. **Reading-optional UX.** Quests use icons + emoji; dyslexia-friendly font available.

If a request would violate any of the above, stop and ask before proceeding.

---

## TECH STACK SUMMARY

| Layer | Choice |
|---|---|
| Engine | Godot 4.3 |
| Language | GDScript |
| Voxel terrain | `zylann.voxel` plugin |
| Snapped furniture | Godot `GridMap` |
| Art | Kenney Voxel Pack + Quaternius (no custom 3D modeling Phase 1) |
| Save format | JSON via `FileAccess` (gzip if > 1MB) |
| Target | Android 10+ (arm64-v8a + armeabi-v7a) |
| CI | None in Phase 1 — manual APK export |

Full architecture: [`docs/03_ARCHITECTURE.md`](docs/03_ARCHITECTURE.md).

---

## REPO LAYOUT

```
cubelings_build/
├── README.md
├── CLAUDE.md                       ← you are here
├── LICENSE
├── .gitignore
├── docs/
│   ├── 00_VISION.md
│   ├── 01_ART_BIBLE.md             (placeholder — content missing)
│   ├── 02_GAME_DESIGN.md
│   ├── 03_ARCHITECTURE.md
│   ├── 04_ROADMAP.md
│   ├── 05_AB_JOURNAL.md
│   └── 06_DECISION_LOG.md
├── assets/
│   ├── reference/                  ← canon art (immutable)
│   └── concept_art/                ← AB's WIP drawings
├── scripts/                        (future — game source)
└── project.godot                   (future — Godot project file)
```

---

## WORKING STYLE WITH AB

- AB is 10. Sessions are 2 hours, weekly. Dad drives the keyboard; AB navigates.
- Default to **kid-readable code**: clear names, short functions, no premature abstractions, no clever one-liners.
- Default to **visible progress**: every session should produce something AB can see on her phone.
- When in doubt about scope, **cut**, don't add. The roadmap is law (`docs/04_ROADMAP.md`).
- Decisions get logged to `docs/06_DECISION_LOG.md`. Don't reopen settled decisions without an explicit reopen entry.

---

## BUILD / TEST COMMANDS

There is no source code yet (Phase 0). Commands will be added here once Godot project is initialized in Session 1.

Until then:
- Editor: open `project.godot` in Godot 4.3
- Mobile test: export APK, sideload to Fire HD Max 11
- No CI; no automated tests Phase 1
