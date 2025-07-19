local function generation(device)
    local h = 0
    for i = 1, #device do
        h = (h * 1337 + device:byte(i)) % 2^31
    end
    math.randomseed(h)
    local chars = "abcdefghijklmnopqrstuvwxyz0123456789"
    local result = {}
    for i = 1, 50 do
        local index = math.random(1, #chars)
        table.insert(result, chars:sub(index, index))
    end
    return table.concat(result)
end

local real = generation(game:GetService("RbxAnalyticsService"):GetClientId())
local path = "hwid.key"

if isfile(path) then
    local current = readfile(path)
    if current ~= real then
        writefile(path, real)
        game.Players.LocalPlayer:Kick("Do Not Spoof HWID)
        return
    end
else
    writefile(path, real)
end
