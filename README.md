# paleo-colorsoft
> optimizing a 6th gen fire 8 relic into a desaturated e-ink wannabe reading device

## 🔬 overview
this repository contains the "stratigraphic" setup for reclaiming 2016-era amazon hardware. the goal is a distraction-free, non-emissive environment for drafting notes, reading magazines, and markups of academic papers

## 🛠 the exorcism (setup)
to strip the commercial sediment and inject the "paleo" profile, connect via adb and run:

`sh scripts/setup.sh`

### the desaturated color recipe
to achieve the colorsoft look, use cf.lumen (v3.70) with these custom r/g/b values:
* **red:** 0.85
* **green:** 0.90
* **blue:** 0.80
* **brightness:** 85%

## 📂 repository structure
* `scripts/`: adb commands for bloatware removal and app injection
* `assets/`: ui captures
* `docs/`: legacy apk versions for fire os 5

## 📖 the research suite
* **interface:** nova launcher (5.0.1) + whicons (legacy)
* **reading:** libby (6.4.0) + foxit pdf lite (3.8.0)
* **writing:** squid (3.4.10) for precision vector handwriting
* **aesthetic:** preloaded fire tablet background


## ⚖️ license
mit. do what you want with this relic, just don't sue me if it catches fire.
