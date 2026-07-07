-- ============================================
-- Ngapain Bang
-- ============================================

local BASE_URL = "https://nhmain.vercel.app/"

local Games = {
    [83569851223739] = {
        name = "+1 Speed Evolve",
        main = "Games/speed_evo/main.lua",
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
