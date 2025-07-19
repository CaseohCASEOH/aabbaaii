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

local id = game:GetService("RbxAnalyticsService"):GetClientId()
if not id then
    game.Players.LocalPlayer:Kick("Failed to get HWID")
    return
end

local real = generation(id)
local path = "hwid.key"

if isfile(path) then
    local current = readfile(path)
    if current ~= real then
        writefile(path, real)
        game.Players.LocalPlayer:Kick("Don't spoof HWID. File was reset.")
        return
    end
else
    writefile(path, real)
end
