-- ============================================
-- Ngapain Bang
-- ============================================

local list_content = game:HttpGet("https://nhmain.vercel.app/Loader/list.lua")

if not list_content then
    return 
end

local success, Games = pcall(function()
    return loadstring(list_content)()
end)

if not success or type(Games) ~= "table" then
    return 
end


local currentPlaceId = game.PlaceId
local foundUrl = nil
local foundName = nil


for gameName, gameData in pairs(Games) do
    for _, id in ipairs(gameData.ids) do
        if id == currentPlaceId then
            foundUrl = gameData.url
            foundName = gameName
            break
        end
    end
    if foundUrl then break end
end

if foundUrl then
    loadstring(game:HttpGet(foundUrl))()
else
    game.Players.LocalPlayer:Kick("❌ Game Not Supported Yet!")
end
