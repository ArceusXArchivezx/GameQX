local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui", 10)

local THEME = {
    bgStart = Color3.fromRGB(30, 10, 10),
    bgEnd   = Color3.fromRGB(15, 5, 5),
    text    = Color3.fromRGB(255, 240, 240),
    subtext = Color3.fromRGB(220, 180, 180),
    corner  = 12,
}

local NOTIFICATION_TYPES = {
    success = {
        accent = Color3.fromRGB(0, 255, 100),
        stroke = Color3.fromRGB(0, 255, 100),
    },
    error = {
        accent = Color3.fromRGB(255, 60, 60),
        stroke = Color3.fromRGB(255, 60, 60),
    },
    warning = {
        accent = Color3.fromRGB(255, 200, 0),
        stroke = Color3.fromRGB(255, 200, 0),
    },
    info = {
        accent = Color3.fromRGB(255, 80, 80),
        stroke = Color3.fromRGB(255, 80, 80),
    },
    custom = {
        accent = Color3.fromRGB(255, 80, 80),
        stroke = Color3.fromRGB(255, 80, 80),
    }
}

local function getTypeColors(notifyType)
    notifyType = notifyType and notifyType:lower() or "info"
    return NOTIFICATION_TYPES[notifyType] or NOTIFICATION_TYPES.info
end

local function notify(title, msg, dur, notifyType)
    if not playerGui then return end
    dur = dur or 3

    local colors = getTypeColors(notifyType)

    local sg = Instance.new("ScreenGui")
    sg.Name = "NovaNotify"
    sg.ResetOnSpawn = false
    sg.IgnoreGuiInset = true
    sg.Parent = playerGui

    local f = Instance.new("Frame")
    f.Size = UDim2.new(0, 320, 0, 0)
    f.Position = UDim2.new(0.5, -160, -0.15, 0)
    f.BackgroundColor3 = THEME.bgStart
    f.BorderSizePixel = 0
    f.ClipsDescendants = true
    f.Parent = sg

    local gradient = Instance.new("UIGradient")
    gradient.Color = ColorSequence.new(THEME.bgStart, THEME.bgEnd)
    gradient.Rotation = 90
    gradient.Parent = f

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, THEME.corner)
    corner.Parent = f

    local stroke = Instance.new("UIStroke")
    stroke.Color = colors.stroke
    stroke.Thickness = 1.5
    stroke.Transparency = 0.5
    stroke.Parent = f

    local titleLbl = Instance.new("TextLabel")
    titleLbl.Size = UDim2.new(1, -20, 0, 32)
    titleLbl.Position = UDim2.new(0, 10, 0, 8)
    titleLbl.BackgroundTransparency = 1
    titleLbl.Font = Enum.Font.GothamBold
    titleLbl.Text = title
    titleLbl.TextColor3 = THEME.text
    titleLbl.TextSize = 20
    titleLbl.TextXAlignment = Enum.TextXAlignment.Left
    titleLbl.Parent = f

    local msgLbl = Instance.new("TextLabel")
    msgLbl.Size = UDim2.new(1, -20, 0, 50)
    msgLbl.Position = UDim2.new(0, 10, 0, 40)
    msgLbl.BackgroundTransparency = 1
    msgLbl.Font = Enum.Font.Gotham
    msgLbl.Text = msg
    msgLbl.TextColor3 = THEME.subtext
    msgLbl.TextSize = 16
    msgLbl.TextWrapped = true
    msgLbl.TextXAlignment = Enum.TextXAlignment.Left
    msgLbl.TextYAlignment = Enum.TextYAlignment.Top
    msgLbl.Parent = f

    local enter = TweenService:Create(f, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 320, 0, 90),
        Position = UDim2.new(0.5, -160, 0.04, 0)
    })
    enter:Play()

    task.delay(dur, function()
        local exit = TweenService:Create(f, TweenInfo.new(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
            Size = UDim2.new(0, 320, 0, 0),
            Position = UDim2.new(0.5, -160, -0.15, 0)
        })
        exit:Play()
        exit.Completed:Wait()
        sg:Destroy()
    end)
end

local placeId = tostring(game.PlaceId)

local scripts = {
    ["107639420156506"] = "https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower",
}

local url = scripts[placeId]

if url and url:match("^https?://") then
    notify("ArchiveXNova", "Game Supported\nPlace ID: " .. placeId .. "\nLoading...", 6, "info")

    task.spawn(function()
        local ok, err = pcall(function()
            loadstring(game:HttpGet(url, true))()
        end)
        if ok then
            notify("ArchiveXNova", "Game loaded successfully!", 4, "success")
        else
            notify("ArchiveXNova • Error", "Load failed:\n" .. tostring(err):sub(1, 140), 8, "error")
        end
    end)
else
    notify("ArchiveXNova", "Game not supported\nPlace ID: " .. placeId .. "\nReport To Dev", 8, "warning")
end
