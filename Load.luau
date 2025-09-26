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
    ["99% Fail Glass Bridge Obby"] = "Alea.Moon",
    ["Easy Squid Bridge! Glass Bridge!"] = "Money.luau",
    ["+$1,000 Every Correct Glass"] = "Qwq.luau",
    ["Legends Of Speed ⚡"] = "Terpercaya.lua",
    ["⚡Ninja Legends"] = "Indo.lua",
    ["K-Pop Demon Hunter Trolling Tower"] = "Clean.luau",
    ["💸$15,000 Glass Bridge (Squid Game Obby) 📈"] = "Money1.luau",
    ["Cross Glass Bridge to RICH!"] = "GV.lua",
    ["$45,600 Jump Rope"] = "Roblox.lua",
    ["Brookhaven 🏡RP"] = "12v.lua",
    ["99 Nights in the Forest Glass Bridge"] = "Senpei.lua",
    ["RUNAWAY JUMP ROPE"] = "Global.lua",
    ["Hamood Habibi Tower 🎵"] = "Car.luau",
    ["🎤KPop Demon Hunters Troll Tower💜"] = "Meyes.luau",
    ["Labubu Glass Bridge"] = "Whoiam.luau",
    ["Cross Invisible Path to MAGIC CARPET!"] = "Idkah.lua",
    ["Color Block Run"] = "Noei.lua",
    ["1% Win Obby"] = "Eeeeeeeeeeeee.luau",
    ["IMPOSSIBLE Brainrot Glass Bridge"] = "iloveyou.lua",
    ["Slap Glass Bridge"] = "Whoe.lua",
    ["Troll Invisible Tower🖐️"] = "Zombie01.lua",
    ["Teamwork Tower 2"] = "Victoria.lua",
    ["[NEW] Obby But You Get TROLLED!"] = "Anastasia.luau",
    ["Random Tool Tower🎲"] = "Isabella.luau",
    ["Tower For Admin 2 😎"] = "Primordius.luau",
    ["[🔫] Shrink Ray Tower"] = "Eternaxis.luau",
    ["[🌱] Green Bean Tower (HUGE UPDATE)"] = "Titanora.luau",
    ["SAMMY VS JANDEL TOWER! (HUGE UPDATE)"] = "Veylthar.luau",
    ["UwU's Tower 💕"] = "Kronethys.luau",
    ["Troll Smart IQ Tower 🧠"] = "Excalyros.luau",
    ["Grow Ray Tower 📈"] = "Hyperionis.luau",
    ["[UPDATE!] Susu Tower 🥛"] = "Voragnar.luau",
    ["Obby For Free UGC 🎁"] = "Celesthor.luau",
    ["Escape The Tsunami 🌊"] = "Drakonis Core.Moon",
    ["Zipline Tower 😈"] = "Solypharion.Moon",
    ["Troll Sleep Tower 🥱"] = "Zenithros.Moon",
    ["Realrosa Tower [+Wallhop Practice]"] = "OmegaDrax.Moon",
    ["Fusion Troll Tower"] = "Colossara.Moon",
    ["Troll Easy Tower"] = "Supremara.Moon",
    ["Troll is a pin tower"] = "Magnus Rex.Moon",
    ["Super Lucky Block Tower"] = "Astravor.Moon",
    ["Prop Troll Tower"] = "Eternadrax.luau",
    ["Wall Climb Tower"] = "Titanexus.Moon",
    ["Experiment Troll Tower"] = "Kronarion.luau",
    ["[UPD] Morph Tower"] = "Aethel.luau",
    ["[🎲] Size Troll Tower"] = "Aevum.Moon",
    ["STEAL COOKIES🍪"] = "Aetherium.Moon",
    ["Banksy Troll Tower ✋"] = "Akasha.lua",
    ["UNBOXING Troll Tower"] = "Alakir.luau",
    ["[🔫] Wall Run Tower"] = "Alcyoneus.luau",
    ["Tower Minigames"] = "Aldrazar.luau",
    ["Super Green Bean Tower 🌱"] = "Almagest.luau",
    ["🎶RESCUE K-pop Demon Hunters Tower 🎶"] = "Ananta.Moon",
    ["LAVA TOWER"] = "Apeiron.Moon",
    ["TROLL OBBY"] = "Love.Moon",
    ["Troll Obby"] = "Apogee.lua",
    ["Infinite Giga Jump Troll Tower"] = "Arcanix.Moon",
    ["❄️Build a Zoo[Snow]"] = "Arclight.Moon",
    ["Skaters Of Hell"] = "Aethra.Moon",
    ["[W11] Pogo Obby"] = "Astraeus.N",
    ["[🌎W3] Obby But You're Cursed"] = "Avalon.N",
    ["Gravity Coil Tower 🎈☂"] = "Axanar.n",
    ["🏃‍♂️Speed Run to VIP Obby!!🏃‍♂️"] = "Azimuth.LOVE",
    ["[UPD]Roller Skate Legends 🔥"] = "Belexus.Moon",
    ["[💵] MrBeast Tower"] = "Dragon.lua",
    ["[W10] Rope Swing Obby"] = "HoleH.N",
    ["Swing Obby"] = "Draconis Astra.Lua",
    ["🔥Floor is Lava Tower"] = "Ignis Celestia.lua",
    ["Easy Color Switch Obby!"] = "Astraghon.Lua",
    ["🌟Ultimate Rainbow Obby🌈"] = "Caelumdraco.lua",
    ["Kawaii Tower 2"] = "Solardrakon.lua",
    ["Color Troll Tower"] = "Cosmydrax.lua",
    ["EXTREME Slap Tower 😈"] = "Galaxion.Moon",
    ["Random Ability Tower"] = "Orbis Draco.Moon",
    ["Jump Into Team Green Bean"] = "Stellardrake.Moon",
    ["Mrbeast's Deadly Obby"] = "Voidwyrm.Moon",
    ["AURA FARM TOWER"] = "Lunardracarys.Moon",
    ["Brainrot Camo Troll Tower"] = "Nebulonax.Moon",
    ["Draw Troll Tower"] = "Astralis Draco.Moon",
    ["Ragdoll Physics Tower"] = "Solarion",
    ["[UPD] Rizz Tower"] = "Terraghon.Moon",
    ["JUMP Hug Tower! 🤗"] = "Ignis",
    ["GRAB"] = "Vermithrax",
    ["Hug a Troll Tower 💛"] = "Drakkar",
    ["Don't Get Crushed Tower! 😈"] = "Fafnir",
    ["Break Bones Tower"] = "Bahamut",
    ["🌲 Cut Trees"] = "Tiamat",
    ["Portal Gun Tower 🌀"] = "Ancalagon",
    ["🌺 Build A Beehive【New Flowers】"] = "Glaurung",
    ["Escape 99 Nights in the Forest Tower"] = "Sancellar",
    ["Escape from TungTung's Tower🧠"] = "Pyrausta",
    ["Don't Wake The Rainbow Friends"] = "Ouroboros",
    ["[NEW!] Don't Wake The Baddies!"] = "Vritra",
    ["PacMan Survival!"] = "Ladon",
    ["Don't Wake the 99 Nights in the Forest!"] = "Nidhogg",
    ["Don't Wake the Alien Brainrots!"] = "Quetzalcoatl",
    ["Endless Escape"] = "Ryujin",
}

local success, guiError = pcall(function()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "ArceusXNeoGUI_" .. tostring(os.time())
    ScreenGui.Enabled = true
    ScreenGui.Parent = Players.LocalPlayer and Players.LocalPlayer.PlayerGui or game.CoreGui

    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0, 200, 0, 100) -- Adjusted height for TextBox and one button
    Frame.Position = UDim2.new(0.5, -100, 0.5, -50)
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

    local TextBox = Instance.new("TextBox")
    TextBox.Size = UDim2.new(0, 160, 0, 28)
    TextBox.Position = UDim2.new(0, 4, 0, 4)
    TextBox.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
    TextBox.Text = "Enter Game Name Here"
    TextBox.TextColor3 = Color3.fromRGB(50, 50, 50)
    TextBox.TextTransparency = 0.1
    TextBox.Font = Enum.Font.Gotham
    TextBox.TextSize = 14
    TextBox.ClearTextOnFocus = true
    TextBox.Parent = Frame

    local TextBoxCorner = Instance.new("UICorner")
    TextBoxCorner.CornerRadius = UDim.new(0, 6)
    TextBoxCorner.Parent = TextBox

    local TextBoxGradient = Instance.new("UIGradient")
    TextBoxGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 200, 200)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(240, 240, 240))
    })
    TextBoxGradient.Rotation = 90
    TextBoxGradient.Parent = TextBox

    TextBox.MouseEnter:Connect(function()
        TweenService:Create(TextBox, TweenInfo.new(0.2), { Size = UDim2.new(0, 162, 0, 30), BackgroundColor3 = Color3.fromRGB(240, 240, 240) }):Play()
    end)
    TextBox.MouseLeave:Connect(function()
        TweenService:Create(TextBox, TweenInfo.new(0.2), { Size = UDim2.new(0, 160, 0, 28), BackgroundColor3 = Color3.fromRGB(200, 200, 200) }):Play()
    end)

    local AutoFoundButton = Instance.new("TextButton")
    AutoFoundButton.Size = UDim2.new(0, 160, 0, 28)
    AutoFoundButton.Position = UDim2.new(0, 4, 0, 36)
    AutoFoundButton.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
    AutoFoundButton.Text = "Auto Found Name Game"
    AutoFoundButton.TextColor3 = Color3.fromRGB(50, 50, 50)
    AutoFoundButton.TextTransparency = 0.1
    AutoFoundButton.Font = Enum.Font.Gotham
    AutoFoundButton.TextSize = 14
    AutoFoundButton.Parent = Frame

    local AutoFoundButtonCorner = Instance.new("UICorner")
    AutoFoundButtonCorner.CornerRadius = UDim.new(0, 6)
    AutoFoundButtonCorner.Parent = AutoFoundButton

    local AutoFoundButtonGradient = Instance.new("UIGradient")
    AutoFoundButtonGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 200, 200)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(240, 240, 240))
    })
    AutoFoundButtonGradient.Rotation = 90
    AutoFoundButtonGradient.Parent = AutoFoundButton

    AutoFoundButton.MouseEnter:Connect(function()
        TweenService:Create(AutoFoundButton, TweenInfo.new(0.2), { Size = UDim2.new(0, 162, 0, 30), BackgroundColor3 = Color3.fromRGB(240, 240, 240) }):Play()
    end)
    AutoFoundButton.MouseLeave:Connect(function()
        TweenService:Create(AutoFoundButton, TweenInfo.new(0.2), { Size = UDim2.new(0, 160, 0, 28), BackgroundColor3 = Color3.fromRGB(200, 200, 200) }):Play()
    end)

    local function executeScript(gameName)
        local fileName = GameScripts[gameName]
        if not fileName then
            warn("❌ No script found for", gameName)
            StarterGui:SetCore("SendNotification", {
                Title = "ArceusXNeo",
                Text = "⚠️ No script available for " .. gameName,
                Duration = 5
            })
            TextBox.Text = "Enter Game Name Here"
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
            TextBox.Text = "Enter Game Name Here"
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
        TextBox.Text = "Enter Game Name Here"
    end

    TextBox.FocusLost:Connect(function(enterPressed)
        if not enterPressed then return end
        executeScript(TextBox.Text)
    end)

    AutoFoundButton.MouseButton1Click:Connect(function()
        local successNekoi, resultNekoi = pcall(function()
            return loadstring(game:HttpGet("https://raw.githubusercontent.com/ArceusXArchivezx/Nekoi/refs/heads/main/%E7%99%BD%E3%81%84%E5%AD%90%E7%8C%AB"))()
        end)
        if not successNekoi then
            warn("❌ Failed to load Nekoi script:", resultNekoi)
            StarterGui:SetCore("SendNotification", {
                Title = "ArceusXNeo",
                Text = "⚠️ Failed to load Nekoi script: " .. tostring(resultNekoi),
                Duration = 5
            })
        else
            StarterGui:SetCore("SendNotification", {
                Title = "ArceusXNeo",
                Text = "✅ Nekoi script successfully executed!",
                Duration = 5
            })
        end
    end)
end)

if not success then
    warn("❌ GUI initialization failed:", guiError)
    StarterGui:SetCore("SendNotification", {
        Title = "ArceusXNeo",
        Text = "⚠️ Failed to initialize GUI: " .. tostring(guiError),
        Duration = 5
    })
end
