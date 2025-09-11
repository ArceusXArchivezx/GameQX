local StarterGui = game:GetService("StarterGui")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")

local BASE_URL_REVERSED = "/niam/sdaeh/sfer/XQemaG/xzevihcrAXsuecrA/moc.tnetnocresubuhtig.war//:sptth"
local function getBaseUrl()
    local success, decoded = pcall(function()
        return string.reverse(BASE_URL_REVERSED)
    end)
    if not success then
        warn("❌ URL decoding failed:", decoded)
        return nil
    end
    return decoded
end

local GameScripts = {
    ["99% Fail Glass Bridge Obby FIX"] = "Alea.Moon",
    ["Easy Squid Bridge! Glass Bridge!"] = "Money.luau",
    ["+$1,000 Every Correct Glass"] = "Qwq.luau",
    ["Pick Right Path to RICH!"] = "Metode.lua",
    ["Legends Of Speed"] = "Terpercaya.lua",
    ["Ninja Legends"] = "Indo.lua",
    ["K-Pop Demon Hunter Trolling Tower"] = "Clean.luau",
    ["$15,000 Glass Bridge (Squid Game Obby)"] = "Money1.luau",
    ["Cross Glass Bridge to RICH!"] = "GV.lua",
    ["$45,600 Jump Rope"] = "Roblox.lua",
    ["Brookhaven"] = "12v.lua",
    ["99 Nights in the Forest Glass Bridge"] = "Senpei.lua",
    ["Bloxfruits PVP"] = "Elizabeth.lua",
    ["RUNAWAY JUMP ROPE"] = "Global.lua",
    ["Hamood Habibi Tower"] = "Car.luau",
    ["KPop Demon Hunters Troll Tower"] = "Meyes.luau",
    ["Labubu Glass Bridge"] = "Whoiam.luau",
    ["Cross Invisible Path to MAGIC CARPET"] = "Idkah.lua",
    ["Color Block Run"] = "Noei.lua",
    ["1% Win Obby"] = "Eeeeeeeeeeeee.luau",
    ["IMPOSSIBLE Brainrot Glass Bridge"] = "iloveyou.lua",
    ["Slap Glass Bridge"] = "Whoe.lua",
    ["Troll Invisible Tower"] = "Zombie01.lua",
    ["Teamwork Tower 2"] = "Victoria.lua",
    ["Obby But You Get TROLLED"] = "Anastasia.luau",
    ["Random Tool Tower"] = "Isabella.luau",
    ["Tower For Admin 2"] = "Primordius.luau",
    ["Shrink Ray Tower"] = "Eternaxis.luau",
    ["Green Bean Tower Huge"] = "Titanora.luau",
    ["Green Bean Tower Green"] = "Infinitrix.luau",
    ["SAMMY VS JANDEL TOWER"] = "Veylthar.luau",
    ["Green Bean Tower Team"] = "Obliviron.luau",
    ["UwU's Tower"] = "Kronethys.luau",
    ["Troll Smart IQ Tower"] = "Excalyros.luau",
    ["Grow Ray Tower"] = "Hyperionis.luau",
    ["Susu Tower"] = "Voragnar.luau",
    ["Obby for Free Rewards"] = "Celesthor.luau",
    ["Escape The Tsunami"] = "Drakonis Core.Moon",
    ["Zipline Tower"] = "Solypharion.Moon",
    ["Troll Sleep Tower"] = "Zenithros.Moon",
    ["Realrosa Tower"] = "OmegaDrax.Moon",
    ["Fusion Troll Tower"] = "Colossara.Moon",
    ["Troll Easy Tower"] = "Supremara.Moon",
    ["Troll is a pin tower"] = "Magnus Rex.Moon",
    ["Super Lucky Block Tower"] = "Astravor.Moon",
    ["Prop Troll Tower"] = "Eternadrax.luau",
    ["Wall Climb Tower"] = "Titanexus.Moon",
    ["Experiment Troll Tower"] = "Kronarion.luau",
    ["Morph Tower"] = "Aethel.luau",
    ["Size Troll Tower"] = "Aevum.Moon",
    ["STEAL COOKIES"] = "Aetherium.Moon",
    ["Banksy Troll Tower"] = "Akasha.lua",
    ["UNBOXING Troll Tower"] = "Alakir.luau",
    ["(Tower 2) Wall Run Tower"] = "Alcyoneus.luau",
    ["Tower Minigames"] = "Aldrazar.luau",
    ["Super Green Bean Tower"] = "Almagest.luau",
    ["RESCUE K-pop Demon Hunters Tower"] = "Ananta.Moon",
    ["LAVA TOWER"] = "Apeiron.Moon",
    ["TROLL OBBY"] = "Love.Moon",
}

local success, guiError = pcall(function()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "ArceusXNeoGUI_" .. tostring(os.time())
    ScreenGui.Enabled = true
    ScreenGui.Parent = Players.LocalPlayer and Players.LocalPlayer.PlayerGui or game.CoreGui

    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0, 200, 0, 300)
    Frame.Position = UDim2.new(0.5, -100, 0.5, -150)
    Frame.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
    Frame.Parent = ScreenGui
    Frame.Active = true
    Frame.Draggable = true

    local FrameCorner = Instance.new("UICorner")
    FrameCorner.CornerRadius = UDim.new(0, 12)
    FrameCorner.Parent = Frame

    local FrameGradient = Instance.new("UIGradient")
    FrameGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(220, 220, 220)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(240, 240, 240))
    })
    FrameGradient.Rotation = 90
    FrameGradient.Parent = Frame

    local FrameShadow = Instance.new("UIStroke")
    FrameShadow.Thickness = 2
    FrameShadow.Color = Color3.fromRGB(200, 200, 200)
    FrameShadow.Transparency = 0.5
    FrameShadow.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    FrameShadow.Parent = Frame

    local isDragging = false
    local dragStart = nil
    local startPos = nil

    Frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            isDragging = true
            dragStart = input.Position
            startPos = Frame.Position
        end
    end)

    Frame.InputChanged:Connect(function(input)
        if isDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            local delta = input.Position - dragStart
            Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)

    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            isDragging = false
        end
    end)

    local CloseButton = Instance.new("TextButton")
    CloseButton.Size = UDim2.new(0, 28, 0, 28)
    CloseButton.Position = UDim2.new(1, -32, 0, 4)
    CloseButton.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
    CloseButton.Text = "X"
    CloseButton.TextColor3 = Color3.fromRGB(50, 50, 50)
    CloseButton.TextTransparency = 0.1
    CloseButton.Font = Enum.Font.GothamBold
    CloseButton.TextSize = 14
    CloseButton.Parent = Frame

    local CloseButtonCorner = Instance.new("UICorner")
    CloseButtonCorner.CornerRadius = UDim.new(0, 6)
    CloseButtonCorner.Parent = CloseButton

    local CloseButtonGradient = Instance.new("UIGradient")
    CloseButtonGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 200, 200)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(240, 240, 240))
    })
    CloseButtonGradient.Rotation = 90
    CloseButtonGradient.Parent = CloseButton

    CloseButton.MouseEnter:Connect(function()
        TweenService:Create(CloseButton, TweenInfo.new(0.2), { Size = UDim2.new(0, 30, 0, 30), BackgroundColor3 = Color3.fromRGB(240, 240, 240) }):Play()
    end)
    CloseButton.MouseLeave:Connect(function()
        TweenService:Create(CloseButton, TweenInfo.new(0.2), { Size = UDim2.new(0, 28, 0, 28), BackgroundColor3 = Color3.fromRGB(200, 200, 200) }):Play()
    end)

    CloseButton.MouseButton1Click:Connect(function()
        ScreenGui.Enabled = false
    end)

    local Dropdown = Instance.new("TextButton")
    Dropdown.Size = UDim2.new(0, 160, 0, 28)
    Dropdown.Position = UDim2.new(0, 4, 0, 4)
    Dropdown.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
    Dropdown.Text = "▶ Select Game"
    Dropdown.TextColor3 = Color3.fromRGB(50, 50, 50)
    Dropdown.TextTransparency = 0.1
    Dropdown.Font = Enum.Font.Gotham
    Dropdown.TextSize = 14
    Dropdown.Parent = Frame

    local DropdownCorner = Instance.new("UICorner")
    DropdownCorner.CornerRadius = UDim.new(0, 6)
    DropdownCorner.Parent = Dropdown

    local DropdownGradient = Instance.new("UIGradient")
    DropdownGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 200, 200)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(240, 240, 240))
    })
    DropdownGradient.Rotation = 90
    DropdownGradient.Parent = Dropdown

    Dropdown.MouseEnter:Connect(function()
        TweenService:Create(Dropdown, TweenInfo.new(0.2), { Size = UDim2.new(0, 162, 0, 30), BackgroundColor3 = Color3.fromRGB(240, 240, 240) }):Play()
    end)
    Dropdown.MouseLeave:Connect(function()
        TweenService:Create(Dropdown, TweenInfo.new(0.2), { Size = UDim2.new(0, 160, 0, 28), BackgroundColor3 = Color3.fromRGB(200, 200, 200) }):Play()
    end)

    local ListFrame = Instance.new("ScrollingFrame")
    ListFrame.Size = UDim2.new(1, 0, 0, 0)
    ListFrame.Position = UDim2.new(0, 0, 0, 36)
    ListFrame.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
    ListFrame.ClipsDescendants = true
    ListFrame.Parent = Frame
    ListFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
    ListFrame.ScrollBarThickness = 4
    ListFrame.ScrollBarImageColor3 = Color3.fromRGB(240, 240, 240)
    ListFrame.ScrollBarImageTransparency = 0.1
    ListFrame.BackgroundTransparency = 0.1

    local ListFrameCorner = Instance.new("UICorner")
    ListFrameCorner.CornerRadius = UDim.new(0, 6)
    ListFrameCorner.Parent = ListFrame

    local isOpen = false
    local function toggleListFrame()
        isOpen = not isOpen
        local maxHeight = 200
        local contentHeight = #ListFrame:GetChildren() * 38
        local goalHeight = isOpen and math.min(contentHeight, maxHeight) or 0
        local goalSize = UDim2.new(1, 0, 0, goalHeight)

        TweenService:Create(ListFrame, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
            Size = goalSize,
            BackgroundTransparency = isOpen and 0.1 or 1
        }):Play()

        ListFrame.CanvasSize = UDim2.new(0, 0, 0, contentHeight)
    end

    Dropdown.MouseButton1Click:Connect(toggleListFrame)

    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.Parent = ListFrame
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 4)

    local buttonCount = 0
    for gameName, fileName in pairs(GameScripts) do
        local Btn = Instance.new("TextButton")
        Btn.Size = UDim2.new(1, -5, 0, 34)
        Btn.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
        Btn.Text = gameName
        Btn.TextColor3 = Color3.fromRGB(50, 50, 50)
        Btn.TextTransparency = 0.1
        Btn.Font = Enum.Font.Gotham
        Btn.TextSize = 12
        Btn.TextWrapped = true
        Btn.TextTruncate = Enum.TextTruncate.AtEnd
        Btn.Parent = ListFrame
        buttonCount = buttonCount + 1

        local BtnCorner = Instance.new("UICorner")
        BtnCorner.CornerRadius = UDim.new(0, 6)
        BtnCorner.Parent = Btn

        local BtnGradient = Instance.new("UIGradient")
        BtnGradient.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(220, 220, 220)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 200, 200))
        })
        BtnGradient.Rotation = 90
        BtnGradient.Parent = Btn

        Btn.MouseEnter:Connect(function()
            TweenService:Create(Btn, TweenInfo.new(0.2), { Size = UDim2.new(1, -3, 0, 36), BackgroundColor3 = Color3.fromRGB(240, 240, 240) }):Play()
        end)
        Btn.MouseLeave:Connect(function()
            TweenService:Create(Btn, TweenInfo.new(0.2), { Size = UDim2.new(1, -5, 0, 34), BackgroundColor3 = Color3.fromRGB(220, 220, 220) }):Play()
        end)

        Btn.MouseButton1Click:Connect(function()
            Dropdown.Text = "▶ " .. gameName
            toggleListFrame()

            if fileName == "" then
                warn("❌ No script file specified for", gameName)
                StarterGui:SetCore("SendNotification", {
                    Title = "ArceusXNeo",
                    Text = "⚠️ No script available for " .. gameName,
                    Duration = 5
                })
                return
            end

            local url = getBaseUrl()
            if not url then
                warn("❌ URL decoding failed")
                StarterGui:SetCore("SendNotification", {
                    Title = "ArceusXNeo",
                    Text = "⚠️ Failed to load script: URL error.",
                    Duration = 5
                })
                return
            end
            url = url .. fileName

            local success, result = pcall(function()
                local scriptContent = game:HttpGet(url)
                if not scriptContent or scriptContent == "" then
                    error("Empty or invalid script content for " .. gameName .. " at " .. url)
                end
                return loadstring(scriptContent)()
            end)

            if not success then
                warn("❌ Failed to load script for", gameName, ":", result)
                StarterGui:SetCore("SendNotification", {
                    Title = "ArceusXNeo",
                    Text = "⚠️ Script Not Supported: " .. tostring(result),
                    Duration = 5
                })
            else
                StarterGui:SetCore("SendNotification", {
                    Title = "ArceusXNeo",
                    Text = "✅ " .. gameName .. " script successfully executed!",
                    Duration = 5
                })
            end
        end)
    end

    ListFrame.CanvasSize = UDim2.new(0, 0, 0, buttonCount * (34 + UIListLayout.Padding.Offset))
end)

if not success then
    warn("❌ GUI initialization failed:", guiError)
    StarterGui:SetCore("SendNotification", {
        Title = "ArceusXNeo",
        Text = "⚠️ Failed to initialize GUI: " .. tostring(guiError),
        Duration = 5
    })
end
