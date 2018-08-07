Minetest Node-IO Mod
==========

This mod attempts to provide a single API for transfer mods (hoppers and pipeworks) to access inventory nodes (chests and furnaces).
Any inventory node that supports the API will work with any transfer mod that also supports the API.
It provides many utility functions for inventory nodes to implement the API and for transfer mods to access them.
Inventory nodes that lack standard inventories can also use the API to work with transfer mods.
The API currently supports item and liquid inventory nodes, but could be extended to support anything that can be transfered between nodes (signals, power, ...).

This mod implements node-io support for default chest, locked chest and furnace.
But if the pipeworks mod is installed, the furnace loses support due to being redefined by pipeworks.



Links
==========

[Download](https://github.com/auouymous/node_io/archive/master.zip)

[Forum Post](https://forum.minetest.net/viewtopic.php?f=9&t=20624)
