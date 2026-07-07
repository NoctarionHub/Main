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

for PlaceID, Execute in pairs(Games) do
    if tonumber(PlaceID) == game.PlaceId then
        loadstring(game:HttpGet(Execute))()
        break 
    end
end
