if not getgenv().LoadedSoundTroll then
    local GetService            = game.GetService

    local Players               = GetService(game, "Players")
    local Storage               = GetService(game, "ReplicatedStorage")
    
    local Client                = Players.LocalPlayer

    getgenv().LoadedSoundTroll  = true
    
    while wait(0.5) do
        if getgenv().SoundTroll then
            if Client.Character:FindFirstChild("weapon") and Client.Character:FindFirstChild("weapon"):FindFirstChild("RootPart") then
                Storage.Assets.Remotes.repAudio:FireServer(Client.Character.weapon.RootPart, {
                    ["pitch"]       = 1,
                    ["name"]        = "equip",
                    ["soundId"]     = 6415927629,
            
                    ["dist"]        = {
                        [1] = 99999,
                        [2] = 99999
                    }
                }) 
            end
        end
    end
end
