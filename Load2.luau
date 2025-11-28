local HttpGet = game.HttpGet
local load = loadstring
local TS = game:GetService("TweenService")
local P = game:GetService("Players").LocalPlayer
local M = game:GetService("MarketplaceService")
local Run = game:GetService("RunService")

local sg = Instance.new("ScreenGui")
sg.Name = "ArchiveXNebula"
sg.ResetOnSpawn = false
if syn and syn.protect_gui then syn.protect_gui(sg) end
sg.Parent = game:GetService("CoreGui") or gethui()


local Main = Instance.new("Frame", sg)
Main.Size = UDim2.new(0, 200, 0, 200)
Main.Position = UDim2.new(0.5, -100, 0.5, -100)
Main.BackgroundColor3 = Color3.fromRGB(30, 32, 48)
Main.Active = true
Main.Draggable = true
Instance.new("UICorner", Main).CornerRadius = UDim.new(0, 14)

local stroke = Instance.new("UIStroke", Main)
stroke.Color = Color3.fromRGB(85, 170, 255)
stroke.Thickness = 1.8


local Bar = Instance.new("Frame", Main)
Bar.Size = UDim2.new(1, 0, 0, 34)
Bar.BackgroundColor3 = Color3.fromRGB(45, 55, 90)
Instance.new("UICorner", Bar).CornerRadius = UDim.new(0, 14)

local Title = Instance.new("TextLabel", Bar)
Title.Size = UDim2.new(1, -40, 1, 0)
Title.BackgroundTransparency = 1
Title.Text = "ArchiveXNebula"
Title.TextColor3 = Color3.fromRGB(180, 210, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 14

local Close = Instance.new("TextButton", Bar)
Close.Size = UDim2.new(0, 26, 0, 26)
Close.Position = UDim2.new(1, -30, 0, 4)
Close.BackgroundColor3 = Color3.fromRGB(255, 90, 120)
Close.Text = "X"
Close.TextColor3 = Color3.new(1,1,1)
Close.Font = Enum.Font.GothamBold
Instance.new("UICorner", Close).CornerRadius = UDim.new(0, 8)
Close.MouseButton1Click:Connect(function() sg:Destroy() end)


local Scroll = Instance.new("ScrollingFrame", Main)
Scroll.Size = UDim2.new(1, -20, 1, -48)
Scroll.Position = UDim2.new(0, 10, 0, 38)
Scroll.BackgroundTransparency = 1
Scroll.ScrollBarThickness = 4
Scroll.ScrollBarImageColor3 = Color3.fromRGB(100, 180, 255)
Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y

local List = Instance.new("UIListLayout", Scroll)
List.Padding = UDim.new(0, 10)


local function btn(text, callback)
    local b = Instance.new("TextButton", Scroll)
    b.Size = UDim2.new(1, 0, 0, 44)
    b.BackgroundColor3 = Color3.fromRGB(50, 60, 95)
    b.Text = text
    b.TextColor3 = Color3.fromRGB(190, 220, 255)
    b.Font = Enum.Font.GothamSemibold
    b.TextSize = 15

    local corner = Instance.new("UICorner", b)
    corner.CornerRadius = UDim.new(0, 10)

    local btnStroke = Instance.new("UIStroke", b)
    btnStroke.Color = Color3.fromRGB(90, 160, 255)
    btnStroke.Thickness = 1.4
    btnStroke.Transparency = 0.5

    
    b.MouseEnter:Connect(function()
        TS:Create(b, TweenInfo.new(0.25), {BackgroundColor3 = Color3.fromRGB(70, 90, 140)}):Play()
    end)
    b.MouseLeave:Connect(function()
        TS:Create(b, TweenInfo.new(0.25), {BackgroundColor3 = Color3.fromRGB(50, 60, 95)}):Play()
    end)

    b.MouseButton1Click:Connect(callback)
end

btn("Mount Freemium", function()
    load(game:HttpGet("https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/UserPremiumUi.lua", true))()
end)

btn("Mount Premium", function()
    load(game:HttpGet("https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Whitelist", true))()
end)


spawn(function()
    local gameName = "Loading..."
    pcall(function() gameName = M:GetProductInfo(game.PlaceId).Name end)

    local notif = Instance.new("Frame", sg)
    notif.Size = UDim2.new(0, 380, 0, 150)
    notif.Position = UDim2.new(1, 20, 0, 20)
    notif.BackgroundColor3 = Color3.fromRGB(28, 32, 50)
    Instance.new("UICorner", notif).CornerRadius = UDim.new(0, 14)

    local nstroke = Instance.new("UIStroke", notif)
    nstroke.Color = Color3.fromRGB(90, 170, 255)
    nstroke.Thickness = 2

    local user = Instance.new("TextLabel", notif)
    user.Size = UDim2.new(1,-30,0,30); user.Position = UDim2.new(0,15,0,15)
    user.BackgroundTransparency = 1; user.Text = "Welcome, " .. P.DisplayName
    user.TextColor3 = Color3.fromRGB(130, 200, 255); user.Font = Enum.Font.GothamBold; user.TextSize = 18; user.TextXAlignment = "Left"

    local gameLbl = Instance.new("TextLabel", notif)
    gameLbl.Size = UDim2.new(1,-30,0,50); gameLbl.Position = UDim2.new(0,15,0,50)
    gameLbl.BackgroundTransparency = 1; gameLbl.Text = gameName
    gameLbl.TextColor3 = Color3.fromRGB(140, 220, 180); gameLbl.Font = Enum.Font.Gotham; gameLbl.TextSize = 15; gameLbl.TextWrapped = true; gameLbl.TextXAlignment = "Left"

    local timeLbl = Instance.new("TextLabel", notif)
    timeLbl.Size = UDim2.new(1,-30,0,30); timeLbl.Position = UDim2.new(0,15,0,105)
    timeLbl.BackgroundTransparency = 1; timeLbl.TextColor3 = Color3.fromRGB(180, 220, 255); timeLbl.Font = Enum.Font.GothamBold; timeLbl.TextSize = 20

    Run.Heartbeat:Connect(function()
        local t = os.date("*t")
        timeLbl.Text = string.format("%02d:%02d:%02d", t.hour, t.min, t.sec)
    end)

    TS:Create(notif, TweenInfo.new(0.6), {Position = UDim2.new(1,-400,0,20)}):Play()
    task.wait(8)
    TS:Create(notif, TweenInfo.new(0.5), {Position = UDim2.new(1,20,0,20)}):Play()
    task.wait(0.6)
    notif:Destroy()
end)
