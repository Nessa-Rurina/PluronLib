local library = {}
local plr = game:GetService("Players").LocalPlayer

local TweenService = game:GetService("TweenService")

function load()

    local PluronID = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local Contents = Instance.new("Frame")
    local BackgroundArea = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local Title = Instance.new("TextLabel")
    local Exit = Instance.new("TextButton")
    local UICorner_6 = Instance.new("UICorner")
    local Minimize = Instance.new("TextButton")
    local UICorner_7 = Instance.new("UICorner")

    --Properties:

    PluronID.Name = "Pluron, ID: "..plr.Name
    PluronID.Parent = game:GetService("CoreGui")
    PluronID.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Main.Name = "Main"
    Main.Parent = PluronID
    Main.BackgroundColor3 = Color3.fromRGB(34, 38, 56)
    Main.Position = UDim2.new(0.380536497, 0, 0.211111099, 0)
    Main.Size = UDim2.new(0, 383, 0, 467)
    Main.Active = true

    UICorner.CornerRadius = UDim.new(0, 15)
    UICorner.Parent = Main

    Contents.Name = "Contents"
    Contents.Parent = Main
    Contents.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Contents.BackgroundTransparency = 1.000
    Contents.BorderSizePixel = 0
    Contents.Size = UDim2.new(0, 383, 0, 467)

    BackgroundArea.Name = "BackgroundArea"
    BackgroundArea.Parent = Contents
    BackgroundArea.BackgroundColor3 = Color3.fromRGB(72, 91, 125)
    BackgroundArea.BorderSizePixel = 0
    BackgroundArea.Position = UDim2.new(0.0208877288, 0, 0.0877944306, 0)
    BackgroundArea.Size = UDim2.new(0, 367, 0, 417)

    UICorner_2.CornerRadius = UDim.new(0, 15)
    UICorner_2.Parent = BackgroundArea

    Title.Name = "Title"
    Title.Parent = Contents
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.BorderSizePixel = 0
    Title.Size = UDim2.new(0, 383, 0, 41)
    Title.Font = Enum.Font.GothamBlack
    Title.Text = name
    Title.TextColor3 = Color3.fromRGB(175, 175, 175)
    Title.TextSize = 14.000

    Exit.Name = "Exit"
    Exit.Parent = Contents
    Exit.BackgroundColor3 = Color3.fromRGB(255, 133, 133)
    Exit.Position = UDim2.new(0.926892936, 0, 0.0278372578, 0)
    Exit.Size = UDim2.new(0, 14, 0, 14)
    Exit.Font = Enum.Font.SourceSans
    Exit.Text = ""
    Exit.TextColor3 = Color3.fromRGB(0, 0, 0)
    Exit.TextSize = 14.000
    Exit.MouseButton1Click:Connect(function()
        game:GetService("CoreGui")["Pluron, ID: "..plr.Name]:Destroy()
    end)

    UICorner_6.CornerRadius = UDim.new(1, 0)
    UICorner_6.Parent = Exit

    Minimize.Name = "Minimize"
    Minimize.Parent = Contents
    Minimize.BackgroundColor3 = Color3.fromRGB(255, 246, 120)
    Minimize.Position = UDim2.new(0.869451702, 0, 0.0278372578, 0)
    Minimize.Size = UDim2.new(0, 14, 0, 14)
    Minimize.Font = Enum.Font.SourceSans
    Minimize.Text = ""
    Minimize.TextColor3 = Color3.fromRGB(0, 0, 0)
    Minimize.TextSize = 14.000
    Minimize.MouseButton1Click:Connect(function()
        local toggle = true
        if toggle == true then
            toggle = false
            BackgroundArea.Visible = false
            TweenService:Create(Main, TweenInfo.new(.1, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {Size = UDim2.new(0, 383,0, 39)}):Play()
            TweenService:Create(Minimize, TweenInfo.new(.1, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(120, 255, 255)}):Play()
        else
            toggle = true
            BackgroundArea.Visible = true
            TweenService:Create(Main, TweenInfo.new(.1, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {Size = UDim2.new(0, 383, 0, 467)}):Play()
            TweenService:Create(Minimize, TweenInfo.new(.1, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(255, 246, 120)}):Play()
        end
    end)

    UICorner_7.CornerRadius = UDim.new(1, 0)
    UICorner_7.Parent = Minimize

    local Tabs = {}
    
    function Tabs:CreateTab(text)
        local TabButton = Instance.new("TextButton")
        local UICorner_3 = Instance.new("UICorner")
        local Panels = Instance.new("Folder")
        local Panel = Instance.new("Frame")
        local UICorner_4 = Instance.new("UICorner")
        local ScrollingFrame = Instance.new("ScrollingFrame")

        TabButton.Name = text.." Tab"
        TabButton.Parent = BackgroundArea
        TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabButton.BackgroundTransparency = 1.000
        TabButton.Position = UDim2.new(0.0489999987, 0, 0.0149999997, 0)
        TabButton.Size = UDim2.new(0, 61, 0, 23)
        TabButton.Font = Enum.Font.GothamBold
        TabButton.Text = text
        TabButton.TextColor3 = Color3.fromRGB(48, 61, 84)
        TabButton.TextSize = 11.000

        UICorner_3.CornerRadius = UDim.new(1, 0)
        UICorner_3.Parent = TabButton

        Panels.Name = "Panels"
        Panels.Parent = BackgroundArea

        Panel.Name = text.." Panel"
        Panel.Parent = Panels
        Panel.BackgroundColor3 = Color3.fromRGB(48, 61, 84)
        Panel.BorderSizePixel = 0
        Panel.Position = UDim2.new(0.0149999997, 0, 0.0850000009, 0)
        Panel.Size = UDim2.new(0, 355, 0, 375)

        UICorner_4.CornerRadius = UDim.new(0, 15)
        UICorner_4.Parent = Panel

        ScrollingFrame.Parent = Panel
        ScrollingFrame.Active = true
        ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ScrollingFrame.BackgroundTransparency = 1.000
        ScrollingFrame.BorderSizePixel = 0
        ScrollingFrame.Position = UDim2.new(0.0206527486, 0, 0.0133333337, 0)
        ScrollingFrame.Size = UDim2.new(0, 339, 0, 364)
        ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
        ScrollingFrame.ScrollBarThickness = 7
        TabButton.MouseButton1Click:Connect(function()
            for v in next, Panels:GetChildren() do
                v.Visible = false
            end
            Panel.Visible = true
        end)
        local Components = {}

        function Components:NewButton(text, callback)
            local Button = Instance.new("TextButton")
            local UICorner_5 = Instance.new("UICorner")
            local Txt = Instance.new("TextLabel")
            local callback = callback or function () end
            Button.Name = "Button"
            Button.Parent = ScrollingFrame
            Button.BackgroundColor3 = Color3.fromRGB(72, 91, 125)
            Button.Position = UDim2.new(0.0144927539, 0, 0.0219780225, 0)
            Button.Size = UDim2.new(0, 331, 0, 50)
            Button.Font = Enum.Font.SourceSans
            Button.Text = ""
            Button.TextColor3 = Color3.fromRGB(0, 0, 0)
            Button.TextSize = 14.000

            UICorner_5.CornerRadius = UDim.new(0, 15)
            UICorner_5.Parent = Button

            Txt.Name = "Txt"
            Txt.Parent = Button
            Txt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Txt.BackgroundTransparency = 1.000
            Txt.BorderSizePixel = 0
            Txt.Position = UDim2.new(0.0604229607, 0, 0, 0)
            Txt.Size = UDim2.new(0, 200, 0, 50)
            Txt.Font = Enum.Font.GothamBlack
            Txt.Text = "TXT | BUTTON"
            Txt.TextColor3 = Color3.fromRGB(175, 175, 175)
            Txt.TextSize = 11.000
            Txt.TextXAlignment = Enum.TextXAlignment.Left

            Button.MouseButton1Click:Connect(function()
                pcall(callback)
            end)
        end
        return Components;
    end
    return Tabs;
end

function library:CreateWindow(name)
    if KeySystem.Enabled == true then
        local PluronKeySystem = Instance.new("ScreenGui")
        local Main = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local Contents = Instance.new("Frame")
        local KeyTitle = Instance.new("TextLabel")
        local Exit = Instance.new("TextButton")
        local UICorner_2 = Instance.new("UICorner")
        local Minimize = Instance.new("TextButton")
        local UICorner_3 = Instance.new("UICorner")
        local KInput = Instance.new("TextBox")
        local UICorner_4 = Instance.new("UICorner")
        local CheckKey = Instance.new("TextButton")
        local UICorner_5 = Instance.new("UICorner")
        local JoinDiscord = Instance.new("TextButton")
        local UICorner_6 = Instance.new("UICorner")
        local Note = Instance.new("TextLabel")
        
        PluronKeySystem.Name = "Pluron, KeySystem"
        PluronKeySystem.Parent = game:GetService("CoreGui")
        PluronKeySystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        
        Main.Name = "Main"
        Main.Parent = PluronKeySystem
        Main.BackgroundColor3 = Color3.fromRGB(34, 38, 56)
        Main.Position = UDim2.new(0.380536497, 0, 0.211111084, 0)
        Main.Size = UDim2.new(0, 383, 0, 205)
        Main.Active = true
        
        UICorner.CornerRadius = UDim.new(0, 15)
        UICorner.Parent = Main
        
        Contents.Name = "Contents"
        Contents.Parent = Main
        Contents.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Contents.BackgroundTransparency = 1.000
        Contents.BorderSizePixel = 0
        Contents.Size = UDim2.new(0, 383, 0, 205)
        
        KeyTitle.Name = "KeyTitle"
        KeyTitle.Parent = Contents
        KeyTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        KeyTitle.BackgroundTransparency = 1.000
        KeyTitle.BorderSizePixel = 0
        KeyTitle.Size = UDim2.new(0, 383, 0, 41)
        KeyTitle.Font = Enum.Font.GothamBlack
        KeyTitle.Text = name.." | KeySystem"
        KeyTitle.TextColor3 = Color3.fromRGB(175, 175, 175)
        KeyTitle.TextSize = 14.000
        
        Exit.Name = "Exit"
        Exit.Parent = Contents
        Exit.BackgroundColor3 = Color3.fromRGB(255, 133, 133)
        Exit.Position = UDim2.new(0.93211484, 0, 0.0619836003, 0)
        Exit.Size = UDim2.new(0, 14, 0, 14)
        Exit.Font = Enum.Font.SourceSans
        Exit.Text = ""
        Exit.TextColor3 = Color3.fromRGB(0, 0, 0)
        Exit.TextSize = 14.000
        
        UICorner_2.CornerRadius = UDim.new(1, 0)
        UICorner_2.Parent = Exit
        
        Minimize.Name = "Minimize"
        Minimize.Parent = Contents
        Minimize.BackgroundColor3 = Color3.fromRGB(255, 246, 120)
        Minimize.Position = UDim2.new(0.874673605, 0, 0.0619836003, 0)
        Minimize.Size = UDim2.new(0, 14, 0, 14)
        Minimize.Font = Enum.Font.SourceSans
        Minimize.Text = ""
        Minimize.TextColor3 = Color3.fromRGB(0, 0, 0)
        Minimize.TextSize = 14.000
        
        UICorner_3.CornerRadius = UDim.new(1, 0)
        UICorner_3.Parent = Minimize
        
        KInput.Name = "Input"
        KInput.Parent = Contents
        KInput.BackgroundColor3 = Color3.fromRGB(72, 91, 125)
        KInput.Position = UDim2.new(0.180156663, 0, 0.419512182, 0)
        KInput.Size = UDim2.new(0, 249, 0, 50)
        KInput.Font = Enum.Font.GothamBlack
        KInput.PlaceholderColor3 = Color3.fromRGB(34, 38, 56)
        KInput.Text = ""
        KInput.TextColor3 = Color3.fromRGB(34, 38, 56)
        KInput.TextSize = 14.000
        KInput.TextWrapped = true
        
        UICorner_4.CornerRadius = UDim.new(0, 15)
        UICorner_4.Parent = KInput
        
        CheckKey.Name = "CheckKey"
        CheckKey.Parent = Contents
        CheckKey.BackgroundColor3 = Color3.fromRGB(255, 133, 133)
        CheckKey.Position = UDim2.new(0.0548302867, 0, 0.707317054, 0)
        CheckKey.Size = UDim2.new(0, 156, 0, 48)
        CheckKey.Font = Enum.Font.GothamBlack
        CheckKey.Text = "CheckKey"
        CheckKey.TextColor3 = Color3.fromRGB(34, 38, 56)
        CheckKey.TextSize = 14.000
        
        while wait() do
            if KInput.Text ~= KeySystem.Key then
                TweenService:Create(CheckKey, TweenInfo.new(.3, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(255, 133, 133)}):Play()
            else
                TweenService:Create(CheckKey, TweenInfo.new(.3, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(198, 255, 133)}):Play()
            end
        end
        
        CheckKey.MouseButton1Click:Connect(function()
            if KInput.Text == KeySystem.Key then
                load()
            end
        end)
        UICorner_5.CornerRadius = UDim.new(0, 15)
        UICorner_5.Parent = CheckKey
        
        JoinDiscord.Name = "JoinDiscord"
        JoinDiscord.Parent = Contents
        JoinDiscord.BackgroundColor3 = Color3.fromRGB(72, 91, 125)
        JoinDiscord.Position = UDim2.new(0.522000015, 0, 0.707000017, 0)
        JoinDiscord.Size = UDim2.new(0, 162, 0, 48)
        JoinDiscord.Font = Enum.Font.GothamBlack
        JoinDiscord.Text = "Join Discord"
        JoinDiscord.TextColor3 = Color3.fromRGB(34, 38, 56)
        JoinDiscord.TextSize = 14.000
    
        function LoadDiscord()
            if syn then
                if isfolder("Pluron") then
                else
                    makefolder("Pluron")
                end
                if isfile('Pluron/discord invite.lua') then
                    print("Tried?")
                else
                    _G.invite = [[
                        local json = {
                            ["cmd"] = "INVITE_BROWSER",
                            ["args"] = {
                                ["code"] = KeySystem.DiscordInvite
                            },
                            ["nonce"] = 'a'
                        }
                        spawn(function()
                                print(syn.request({
                                Url = 'http://127.0.0.1:6463/rpc?v=1',
                                Method = 'POST',
                                Headers = {
                                    ['Content-Type'] = 'application/json',
                                    ['Origin'] = 'https://discord.com'
                                },
                            Body = game:GetService('HttpService'):JSONEncode(json),}).Body)
                        end)
                    ]]
                writefile("Pluron/discord invite.lua", (_G.invite))
            end
            else
                JoinDiscord.Visible = false
                CheckKey.Size = UDim2.new()
                TweenService:Create(CheckKey, TweenInfo.new(.3, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {Size = UDim2.new(0, 340,0, 48)}):Play()
            end  
        end
        JoinDiscord.MouseButton1Click:Connect(function()
            LoadDiscord()
        end)
        
        UICorner_6.CornerRadius = UDim.new(0, 15)
        UICorner_6.Parent = JoinDiscord
        
        Note.Name = "Note"
        Note.Parent = Contents
        Note.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Note.BackgroundTransparency = 1.000
        Note.BorderSizePixel = 0
        Note.Position = UDim2.new(0, 0, 0.200000003, 0)
        Note.Size = UDim2.new(0, 383, 0, 45)
        Note.Font = Enum.Font.GothamBlack
        Note.Text = KeySystem.Note
        Note.TextColor3 = Color3.fromRGB(175, 175, 175)
        Note.TextSize = 14.000
        Note.TextWrapped = true 
    else
        load()
    end
end
