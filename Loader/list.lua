--
local Games = {
    speed_evo = {
        ids = {
            83569851223739,
            107654875426558,
            140544451091543,
        },
        url = "https://nhmain.vercel.app/Games/speed_evo/main.lua"
    },
    throw_coin = {
        ids = {
            115681808123944,
            72042130041700,
        },
        url = "https://nhmain.vercel.app/Games/throw_coin/main.lua"
    },
    lucky_dumplings = {
        ids = {
            90784570995507,
        },
        url = "https://nhmain.vercel.app/Games/lucky_dumplings/main.lua"
    },
    anime_univ = {
        ids = {
            95992966043247,
        },
        url = "https://nhmain.vercel.app/Games/anime_univ/main.lua"
    },
}

-- Fungsi lookup otomatis
local function getGameURL(placeId)
    for gameName, gameData in pairs(Games) do
        for _, id in ipairs(gameData.ids) do
            if id == placeId then
                return gameData.url, gameName
            end
        end
    end
    return nil, nil
end

return Games
