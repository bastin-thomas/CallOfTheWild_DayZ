What Is This?

This mod adds the ability to harvest firewood from static wood piles and reserves.

You can harvest firewood with your hands, but it takes longer and has the chance to cut you if you're not wearing gloves.

Using a tool like an axe or hatchet is much faster, doesn't have a chance to cut you, but will damage your tool over time.

Wood piles have a limited supply that can be configured by server owners. Once that supply is exhausted, the wood pile cannot be harvested anymore.

How It Works (For Server Owners):

The mod spawns invisible objects on every wood pile on the map based on the objects you define in the json config. 

By default the mod will automatically detect the static object types that contain these words in their classname: _woodreserve, _woodpile_forest, _woodpile1, _woodpile2

When you run your server for the first time after installing the mod, the mod will take some time to automatically detect all the wood piles and save them to the json config located in profiles/Zenarchist/ZenFirewoodConfig.json.

Depending on the map and how many wood piles are on it, I recommend waiting at least a couple of minutes for the json config to update. Once it has updated, you may want to restart your server one more time as the server seems to lag out for a while after detecting all the objects initially.

Once the mod has analyzed the map and detected all the firewood piles it will save their locations to the json config and the next restart will not lag out at all. Set DebugOn to 1 in the json config to see the firewood objects visually - by default they spawn invisible, but changing this to 1 will spawn them in as red rectangles so you can confirm they are working.

It works with the vanilla static objects and any bldr_ objects placed with the DayZ Editor or spawned in with the json/init.c/etc methods.

This means you can place fire wood piles out on the ice on Namalsk for example, and you can create fires out of wood piles at military bases etc.

The technique used in this mod to automatically detect static objects can be used to detect and interact with almost any other object in the game, such as creating dynamic street lighting (a separate mod I will release in the future).

So check out the source code if you're wanting to add dynamic interactions to other static objects other than fire wood piles.

Installation Instructions:

Install this mod like any other mod - copy it into your server folder and add it to your mods list. Make sure to copy the .bikey into your server keys. There is no types file.

Repack & Source Code:

You can repack this mod if you like, and do anything else you want with it for that matter. The source code is on my GitHub at www.zenarchist.io

Enjoy!