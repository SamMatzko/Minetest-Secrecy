-- one-way glass
local oneway_glass = {
    {"cobblestone", "Cobblestone", "default_cobble.png"},
    {"desert_sandstone", "Desert Sandstone", "default_desert_sandstone.png"},
    {"desert_standstone_block", "Desert Sandstone Block", "default_desert_sandstone_block.png"},
    {"desert_sandstone_brick", "Desert Sandstone Brick", "default_desert_sandstone_brick.png"},
    {"desert_stone", "Desert Stone", "default_desert_stone.png"},
    {"desert_stone_block", "Desert Stone Block", "default_desert_stone_block.png"},
    {"desert_stone_brick", "Desert Stone Brick", "default_desert_stone_brick.png"},
    {"mossy_cobblestone", "Mossy Cobblestone", "default_mossycobble.png"},
    {"sandstone", "Sandstone", "default_sandstone.png"},
    {"sandstone_block", "Sandstone Block", "default_sandstone_block.png"},
    {"sandstone_brick", "Sandstone Brick", "default_sandstone_brick.png"},
    {"silver_sandstone", "Silver Sandstone", "default_silver_sandstone.png"},
    {"silver_sandstone_block", "Silver Sandstone Block", "default_silver_sandstone_block.png"},
    {"stone", "Stone", "default_stone.png"},
    {"stone_block", "Stone Block", "default_stone_block.png"},
    {"stone_brick", "Stone Brick", "default_stone_brick.png"},
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