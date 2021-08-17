# Godot Steam API💨
__Godot Steam integration__ using __GDNative__. Currently only supports achievements.

## Getting Started
1. After importing the plugin, enable it in `Project Settings > Plugins`
2. Project Settings will now have a __SteamAPI tab__, follow the instructions to import the Steam SDK files

*Make sure Steam is running*

Now you can use the following functions to manage Steam achievements:
``` python
Steam.set_achievement(name)
Steam.get_achievement(name)
Steam.clear_achievement(name)
```
