local function createESP(part)
    if part and part:IsA("BasePart") then
        local highlight = Instance.new("BoxHandleAdornment")
        highlight.Size = part.Size + Vector3.new(0.1, 0.1, 0.1)
        highlight.Color3 = Color3.fromRGB(255, 0, 0) -- Red color
        highlight.Transparency = 0.5
        highlight.Adornee = part
        highlight.AlwaysOnTop = true
        highlight.ZIndex = 10
        highlight.Parent = game.CoreGui
    end
end

local function applyESP()
    for _, player in pairs(game:GetService("Players"):GetPlayers()) do
        if player.Character then
            for _, part in pairs(player.Character:GetChildren()) do
                if part:IsA("BasePart") then
                    createESP(part)
                end
            end
        end
    end
end

applyESP()
