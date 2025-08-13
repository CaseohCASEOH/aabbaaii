local uii = {7045407491, 3536640430}

local function uee(player)
    if table.find(uii, player.UserId) then
        Rayfield:Notify({
            Title = player.DisplayName .. " Joined!",
            Content = "Partner Of Abaui Community.",
            Duration = 15,
            Image = "user-star"
        })
    end
end

for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
    uee(player)
end

game:GetService("Players").PlayerAdded:Connect(uee)
