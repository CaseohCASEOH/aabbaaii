local ui = {5140633311, 7462299029, 7462449628}

local function ue(player)
    if table.find(ui, player.UserId) then
        Rayfield:Notify({
            Title = player.DisplayName .. " Joined!",
            Content = "The Creator Of Abaui Hub.",
            Duration = 15,
            Image = "user-round-check"
        })
    end
end

for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
    ue(player)
end

game:GetService("Players").PlayerAdded:Connect(ue)
