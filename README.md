# Counter Strike: Global Offensive Settings

These are my personal settings and configuration for playing CS:GO with - they are not designed to suit everyone, so take and tweak what you need.

<!-- TOC -->

- [Counter Strike: Global Offensive Settings](#counter-strike-global-offensive-settings)
    - [Launch options](#launch-options)
    - [autoexec.cfg](#autoexeccfg)
    - [Radio commands](#radio-commands)
    - [Other utilities](#other-utilities)

<!-- /TOC -->

These settings are deliberately not enough for a complete setup - they don't affect anything that will be different on different hardware configurations, such as video settings, mouse sensitivity, etc. as they need to be tweaked system-to-system.

What this configuration does include, however, is keybind configurations, crosshair and radar preferences, and a slew of private server and administration utility commands.

## Launch options

From the Steam launcher, right click on CS:GO from your library and click "Properties". From here, you can click "Set launch options" to bring open a dialog box where you can input some text.

You can add any of the following options to the input box.

- `-novid` - Disables the Valve intro when loading the game
- `-nojoy` - Disables joystick controls, freeing up some unused memory
- `-tickrate 128` - Set local servers to run at 128 ticks instead of 64
- `+exec autoexec` - Load the `autoexec.cfg` configuration file (see below "autoexec.cfg" section)
- `-language -bananagaming` - Loads the "text color mod" (see "Other utilities" section)

## autoexec.cfg

Autoexec is a method of running files that contain custom Source Engine and CS:GO commands upon the game's launch. This allows for additional keys to be bound and commands to be created that can help perform complex tasks.

To set up the `autoexec.cfg` files in this repository, you can copy them or create a hard link to your CS:GO user profile setting directory, which usually belongs in `C:\Program Files (x86)\Steam\userdata\{steam_user_id}\730\local\cfg`

To create hard links for the configuration, execute the following commands from the current directory in an elevated command prompt.

```cmd
mklink /H "C:\Program Files (x86)\Steam\userdata\{steam_user_id}\730\local\cfg\autoexec.cfg" "autoexec.cfg"

mklink /H "C:\Program Files (x86)\Steam\userdata\{steam_user_id}\730\local\cfg\admin.cfg" "admin.cfg"

mklink /H "C:\Program Files (x86)\Steam\userdata\{steam_user_id}\730\local\cfg\binds.cfg" "binds.cfg"

mklink /H "C:\Program Files (x86)\Steam\userdata\{steam_user_id}\730\local\cfg\cheats.cfg" "cheats.cfg"

mklink /H "C:\Program Files (x86)\Steam\userdata\{steam_user_id}\730\local\cfg\crosshair.cfg" "crosshair.cfg"

mklink /H "C:\Program Files (x86)\Steam\userdata\{steam_user_id}\730\local\cfg\defaults.cfg" "defaults.cfg"

mklink /H "C:\Program Files (x86)\Steam\userdata\{steam_user_id}\730\local\cfg\spawn.cfg" "spawn.cfg"

mklink /H "C:\Program Files (x86)\Steam\userdata\{steam_user_id}\730\local\cfg\utilities.cfg" "utilities.cfg"

mklink /H "C:\Program Files (x86)\Steam\userdata\{steam_user_id}\730\local\cfg\viewmodel.cfg" "viewmodel.cfg"
```

*Note: Windows can not create links to places on two different drives, so if this repository and CS:GO are installed to different drives, consider just copying the files from one place to the other.*

## Radio commands

The three radio command menus that are included by default mostly go unused - only a few are used for team communication and commanding bots.

The radio commands included here are based off of the [Improved Radio Mod](https://bananagaming.tv/improvedradiomod) with some minor tweaks. They change the radio menus so one is used for controlling bots in offline games, another for toggling various cheats and settings, and leaves the last for enhanced communication.

To install, copy or symlink the `radiopanel.txt` file to your `csgo\resource\ui` directory.

```cmd
mklink /H "C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\resource\ui\radiopanel.txt" "radiopanel.txt"
```

## Other utilities

There are some other useful utilities that can be installed to enhance the gameplay experience:

- Banana Gaming's [Text Color Mod](https://bananagaming.tv/textcolormod)
- [Vibrance GUI](https://vibrancegui.com/)
- [Simple Radar](http://simpleradar.com/)
- [Source Live Audio Mixer](http://slam.flankers.net/)
