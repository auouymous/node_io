Minetest Node-IO Mod
==========

This mod attempts to provide a single API for transfer mods (hoppers and pipeworks) to access inventory nodes (chests and furnaces).
Any inventory node that supports the API will work with any transfer mod that also supports the API.
It provides many utility functions for inventory nodes to implement the API and for transfer mods to access them.
Inventory nodes that lack standard inventories can also use the API to work with transfer mods.
The API currently supports item and liquid inventory nodes, but could be extended to support anything that can be transfered between nodes (signals, power, ...).

This mod is a pure API and should never add any nodes or items.

This mod implements node-io support for default chest, locked chest and furnace.
But if the pipeworks mod is installed, the furnace loses support due to being redefined by pipeworks.
Adding `pipeworks?` to ~/.minetest/mods/node_io/depends.txt will fix the issue until pipeworks adds node_io support.

See the `API` file if implementing Node-IO for inventory or transfer nodes.
The [test_io](https://github.com/auouymous/test_io) mod contains item and liquid transfer nodes to test the node_io mod.



Links
==========

[Download](https://github.com/auouymous/node_io/archive/master.zip)

[Forum Post](https://forum.minetest.net/viewtopic.php?t=20624)
