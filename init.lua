
minetest.register_node("windmill:windmill", {
	description = "Windmill rotors (clockwise)",
	drawtype = "signlike", 
        visual_scale = 6.0,
	tiles = {
		{name="windmill.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=1.0}},
	},
	inventory_image = "windmill_inv.png",
	wield_image     = "windmill_inv.png",
	wield_scale = {x=1, y=1, z=1},
--	inventory_image = "default_torch_on_floor.png",
--	wield_image = "default_torch_on_floor.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	light_source = 1, -- reflecting a bit of light might be expected
	selection_box = {
		type = "wallmounted",
--		wall_top =    {-0.1,  0.5-2.6, -0.1, 0.1, 0.5, 0.1},
--		wall_bottom = {-0.1, -0.5, -0.1, 0.1, -0.5+2.6, 0.1},
		wall_side   = {-0.4, -2.5, -2.5, -0.2, 2.5, 2.5},
	},
	groups = {choppy=2,dig_immediate=3,attached_node=1},
	legacy_wallmounted = true,

})


-- this one rotates in the opposite direction than the first one
minetest.register_node("windmill:windmill_reverse", {
	description = "Windmill rotors (counterclockwise)",
	drawtype = "signlike",
        visual_scale = 6.0,
	tiles = {
		{name="windmill_reverse.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=1.0}},
	},
	inventory_image = "windmill_inv.png",
	wield_image     = "windmill_inv.png",
	wield_scale = {x=1, y=1, z=1},
--	inventory_image = "default_torch_on_floor.png",
--	wield_image = "default_torch_on_floor.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	light_source = 1, -- reflecting a bit of light might be expected
	selection_box = {
		type = "wallmounted",
--		wall_top =    {-0.1,  0.5-2.6, -0.1, 0.1, 0.5, 0.1},
--		wall_bottom = {-0.1, -0.5, -0.1, 0.1, -0.5+2.6, 0.1},
		wall_side   = {-0.4, -2.5, -2.5, -0.2, 2.5, 2.5},
	},
	groups = {choppy=2,dig_immediate=3,attached_node=1},
	legacy_wallmounted = true,

})


minetest.register_node("windmill:windmill_sails", {
	description = "Windmill sails (clockwise)",
	drawtype = "signlike", 
        visual_scale = 6.0,
	tiles = {
		{name="windmill_wooden_ccw_with_sails.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=1.0}},
	},
	inventory_image = "windmill_wooden_inv.png",
	wield_image     = "windmill_wooden_inv.png",
	wield_scale = {x=1, y=1, z=1},
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		wall_side   = {-0.4, -2.5, -2.5, -0.2, 2.5, 2.5},
	},
	groups = {choppy=2,dig_immediate=3,attached_node=1},
	legacy_wallmounted = true,
})


-- this one rotates in the opposite direction than the first one
minetest.register_node("windmill:windmill_sails_reverse", {
	description = "Windmill sails (counterclockwise)",
	drawtype = "signlike",
        visual_scale = 6.0,
	tiles = {
		{name="windmill_wooden_ccw_with_sails.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=1.0}},
	},
	inventory_image = "windmill_wooden_inv.png",
	wield_image     = "windmill_wooden_inv.png",
	wield_scale = {x=1, y=1, z=1},
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
		wall_side   = {-0.4, -2.5, -2.5, -0.2, 2.5, 2.5},
	},
	groups = {choppy=2,dig_immediate=3,attached_node=1},
	legacy_wallmounted = true,
})



minetest.register_node("windmill:axis", {
	description = "Axis for mounting windmills",
	drawtype = "nodebox",
	tiles = {"default_wood.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	groups = {choppy=2,dig_immediate=3},
	node_box = {
		type = "fixed",
		fixed = {{-0.25, -0.5, -0.25, 0.25, 0.4, 0.25},
			 {-0.1,-0.1,-0.5,0.1,0.1,0.5}},
	},
	selection_box = {
		type = "fixed",
		fixed = {{-0.25, -0.5, -0.25, 0.25, 0.4, 0.25},
			 {-0.1,-0.1,-0.5,0.1,0.1,0.5}},
	},
})


minetest.register_craft({
        output = "windmill:windmill",
        recipe = {
                {"default:steel_ingot", "",                    "default:steel_ingot", },
                {"",                    "default:stick",       "",                    },
                {"default:steel_ingot", "",                    "default:steel_ingot"  },
        }
})

minetest.register_craft({
        output = "windmill:windmill",
        recipe = {{ "windmill:windmill_reverse" }},
})

minetest.register_craft({
        output = "windmill:windmill_reverse",
        recipe = {{ "windmill:windmill" }},
})

minetest.register_craft({
        output = "windmill:windmill_sails",
        recipe = {
                {"wool:white",          "",                    "wool:white",          },
                {"",                    "default:stick",       "",                    },
                {"wool:white",          "",                    "wool:white",          },
        }
})

minetest.register_craft({
        output = "windmill:windmill_sails",
        recipe = {{ "windmill:windmill_sails_reverse" }},
})

minetest.register_craft({
        output = "windmill:windmill_sails_reverse",
        recipe = {{ "windmill:windmill_sails" }},
})

minetest.register_craft({
        output = "windmill:axis",
        recipe = {
                {"default:steel_ingot", "default:stick",       "default:steel_ingot" },
        }
})
