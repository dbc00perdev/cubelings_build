# 🟣🟡⬛ CUBELINGS

> *Tiny worlds, tiny pals, tiny you.*

A cozy creative voxel sandbox for Android — built by **dad + AB** (age 10), one weekend at a time.

---

## WHAT IS CUBELINGS

A blocky 3D world-builder where every creature, character, and pet is a **Cubeling** — a small cube being with gradient eyes and a purple nose. Players design houses (interior + exterior), decorate with snap-in furniture, care for cat & dog Cubelings, complete item-finding quests, and live a calm creative life.

**Not Minecraft.** No combat. No monsters. No strangers. Just decoration, quests, pets, and friends.

---

## CORE PILLARS

1. **Cozy** — calm, no danger, no time pressure
2. **Creative** — building & decorating is the main loop
3. **Cube** — every visible thing is built from cubes
4. **Companion** — pets and NPCs that feel alive
5. **Co-built** — AB co-designs every feature

---

## TARGET PLATFORM

- **Primary:** Android (Fire HD Max 11 baseline → Pixel 9 Pro / Galaxy S24 ceiling)
- **Phase 1 install:** sideloaded APK
- **Phase 3+:** Google Play Store

---

## TECH STACK

| Layer | Tool |
|---|---|
| Engine | Godot 4.3 |
| Language | GDScript |
| Voxel terrain | `zylann.voxel` plugin |
| Snapped furniture | Godot GridMap node |
| Art assets | Kenney Voxel Pack + Quaternius (free, low-poly) |
| Source control | Git + GitHub |
| AI pair-coding | Claude (vibe-code sessions) |

---

## TIMELINE

**~18 months to Phase 1 ship**, at 2 hrs/week. Slow IS the point. AB is learning to code.

See [`docs/ROADMAP.md`](docs/ROADMAP.md).

---

## REPO STRUCTURE

```
cubelings/
├── README.md                  ← you are here
├── CLAUDE.md                  ← AI session bootstrap (read this first if vibe-coding)
├── LICENSE                    ← TBD (MIT for code, CC-BY for art TBD)
├── .gitignore                 ← Godot + IDE ignores
├── docs/
│   ├── 00_VISION.md           ← what & why
│   ├── 01_ART_BIBLE.md        ← visual identity, palette, mascot canon
│   ├── 02_GAME_DESIGN.md      ← features, mechanics, scope
│   ├── 03_ARCHITECTURE.md     ← engine choices, data structures
│   ├── 04_ROADMAP.md          ← 18-month phased plan
│   ├── 05_AB_JOURNAL.md       ← AB's notes, drawings, decisions
│   └── 06_DECISION_LOG.md     ← every locked decision + why
├── assets/
│   ├── reference/             ← mood boards, mascot canon image
│   └── concept_art/           ← AB's drawings (scanned)
├── scripts/                   ← (future) game source code
└── project.godot              ← (future) Godot project file
```

---

## CURRENT STATUS

**Phase 0: Pre-production**
- ✅ Concept locked
- ✅ Art bible locked
- ✅ Stack chosen
- ✅ Mascot designed (see `assets/reference/`)
- ⏳ Godot install (Session 1)
- ⏳ First playable prototype (Month 2-3)

---

## CONTRIBUTORS

- **Dad** — code, architecture, teaching
- **AB** — design, art direction, quest ideas, lead Cubeling

---

## LICENSE

TBD before public push. Likely MIT (code) + CC-BY-NC (assets).
