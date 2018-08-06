-- add support for default mod

if minetest.get_modpath("default") then
	print("[Node IO] default support enabled")

	-- chest
	node_io.init_main_inventory("default:chest", true)
	node_io.init_main_inventory("default:chest_open", true)
	-- locked chest
	node_io.init_main_inventory("default:chest_locked", false)
	node_io.init_main_inventory("default:chest_locked_open", false)

	local function init_furnace(node_name)
		local def = {}

		def.node_io_can_put_item = function(pos, node, side) return true end
		def.node_io_room_for_item = function(pos, node, side, itemstack)
			local inv = minetest.get_meta(pos):get_inventory()
			if not inv then return false end
			local inv_name
			if side == "U" then inv_name = "src" elseif side == "D" then inv_name = "dst" else inv_name = "fuel" end
			return inv:room_for_item(inv_name, itemstack)
		end
		def.node_io_put_item = function(pos, node, side, what, itemstack)
			local inv_name
			if side == "U" then inv_name = "src" elseif side == "D" then inv_name = "dst" else inv_name = "fuel" end
			return node_io.put_item_in_inventory(pos, node, inv_name, what, itemstack)
		end

		def.node_io_can_take_item = function(pos, node, side) return true end
		def.node_io_get_item_size = function(pos, node, side)
			local inv_name
			if side == "U" then inv_name = "src" elseif side == "D" then inv_name = "dst" else inv_name = "fuel" end
			return node_io.get_inventory_size(pos, inv_name)
		end
		def.node_io_get_item_name = function(pos, node, side, index)
			local inv_name
			if side == "U" then inv_name = "src" elseif side == "D" then inv_name = "dst" else inv_name = "fuel" end
			return node_io.get_inventory_name(pos, inv_name, index)
		end
		def.node_io_take_item = function(pos, node, side, what, want_item, want_count)
			local inv_name
			if side == "U" then inv_name = "src" elseif side == "D" then inv_name = "dst" else inv_name = "fuel" end
			return node_io.take_item_from_inventory(pos, node, inv_name, what, want_item, want_count)
		end

		minetest.override_item(node_name, def)
	end
	-- furnace
	init_furnace("default:furnace")
	init_furnace("default:furnace_active")
end
