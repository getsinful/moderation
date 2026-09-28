TopG = {
    [1] = true;
    [2] = true;
    [3] = true;
    [4] = true;
    [5] = true;
}

Premium = {
    [3900092579] = true;
    [44038745] = true;
    [1085419] = true;
    [7311118374] = true;
    [443953] = true;
    [1137360196] = true;
    [9296313467] = true;
    [1197290] = true;
}

--// Don't mess with anything below this
function initiateNames()
    game.Players.LocalPlayer.Character.UpperTorso:FindFirstChild('OriginalSize'):Destroy()
    for _,v in pairs(game:GetService('Players'):GetPlayers()) do
        if v.Character then
            if not v.Character.UpperTorso:FindFirstChild('OriginalSize') then
                v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[😎] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
            end
            if Premium[v.UserId] then
                v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
            end
            if TopG[v.UserId] then
                v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
            end
        end
    end
end

local successful, errored = pcall(initiateNames)
return Premium
