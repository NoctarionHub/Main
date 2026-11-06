--
local Games = {
    speed_evo = {
        ids = {
            83569851223739,
            107654875426558,
            140128707775918,
            140544451091543,
            139473336308623,
            112667591128641,
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
            79341539934468,
            94105311699561,
            73917774063237,
        },
        url = "https://nhmain.vercel.app/Games/throw_coin/main.lua"
    },
    lucky_dumplings = {
        ids = {
            90784570995507,
        },
        url = "https://nhmain.vercel.app/Games/lucky_dumplings/main.lua"
    },
    chick_farm = {
        ids = {
            137233438285284,
        },
        url = "https://nhmain.vercel.app/Games/chick_farm/main.lua"
    },
    stone_skip = {
        ids = {
            111543903102439,
        },
        url = "https://nhmain.vercel.app/Games/stone_skip/main.lua"
    },
    food_animal = {
        ids = {
            120219252362013,
        },
        url = "https://nhmain.vercel.app/Games/food_animal/main.lua"
    },
}

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
