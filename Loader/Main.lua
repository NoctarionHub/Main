-- ============================================
-- LOADER HYBRID - Simple tapi Modular
-- ============================================

local BASE_URL = "https://raw.githubusercontent.com/username/repo-name/main/"

local Games = {
    [83569851223739] = {
        name = "+1 Speed Evolve",
        main = "games/blox-fruits/main.lua",
    },
}

local GameID = game.PlaceId
local config = Games[GameID]

if not config then
    game.Players.LocalPlayer:Kick("Game not supported yet!")
    return
end

print("🚀 Loading: " .. config.name)

-- Load main
loadstring(game:HttpGet(BASE_URL .. config.main))()
