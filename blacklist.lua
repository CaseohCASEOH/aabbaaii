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

task.wait(1)

game:GetService("Players").LocalPlayer:Kick("Patched")
