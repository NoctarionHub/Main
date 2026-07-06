-- ============================================
-- Ngapain Bang
-- ============================================

local BASE_URL = "https://raw.githubusercontent.com/NoctarionHub/Main/refs/heads/main/"

local Games = {
    [83569851223739] = {
        name = "+1 Speed Evolve",
        main = "Games/1-speed-evo/main.lua",
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
