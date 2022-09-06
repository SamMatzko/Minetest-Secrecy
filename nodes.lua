-- one-way glass
local oneway_glass = {
    {"cobblestone", "Cobblestone", "default_cobble.png"},
    {"mossy_cobblestone", "Mossy Cobblestone", "default_mossycobble.png"},
    {"stone", "Stone", "default_stone.png"},
    {"stone_block", "Stone Block", "default_stone_block.png"},
}

for i in ipairs(oneway_glass) do
    local name = oneway_glass[i][1]
	local description = oneway_glass[i][2]
	local image1 = oneway_glass[i][3]

    minetest.register_node("secrecy:oneway_glass_"..name, {
		description = description.." One-Way Glass",
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
			},
		},
		groups = {cracky = 3},
		tiles = {"oneway_glass_face.png", -- up
				 "oneway_glass_face.png", -- down
				 "oneway_glass_face.png", -- right
				 "oneway_glass_face.png", -- left
				 "oneway_glass_back_face.png", -- back
				 image1, -- front
				 },
		is_ground_content = false,
		sunlight_propagates = true,
	})
end