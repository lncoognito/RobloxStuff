function FakeRequest(Username, PersonPicture)
    local BindableFunction  = Instance.new("BindableFunction", game.Workspace)

    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title           = Username,
        Text            = "Sent you a friend request!",
        Icon            = "rbxassetid://"..PersonPicture,
        Duration        = 5,
        Callback        = BindableFunction,
        Button1         = "Accept",
        Button2         = "Decline"
    })

    BindableFunction.OnInvoke = function(Response)
        if Response == "Accept" then
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title       = "New Friend",
                Text        = Username,
                Icon        = "rbxassetid://"..PersonPicture,
                Duration    = 5
            }) 

            BindableFunction:Destroy()
        end
    end 
end

FakeRequest("Fake", "2342343")
