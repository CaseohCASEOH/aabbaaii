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

local rbx = generation(game:GetService("RbxAnalyticsService"):GetClientId())

local whitelist = {
    ["g52glw6gwwdof0xxciixyjzz6yll6fxr043fnfv1q08c92g441"] = true,
    ["hwid_2"] = true,
}

if not whitelist[rbx] then
    game:GetService("Players").LocalPlayer:Kick("Pay Cheap Premium At Discord.gg/hnq9AGVMwq")
end
