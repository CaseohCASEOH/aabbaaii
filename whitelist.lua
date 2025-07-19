local whitelist = {
    ["g52glw6gwwdof0xxciixyjzz6yll6fxr043fnfv1q08c92g441"] = true,
    ["hwid_2"] = true,
}

if not isfile("hwid.key") then
    game.Players.LocalPlayer:Kick("Missing HWID")
    return
end

local hwid = readfile("hwid.key")
if not whitelist[hwid] then
    game.Players.LocalPlayer:Kick("Pay Premium At Discord.gg/hnq9AGVMwq")
end
