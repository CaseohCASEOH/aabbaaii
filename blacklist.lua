local blacklist = {
    ["hwid_1"] = true,
    ["hwid_2"] = true,
}

if not isfile("hwid.key") then
    game.Players.LocalPlayer:Kick("Missing HWID")
    return
end

local hwid = readfile("hwid.key")
if blacklist[hwid] then
    game.Players.LocalPlayer:Kick("Banned")
end

local place = 18695865484
if game.PlaceId ~= place then
    game:GetService("Players").LocalPlayer:Kick("Unsupported Game, Only Supported Game: Flex Your Ping And FPS!")
end
