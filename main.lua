SMODS.Atlas({
    key = "modicon", 
    path = "ModIcon.png", 
    px = 34,
    py = 34,
    atlas_table = "ASSET_ATLAS"
})

SMODS.Atlas({
    key = "balatro", 
    path = "balatro.png", 
    px = 333,
    py = 216,
    prefix_config = { key = false },
    atlas_table = "ASSET_ATLAS"
})


SMODS.Atlas({
    key = "CustomJokers", 
    path = "CustomJokers.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
})

assert(SMODS.load_file("src/jokers.lua"))()
assert(SMODS.load_file("src/sounds.lua"))()