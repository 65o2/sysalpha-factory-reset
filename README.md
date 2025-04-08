# System Alpha Factory Reset

#### MC6800 Code to perform factory reset on System Alpha Virtual Machines

System Alpha is a virtual machine and driver board for Williams pinball machines from 1977-1983.
For more information see https://www.tindie.com/products/t1lt/system-alpha-fix-your-1977-83-williams-pinball

This software is run when it is desired to return the System Alpha board to factory settings, i.e. before changing the game software to an new version.

## Build Instructions

### Tools required
From Cygwin or apt-get, install the following:
* `gcc`
* `make`
* `obj-copy`

### 6800 Assembler
* 6800 Assembler originally forked from https://github.com/JimInCA/motorola-6800-assembler
* This is a submodule, update it with `git submodule update --init`
* Follow the build instructions there, but basically just `make` from the `motorola-6800-assembler` folder

### main.s68
* Once the assembler is built, perform a top-level `make`
* This will build files `ic14.532`, `ic17.532`, and `ic20.532`

## Instructions for Use
* Switch power to your game off
* Copy the `ic14.532`, `ic17.532`, and `ic20.532` files to your System Alpha over USB
* Press the button on the board to download the files
* Unplug USB and turn on the machine to run the program.  The LEDs on the board should light, but the machine should be off with nothing running.
* Turn off the power and wait 3 seconds for the Factory Reset to be saved to flash
* Turn off the game, plug in USB, and load your game's usual ROM files as per usual
* Unplug USB, turn the game back on
* The game should be factory reset and should load to "Adjustments Mode"
* Power cycle the game on more time to complete the factory reset and enter normal game mode.

