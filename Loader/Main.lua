-- ============================================
-- Ngapain Bang
-- ============================================

local GAME_URL = "https://nhmain.vercel.app/Loader/list.lua"

local list_content = game:HttpGet(GAME_URL)

if not list_content then
    game.Players.LocalPlayer:Kick("❌ Failed try again!")
    return
end

local success, Games = pcall(function()
    return loadstring(list_content)()
end)

if not success or type(Games) ~= "table" then
    game.Players.LocalPlayer:Kick("❌ Report To Noctarion!")
    return
end

local GameID = game.PlaceId
local found = false

for PlaceID, ScriptURL in pairs(Games) do
    if tonumber(PlaceID) == GameID then
        found = true
        loadstring(game:HttpGet(ScriptURL))()
        break
    end
end

if not found then
    game.Players.LocalPlayer:Kick("❌ Game not supported yet!")
end
