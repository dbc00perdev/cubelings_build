# 04_ROADMAP.md

## OVERVIEW

**Phase 1 target:** ~18 months, 2 hrs/week
**Approach:** ship visible progress every session, AB co-designs each phase

---

## PHASE 0 — SETUP (MONTH 1)

**Goal:** Tools installed, repo live, AB hyped

| Session | Goal |
|---|---|
| 1 | Install Godot 4.3, create project, place a purple cube |
| 2 | Set up GitHub repo, first commit, AB sees her code on the web |
| 3 | Tour Godot editor, AB designs a "fake screenshot" of dream feature |
| 4 | Install Kenney Voxel Pack, drag a chair into scene |

**Deliverable:** Project runs, repo lives, AB has a journal with 4 entries.

---

## PHASE 1A — WALK AROUND (MONTHS 2-3)

**Goal:** AB can walk her character through an empty world

| Milestone | Notes |
|---|---|
| Empty grass world (16x16 voxel) | Flat, no terrain gen |
| Character (Kenney mini) | No customization yet, just "a Cubeling" |
| Touch joystick movement | Virtual joystick on left thumb |
| Camera follows player | Third-person |
| Day/night cycle | Sun rotates, skybox shifts |
| Export to APK | Sideload on Fire HD Max 11 |

**Deliverable:** AB walks her character around on her phone.

---

## PHASE 1B — PLACE THINGS (MONTHS 4-6)

**Goal:** AB taps to place furniture in the world

| Milestone | Notes |
|---|---|
| GridMap integration | 1-cell snap |
| Inventory UI (drawer) | Bottom of screen, scrollable |
| 5 starter furniture items | Chair, table, bed, lamp, rug |
| Tap-to-place | Ghost preview before commit |
| Long-press to delete | Confirm dialog |
| Color swap on placed items | Palette wheel |

**Deliverable:** AB decorates a flat plot with 5 items, recolors them.

---

## PHASE 1C — BUILD HOUSES (MONTHS 7-9)

**Goal:** 3-step house wizard works

| Milestone | Notes |
|---|---|
| House wizard UI | 3 screens: size → block → color |
| Voxel walls auto-build | 4 walls + floor + ceiling |
| Door + window placement | Auto-positioned |
| Multi-room stacking | Tap wall → "add room" |
| Enter/exit house | Camera adjusts indoors |
| 30 furniture items | Scale up library |
| Indoor vs outdoor categorization | Tabs in inventory |

**Deliverable:** AB builds a 3-room cottage with full interior decoration.

---

## PHASE 1D — PETS (MONTHS 10-12)

**Goal:** Cat + dog Cubelings live in AB's world

| Milestone | Notes |
|---|---|
| Cat Cubeling model + animations | Idle, walk, sit, eat |
| Dog Cubeling model + animations | Idle, walk, sit, eat |
| Follow behavior | NavigationAgent3D in Godot |
| Pet menu (tap pet) | Feed, pet, play, dismiss |
| Mood meter | Hungry / happy / sleepy |
| Pets sit on furniture | Detect chair/bed proximity |
| Mascot Cubeling | Permanent companion, intro cutscene |

**Deliverable:** AB has a cat AND dog AND mascot following her, all interactable.

---

## PHASE 1E — POLISH & SYSTEMS (MONTHS 13-15)

**Goal:** Real game feel — character creator, save, music, NPCs

| Milestone | Notes |
|---|---|
| Character creator UI | Hair, skin, outfit, eye gradient |
| Multiple save slots | 3 slots, each its own world |
| Save/load JSON | Auto-save every 60s |
| Custom music import | Scan device folder |
| 3 NPC Cubelings | Mailbox, shopkeeper, wanderer |
| 5 starter quests | Find-and-deliver style |
| Quest journal UI | Top-right button |
| Sound effects pass | Pops, chimes, pet sounds |

**Deliverable:** AB starts a new save, designs character, gets a quest, completes it.

---

## PHASE 1F — SHIP (MONTHS 16-18)

**Goal:** APK installs on AB's phone, she shows friends

| Milestone | Notes |
|---|---|
| Performance audit | Hit 30 FPS on Fire HD Max 11 |
| Bug bash | Dad + AB play 1 hr daily for a week, log bugs |
| Final art pass | Recolor any off-palette assets |
| Tutorial flow | First-run guides AB-style player |
| Launch screen | Mascot Cubeling waves |
| Sideload package | APK + install instructions for friends |
| `v1.0-phase1` Git tag | Lock the milestone |

**Deliverable:** Cubelings v1.0 installed on AB's phone and 3 friends' phones.

---

## PHASE 2 — EXPANSION (MONTHS 19-30)

**After Phase 1 ships, optional next features:**

- More biomes (beach, snow, candy land)
- Farming system
- Day jobs (shop running, deliveries)
- More pets (bunny, fox, bird)
- Friends multiplayer (invite code, visit world)
- Builder Bench advanced (custom voxel objects)
- Aging system (if AB still wants it)

**No Phase 2 commitment yet.** AB decides if she wants to continue at end of Phase 1.

---

## PHASE 3 — PUBLIC RELEASE (TBD)

If Phase 2 ships and AB wants public:
- Google Play Store ($25 dev fee)
- Marketing (her social if she wants)
- Optional one-time purchase model
- **Hard rule still: no ads, no microtransactions**

---

## WEEKLY CADENCE

- **Day:** Saturday or Sunday
- **Time:** 2 hours
- **Format:**
  - 10 min — recap + journal review
  - 20 min — today's concept (whiteboard)
  - 60 min — build it together (dad drives, AB navigates)
  - 20 min — test on phone, find bugs
  - 10 min — journal + plan next session

---

## TRACKING PROGRESS

- Each session: AB writes journal entry in `docs/05_AB_JOURNAL.md`
- Each phase end: dad updates `docs/06_DECISION_LOG.md`
- Each milestone: Git tag + screenshot in `assets/progress/`
- Each month: dad + AB review roadmap, adjust if needed

---

## RISK REGISTER

| Risk | Mitigation |
|---|---|
| AB loses interest | Ship visible progress every session, let her drive features |
| Dad burns out | 2 hrs/week is a ceiling, not a floor — skip weeks freely |
| Godot learning curve | Tutorials + Claude pair-coding |
| Performance on baseline device | Test weekly, scope cuts if needed |
| Scope creep | This roadmap is law, changes go to decision log |
| AB outgrows it | If she wants harder coding, pivot — that's a win |
