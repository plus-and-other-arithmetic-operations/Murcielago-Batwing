# Murcielago-Batwing

Pro-bono project made for Spearmint's Murcielago mod.

## Setup 

Bind the vent animation to extra D:

```ini
[EXTRA_SWITCHES]
(...)
SWITCH_D = Bat wing air intake
```

```ini
;bat wing intakes
[ANIMATION_...]
FILE=bat_wing.ksanim
INPUT=EXTRA_D
INPUT_LAG_UP = 0.67
INPUT_LAG_DOWN = 0.67
TIME = 5
```

Add the following entry into the car's ext_config:

```ini
[SCRIPT_...]
ACTIVE = $" read('csp/version', 0) >= 1819 " ;if CSP is 1.76+
SCRIPT = vents.lua
```
