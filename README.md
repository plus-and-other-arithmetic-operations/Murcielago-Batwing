# Murcielago-Batwing

Pro-bono project made for Spearmint's Murciélago mod.

## System breakdown

https://github.com/plus-and-other-arithmetic-operations/Murcielago-Batwing/assets/88043761/2a618c54-bc4e-4e74-b9c1-3f173e70708d

The Murciélago has an automatic vent duct system, which involves sensors and control systems that monitor various parameters such as engine temperature, vehicle speed, and aerodynamic conditions. 

Based on these inputs, the system adjusts the opening and closing of vents to optimize airflow and cooling for the engine and other critical components.

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
