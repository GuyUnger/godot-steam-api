# Godot-Steam-API 💨
**Godot Steam integration using GDNative.**

# Getting Started
Enable the plugin in the Project Settings and follow the instructions to import Steam SDK files
Make sure steam is running

Now you can use the following functions to manage Steam Achievements:
``` python
Steam.set_achievement(name:String)
Steam.get_achievement(name:String)
Steam.clear_achievement(name:String)
```