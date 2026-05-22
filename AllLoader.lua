local a = {
    ["Dig To Escape 1"] = {
        73510530738011,
        92122513197996
    },
    ["Color Or Die 2"] = {
        12931609417,
        13429735204,
        13622138404,
        92691286130182
    }
}

local b = nil

for c, d in pairs(a) do
    for _, e in ipairs(d) do

        if game.PlaceId == e then
            b = c
            break
        end
    end

    if b then
        break
    end
end

if b then

    local f = b:match("(%d+)$")

    if f then
        local g =
            "https://raw.githubusercontent.com/rndmq/me/refs/heads/main/game/Game"
            .. f

        loadstring(game:HttpGet(g))()

        print("Loaded:", b)
    else
        warn("No number found")
    end

else
    warn("Unsupportedd Game")
end