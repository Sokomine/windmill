
minetest.register_node("windmill:windmill", {
	description = "Windmill rotors",
	drawtype = "signlike", --"signlike", --"signlike",
        visual_scale = 6.0,
	--tiles = {"default_torch_on_floor.png", "default_torch_on_ceiling.png", "default_torch.png"},
	tiles = {
		{name="windmill.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=1.0}},
	},
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

