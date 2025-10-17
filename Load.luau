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
    ["10721852444"] = "Alea.Moon",
    ["3101667897"] = "Terpercaya.lua",
    ["3956818381"] = "Indo.lua",
    ["75655206294061"] = "Clean.luau",
    ["117912363638950"] = "Money1.luau",
    ["120861500854151"] = "Roblox.lua",
    ["4924922222"] = "12v.lua",
    ["140202313776640"] = "Senpei.lua",
    ["70550963992014"] = "Global.lua",
    ["104034421066865"] = "Car.luau",
    ["75655206294061"] = "Meyes.luau",
    ["132130966239050"] = "Whoiam.luau",
    ["17737610444"] = "Idkah.lua",
    ["12623585422"] = "Noei.lua",
    ["13389049867"] = "Eeeeeeeeeeeee.luau",
    ["125248406466473"] = "iloveyou.lua",
    ["89118521329724"] = "Zombie01.lua",
    ["91193393488569"] = "Victoria.lua",
    ["16907564889"] = "Anastasia.luau",
    ["82311080830488"] = "Isabella.luau",
    ["71426585714528"] = "Primordius.luau",
    ["115142573873708"] = "Eternaxis.luau",
    ["106306383294064"] = "Titanora.luau",
    ["128486590418614"] = "Veylthar.luau",
    ["124331793246454"] = "Kronethys.luau",
    ["129270424652284"] = "Excalyros.luau",
    ["115788236442816"] = "Hyperionis.luau",
    ["123179067991291"] = "Voragnar.luau",
    ["80692223709267"] = "Celesthor.luau",
    ["109073199927285"] = "Drakonis Core.Moon",
    ["132214833492664"] = "Solypharion.Moon",
    ["136272288120249"] = "Zenithros.Moon",
    ["124809626273666"] = "OmegaDrax.Moon",
    ["140564479075599"] = "Colossara.Moon",
    ["90048768291999"] = "Supremara.Moon",
    ["106990445590115"] = "Astravor.Moon",
    ["83059641016557"] = "Eternadrax.luau",
    ["121198792957406"] = "Titanexus.Moon",
    ["127314070251555"] = "Kronarion.luau",
    ["94279945101354"] = "Aethel.luau",
    ["102015438526250"] = "Aevum.Moon",
    ["133719960214587"] = "Aetherium.Moon",
    ["104647821569857"] = "Akasha.lua",
    ["77765116337777"] = "Alakir.luau",
    ["77925588359671"] = "Alcyoneus.luau",
    ["140416344843929"] = "Aldrazar.luau",
    ["80260282334922"] = "Almagest.luau",
    ["78606986252533"] = "Ananta.Moon",
    ["13189735542"] = "Love.Moon",
    ["109259215974512"] = "Arcanix.Moon",
    ["105555311806207"] = "Arclight.Moon",
    ["119865329453489"] = "Aethra.Moon",
    ["16646849903"] = "Astraeus.N",
    ["136888805396223"] = "Avalon.N",
    ["76767617693575"] = "Axanar.n",
    ["140536326097029"] = "Azimuth.LOVE",
    ["86442735053775"] = "Belexus.Moon",
    ["136195038598165"] = "Dragon.lua",
    ["16653555262"] = "HoleH.N",
    ["17318749867"] = "Draconis Astra.Lua",
    ["122075434066550"] = "Ignis Celestia.lua",
    ["13305899582"] = "Astraghon.Lua",
    ["15423053861"] = "Caelumdraco.lua",
    ["137624695396050"] = "Solardrakon.lua",
    ["72462386094083"] = "Cosmydrax.lua",
    ["118199959729871"] = "Galaxion.Moon",
    ["124333399025205"] = "Orbis Draco.Moon",
    ["109832974748994"] = "Stellardrake.Moon",
    ["88264996806108"] = "Voidwyrm.Moon",
    ["125318037924040"] = "Lunardracarys.Moon",
    ["80688688944603"] = "Nebulonax.Moon",
    ["116739501459923"] = "Astralis Draco.Moon",
    ["81823526068423"] = "Solarion",
    ["108207853263201"] = "Terraghon.Moon",
    ["91116134990736"] = "Ignis",
    ["123468479998097"] = "Vermithrax",
    ["83491582463374"] = "Drakkar",
    ["74017761169031"] = "Fafnir",
    ["90264115537157"] = "Bahamut",
    ["135880624242201"] = "Tiamat",
    ["102429912667575"] = "Ancalagon",
    ["113604074601559"] = "Glaurung",
    ["103207450918669"] = "Sancellar",
    ["94952794697974"] = "Pyrausta",
    ["110132881708746"] = "Ouroboros",
    ["77456193125343"] = "Vritra",
    ["15297409281"] = "Ladon",
    ["70380018483320"] = "Nidhogg",
    ["77650651226156"] = "Quetzalcoatl",
    ["92092980656514"] = "Ryujin",
    ["118909003573676"] = "Shenlong",
    ["100438336521838"] = "Zmey",
    ["97639361445495"] = "Leviathan",
    ["139747517558790"] = "Wyrm",
    ["119574637420814"] = "Cailleach",
    ["126691209907714"] = "Draco",
    ["92614810259450"] = "Orochi",
    ["93751483762469"] = "Norbert",
    ["128152215267107"] = "Saphira",
    ["103421172373151"] = "Kalessin",
    ["78320694285708"] = "Puff",
    ["91791791825370"] = "Maleficent",
    ["94478161920361"] = "Toothless",
    ["125482389638298"] = "Elliot",
    ["84167547691677"] = "Figment",
    ["133326397883139"] = "Charizard",
    ["107549051862531"] = "Rathalos",
    ["135550636763763"] = "Alduin",
    ["140481779622210"] = "Spyro",
    ["6452292184"] = "CyanBloodbane",
    ["7044096177"] = "Khellendros",
    ["94373736738199"] = "Bheithir",
    ["138423548806566"] = "Grael",
    ["9075479275"] = "Voltrex",
    ["14259358984"] = "Ignacia",
    ["137304638496247"] = "Terrox",
    ["85442257107616"] = "Brume",
    ["84669620094641"] = "Zephyros",
    ["107480390436880"] = "Solarius",
    ["87516680797104"] = "Obsidian",
    ["76258615865952"] = "Granite",
    ["102353841629856"] = "Cinder",
    ["77294570564057"] = "Ember",
    ["132451615664022"] = "Blaze",
    ["118413473376604"] = "Inferno",
    ["116178423114975"] = "Frost",
    ["137806505974682"] = "Glacier",
    ["84092606596698"] = "Cyclone",
    ["131936189586468"] = "Quake",
    ["105171425275249"] = "Abyss",
    ["76964310785698"] = "Nadir",
    ["140378601517716"] = "Tremor",
    ["92127752062811"] = "Nebulor",
    ["87734613418457"] = "Quasarth",
    ["121439935748881"] = "Pulsara",
    ["103875406370088"] = "Vel'kor",
}

local success, guiError = pcall(function()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "ArceusXNeoGUI_" .. tostring(os.time())
    ScreenGui.Enabled = true
    ScreenGui.ResetOnSpawn = false -- Mencegah GUI hilang saat respawn
    ScreenGui.Parent = game.CoreGui -- Selalu di CoreGui agar tetap ada saat respawn/mati

    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0, 200, 0, 192)
    Frame.Position = UDim2.new(0.5, -100, 0.5, -96)
    Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame.Parent = ScreenGui
    Frame.Active = true
    Frame.Draggable = true

    local FrameCorner = Instance.new("UICorner")
    FrameCorner.CornerRadius = UDim.new(0, 12)
    FrameCorner.Parent = Frame

    local FrameGradient = Instance.new("UIGradient")
    FrameGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(100, 255, 255)), -- Neon Cyan
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 120, 255)), -- Blue
        ColorSequenceKeypoint.new(1, Color3.fromRGB(220, 220, 220)) -- Soft White
    })
    FrameGradient.Rotation = 90
    FrameGradient.Parent = Frame

    -- Animate gradient offset
    local function animateGradient(gradient)
        while true do
            TweenService:Create(gradient, TweenInfo.new(5, Enum.EasingStyle.Linear), { Offset = Vector2.new(1, 0) }):Play()
            wait(5)
            TweenService:Create(gradient, TweenInfo.new(5, Enum.EasingStyle.Linear), { Offset = Vector2.new(-1, 0) }):Play()
            wait(5)
        end
    end
    spawn(function() animateGradient(FrameGradient) end)

    local FrameShadow = Instance.new("UIStroke")
    FrameShadow.Thickness = 2
    FrameShadow.Color = Color3.fromRGB(50, 50, 50)
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
    CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CloseButton.Text = "X"
    CloseButton.TextColor3 = Color3.fromRGB(30, 30, 30)
    CloseButton.TextTransparency = 0.1
    CloseButton.Font = Enum.Font.GothamBold
    CloseButton.TextSize = 14
    CloseButton.Parent = Frame

    local CloseButtonCorner = Instance.new("UICorner")
    CloseButtonCorner.CornerRadius = UDim.new(0, 6)
    CloseButtonCorner.Parent = CloseButton

    local CloseButtonGradient = Instance.new("UIGradient")
    CloseButtonGradient.Color = FrameGradient.Color
    CloseButtonGradient.Rotation = 90
    CloseButtonGradient.Parent = CloseButton
    spawn(function() animateGradient(CloseButtonGradient) end)

    CloseButton.MouseEnter:Connect(function()
        TweenService:Create(CloseButton, TweenInfo.new(0.2), { Size = UDim2.new(0, 30, 0, 30) }):Play()
    end)
    CloseButton.MouseLeave:Connect(function()
        TweenService:Create(CloseButton, TweenInfo.new(0.2), { Size = UDim2.new(0, 28, 0, 28) }):Play()
    end)

    CloseButton.MouseButton1Click:Connect(function()
        ScreenGui.Enabled = false
    end)

    local TextBox = Instance.new("TextBox")
    TextBox.Size = UDim2.new(0, 160, 0, 28)
    TextBox.Position = UDim2.new(0, 4, 0, 4)
    TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextBox.Text = "Enter Place ID Here"
    TextBox.TextColor3 = Color3.fromRGB(30, 30, 30)
    TextBox.TextTransparency = 0.1
    TextBox.Font = Enum.Font.Gotham
    TextBox.TextSize = 14
    TextBox.ClearTextOnFocus = true
    TextBox.Parent = Frame

    local TextBoxCorner = Instance.new("UICorner")
    TextBoxCorner.CornerRadius = UDim.new(0, 6)
    TextBoxCorner.Parent = TextBox

    local TextBoxGradient = Instance.new("UIGradient")
    TextBoxGradient.Color = FrameGradient.Color
    TextBoxGradient.Rotation = 90
    TextBoxGradient.Parent = TextBox
    spawn(function() animateGradient(TextBoxGradient) end)

    TextBox.MouseEnter:Connect(function()
        TweenService:Create(TextBox, TweenInfo.new(0.2), { Size = UDim2.new(0, 162, 0, 30) }):Play()
    end)
    TextBox.MouseLeave:Connect(function()
        TweenService:Create(TextBox, TweenInfo.new(0.2), { Size = UDim2.new(0, 160, 0, 28) }):Play()
    end)

    local AutoFoundButton = Instance.new("TextButton")
    AutoFoundButton.Size = UDim2.new(0, 160, 0, 28)
    AutoFoundButton.Position = UDim2.new(0, 4, 0, 36)
    AutoFoundButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    AutoFoundButton.Text = "Auto Found Place ID"
    AutoFoundButton.TextColor3 = Color3.fromRGB(30, 30, 30)
    AutoFoundButton.TextTransparency = 0.1
    AutoFoundButton.Font = Enum.Font.Gotham
    AutoFoundButton.TextSize = 14
    AutoFoundButton.Parent = Frame

    local AutoFoundButtonCorner = Instance.new("UICorner")
    AutoFoundButtonCorner.CornerRadius = UDim.new(0, 6)
    AutoFoundButtonCorner.Parent = AutoFoundButton

    local AutoFoundButtonGradient = Instance.new("UIGradient")
    AutoFoundButtonGradient.Color = FrameGradient.Color
    AutoFoundButtonGradient.Rotation = 90
    AutoFoundButtonGradient.Parent = AutoFoundButton
    spawn(function() animateGradient(AutoFoundButtonGradient) end)

    AutoFoundButton.MouseEnter:Connect(function()
        TweenService:Create(AutoFoundButton, TweenInfo.new(0.2), { Size = UDim2.new(0, 162, 0, 30) }):Play()
    end)
    AutoFoundButton.MouseLeave:Connect(function()
        TweenService:Create(AutoFoundButton, TweenInfo.new(0.2), { Size = UDim2.new(0, 160, 0, 28) }):Play()
    end)

    local PremiumButton = Instance.new("TextButton")
    PremiumButton.Size = UDim2.new(0, 160, 0, 28)
    PremiumButton.Position = UDim2.new(0, 4, 0, 68)
    PremiumButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    PremiumButton.Text = "Tired of Getting Key?, Buy Premium"
    PremiumButton.TextColor3 = Color3.fromRGB(30, 30, 30)
    PremiumButton.TextTransparency = 0.1
    PremiumButton.Font = Enum.Font.Gotham
    PremiumButton.TextSize = 12
    PremiumButton.TextWrapped = true
    PremiumButton.Parent = Frame

    local PremiumButtonCorner = Instance.new("UICorner")
    PremiumButtonCorner.CornerRadius = UDim.new(0, 6)
    PremiumButtonCorner.Parent = PremiumButton

    local PremiumButtonGradient = Instance.new("UIGradient")
    PremiumButtonGradient.Color = FrameGradient.Color
    PremiumButtonGradient.Rotation = 90
    PremiumButtonGradient.Parent = PremiumButton
    spawn(function() animateGradient(PremiumButtonGradient) end)

    PremiumButton.MouseEnter:Connect(function()
        TweenService:Create(PremiumButton, TweenInfo.new(0.2), { Size = UDim2.new(0, 162, 0, 30) }):Play()
    end)
    PremiumButton.MouseLeave:Connect(function()
        TweenService:Create(PremiumButton, TweenInfo.new(0.2), { Size = UDim2.new(0, 160, 0, 28) }):Play()
    end)

    local HallOfShameButton = Instance.new("TextButton")
    HallOfShameButton.Size = UDim2.new(0, 160, 0, 28)
    HallOfShameButton.Position = UDim2.new(0, 4, 0, 100)
    HallOfShameButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    HallOfShameButton.Text = "Hall Of Shame"
    HallOfShameButton.TextColor3 = Color3.fromRGB(30, 30, 30)
    HallOfShameButton.TextTransparency = 0.1
    HallOfShameButton.Font = Enum.Font.Gotham
    HallOfShameButton.TextSize = 14
    HallOfShameButton.TextWrapped = true
    HallOfShameButton.Parent = Frame

    local HallOfShameButtonCorner = Instance.new("UICorner")
    HallOfShameButtonCorner.CornerRadius = UDim.new(0, 6)
    HallOfShameButtonCorner.Parent = HallOfShameButton

    local HallOfShameButtonGradient = Instance.new("UIGradient")
    HallOfShameButtonGradient.Color = FrameGradient.Color
    HallOfShameButtonGradient.Rotation = 90
    HallOfShameButtonGradient.Parent = HallOfShameButton
    spawn(function() animateGradient(HallOfShameButtonGradient) end)

    HallOfShameButton.MouseEnter:Connect(function()
        TweenService:Create(HallOfShameButton, TweenInfo.new(0.2), { Size = UDim2.new(0, 162, 0, 30) }):Play()
    end)
    HallOfShameButton.MouseLeave:Connect(function()
        TweenService:Create(HallOfShameButton, TweenInfo.new(0.2), { Size = UDim2.new(0, 160, 0, 28) }):Play()
    end)

    local DiscordButton = Instance.new("TextButton")
    DiscordButton.Size = UDim2.new(0, 160, 0, 28)
    DiscordButton.Position = UDim2.new(0, 4, 0, 132)
    DiscordButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    DiscordButton.Text = "Join Our Discord Server (Optional)"
    DiscordButton.TextColor3 = Color3.fromRGB(30, 30, 30)
    DiscordButton.TextTransparency = 0.1
    DiscordButton.Font = Enum.Font.Gotham
    DiscordButton.TextSize = 12
    DiscordButton.TextWrapped = true
    DiscordButton.Parent = Frame

    local DiscordButtonCorner = Instance.new("UICorner")
    DiscordButtonCorner.CornerRadius = UDim.new(0, 6)
    DiscordButtonCorner.Parent = DiscordButton

    local DiscordButtonGradient = Instance.new("UIGradient")
    DiscordButtonGradient.Color = FrameGradient.Color
    DiscordButtonGradient.Rotation = 90
    DiscordButtonGradient.Parent = DiscordButton
    spawn(function() animateGradient(DiscordButtonGradient) end)

    DiscordButton.MouseEnter:Connect(function()
        TweenService:Create(DiscordButton, TweenInfo.new(0.2), { Size = UDim2.new(0, 162, 0, 30) }):Play()
    end)
    DiscordButton.MouseLeave:Connect(function()
        TweenService:Create(DiscordButton, TweenInfo.new(0.2), { Size = UDim2.new(0, 160, 0, 28) }):Play()
    end)

    local function executeScript(placeId)
        local fileName = GameScripts[placeId]
        if not fileName then
            warn("❌ No script found for Place ID", placeId)
            StarterGui:SetCore("SendNotification", {
                Title = "ArceusXArchive",
                Text = "⚠️ No script available for Place ID " .. placeId,
                Duration = 5
            })
            TextBox.Text = "Enter Place ID Here"
            return
        end

        local url = getBaseUrl()
        if not url then
            warn("❌ URL decoding failed")
            StarterGui:SetCore("SendNotification", {
                Title = "ArceusXArchive",
                Text = "⚠️ Failed to load script: URL error.",
                Duration = 5
            })
            TextBox.Text = "Enter Place ID Here"
            return
        end
        url = url .. fileName

        local success, result = pcall(function()
            local scriptContent = game:HttpGet(url)
            if not scriptContent or scriptContent == "" then
                error("Empty or invalid script content for Place ID " .. placeId .. " at " .. url)
            end
            return loadstring(scriptContent)()
        end)

        if not success then
            warn("❌ Failed to load script for Place ID", placeId, ":", result)
            StarterGui:SetCore("SendNotification", {
                Title = "ArceusXArchive",
                Text = "⚠️ Script Not Supported: " .. tostring(result),
                Duration = 5
            })
        else
            StarterGui:SetCore("SendNotification", {
                Title = "ArceusXArchive",
                Text = "✅ Script for Place ID " .. placeId .. " successfully executed!",
                Duration = 5
            })
        end
        TextBox.Text = "Enter Place ID Here"
    end

    TextBox.FocusLost:Connect(function(enterPressed)
        if not enterPressed then return end
        executeScript(TextBox.Text)
    end)

    AutoFoundButton.MouseButton1Click:Connect(function()
        local successNekoi, resultNekoi = pcall(function()
            return loadstring(game:HttpGet("https://raw.githubusercontent.com/ArceusXArchivezx/Nekoi/refs/heads/main/%E5%81%A5%E5%BA%B7%E3%81%AE%E3%81%9F%E3%82%81%E3%81%AB%E6%B0%B4%E3%82%92%E9%A3%B2%E3%81%BF%E3%81%BE%E3%81%97%E3%82%87%E3%81%86"))()
        end)
        if not successNekoi then
            warn("❌ Failed to load script:", resultNekoi)
            StarterGui:SetCore("SendNotification", {
                Title = "ArceusXArchive",
                Text = "⚠️ Failed to load script: " .. tostring(resultNekoi),
                Duration = 5
            })
        else
            StarterGui:SetCore("SendNotification", {
                Title = "ArceusXArchive",
                Text = "✅ Script successfully executed!",
                Duration = 5
            })
        end
    end)

    PremiumButton.MouseButton1Click:Connect(function()
        local premiumUrl = "https://theleviathan.my.canva.site/"
        local success, errorMsg = pcall(function()
            setclipboard(premiumUrl)
        end)
        if success then
            StarterGui:SetCore("SendNotification", {
                Title = "ArceusXArchive",
                Text = "✅ Premium URL copied to clipboard!",
                Duration = 5
            })
        else
            warn("❌ Failed to copy Premium URL:", errorMsg)
            StarterGui:SetCore("SendNotification", {
                Title = "ArceusXArchive",
                Text = "⚠️ Failed to copy Premium URL: " .. tostring(errorMsg),
                Duration = 5
            })
        end
    end)

    HallOfShameButton.MouseButton1Click:Connect(function()
        local hallOfShameUrl = "https://theleviathan.my.canva.site/hallofshame"
        local success, errorMsg = pcall(function()
            setclipboard(hallOfShameUrl)
        end)
        if success then
            StarterGui:SetCore("SendNotification", {
                Title = "ArceusXArchive",
                Text = "✅ Hall Of Shame URL copied to clipboard!",
                Duration = 5
            })
        else
            warn("❌ Failed to copy Hall Of Shame URL:", errorMsg)
            StarterGui:SetCore("SendNotification", {
                Title = "ArceusXArchive",
                Text = "⚠️ Failed to copy Hall Of Shame URL: " .. tostring(errorMsg),
                Duration = 5
            })
        end
    end)

    DiscordButton.MouseButton1Click:Connect(function()
        local discordUrl = "https://discord.gg/DW8apaMGYR"
        local success, errorMsg = pcall(function()
            setclipboard(discordUrl)
        end)
        if success then
            StarterGui:SetCore("SendNotification", {
                Title = "ArceusXArchive",
                Text = "✅ Discord Server URL copied to clipboard!",
                Duration = 5
            })
        else
            warn("❌ Failed to copy Discord URL:", errorMsg)
            StarterGui:SetCore("SendNotification", {
                Title = "ArceusXArchive",
                Text = "⚠️ Failed to copy Discord URL: " .. tostring(errorMsg),
                Duration = 5
            })
        end
    end)
end)

if not success then
    warn("❌ GUI initialization failed:", guiError)
    StarterGui:SetCore("SendNotification", {
        Title = "ArceusXArchive",
        Text = "⚠️ Failed to initialize GUI: " .. tostring(guiError),
        Duration = 5
    })
end
