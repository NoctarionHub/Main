--
local Games = {
    speed_evo = {
        ids = {
            83569851223739,
            107654875426558,
            140128707775918,
            140544451091543,
        },
        url = "https://nhmain.vercel.app/Games/speed_evo/main.lua"
    },
    throw_coin = {
        ids = {
            115681808123944,
            72042130041700,
            100875131717601,
            81335362752013, 
            115468445635568,
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
    chick_farm = {
        ids = {
            137233438285284,
        },
        url = "https://nhmain.vercel.app/Games/chick_farm/main.lua"
    },
    butterfly_lgnd = {
        ids = {
            102050885098531,
        },
        url = "https://nhmain.vercel.app/Games/butterfly_lgnd/main.lua"
    },
    watch_money = {
        ids = {
            74665037604179,
        },
        url = "https://nhmain.vercel.app/Games/watch_money/main.lua"
    },
    anime_capture = {
        ids = {
            94717504417144,
        },
        url = "https://nhmain.vercel.app/Games/anime_capture/main.lua"
    },
    fish_junk = {
        ids = {
            132010220154773,
            74347901984127,
            107424566725243,
        },
        url = "https://nhmain.vercel.app/Games/fish_junk/main.lua"
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
