local StarterGui = game:GetService("StarterGui")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")

local function decodeBaseUrl()
    local fragments = {
        {id = 6, data = "cmVmsy9oZWFkcy9tYWluLw==", dummy = false}, -- 
        {id = 9, dummy = true, data = "ZHVtbXkx"}, -- dummy
        {id = 2, data = "cmF3Lg==", dummy = false}, -- 
        {id = 4, data = "QXJjZXVzWEFyY2hpdmV6eHgv", dummy = false}, -- 
        {id = 1, data = "aHR0cHM6Ly8=", dummy = false}, -- 
        {id = 7, dummy = true, data = "ZHVtbXky"}, -- dummy
        {id = 3, data = "Z2l0aHVidXNlcmNvbnRlbnQuY29tLw==", dummy = false}, -- 
        {id = 5, data = "R2FtZVFYLw==", dummy = false}, -- 
        {id = 8, dummy = true, data = "ZHVtbXkz"} -- dummy
    }
    local decodedParts = {}

    for _, frag in ipairs(fragments) do
        if not frag.dummy then
            local decoded = ""
            local success, result = pcall(function()
                -- Encode as JSON string and decode to handle Base64
                local json = HttpService:JSONEncode({data = frag.data})
                local decodedJson = HttpService:JSONDecode(json)
                -- Manual Base64 decode as fallback
                local base64 = decodedJson.data
                local base64Chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
                local binary = ""
                local padding = 0
                for i = 1, #base64 do
                    if base64:sub(i, i) == "=" then padding = padding + 1 end
                end
                for i = 1, #base64 - padding do
                    local char = base64:sub(i, i)
                    local value = string.find(base64Chars, char, 1, true) - 1
                    if value then
                        binary = binary .. string.format("%06b", value)
                    else
                        error("Invalid Base64 character: " .. char)
                    end
                end
                local decodedBytes = {}
                for i = 1, #binary, 8 do
                    local byte = string.sub(binary, i, i + 7)
                    if #byte == 8 then
                        decodedBytes[#decodedBytes + 1] = tonumber(byte, 2)
                    end
                end
                for _, byte in ipairs(decodedBytes) do
                    decoded = decoded .. string.char(byte)
                end
                return decoded
            end)
            if not success then
                warn("Base64 decoding failed for part", frag.id, ":", result)
                return nil
            end
            decodedParts[frag.id] = decoded
        end
    end

    -- Concatenate parts in correct order
    local decoded = ""
    for i = 1, #decodedParts do
        if not decodedParts[i] then
            warn("Missing part at index", i)
            return nil
        end
        decoded = decoded .. decodedParts[i]
    end
    return decoded
end

local GameScripts = {
    ["99% Fail Glass Bridge Obby"] = "Script.lua",
    ["Easy Squid Bridge! Glass Bridge!"] = "Money.luau",
    ["+$1,000 Every Correct Glass"] = "Qwq.luau",
    ["Pick Right Path to RICH!"] = "Metode.lua",
    ["Legends Of Speed"] = "Terpercaya.com",
    ["Ninja Legends"] = "Indo.com",
    ["K-Pop Demon Hunter Trolling Tower"] = "Clean.luau",
    ["$15,000 Glass Bridge (Squid Game Obby)"] = "Money1.luau",
    ["Cross Glass Bridge to RICH!"] = "GV.lua",
    ["$45,600 Jump Rope"] = "Roblox.lua",
    ["Brookhaven"] = "Korea.com",
    ["99 Nights in the Forest Glass Bridge"] = "Senpei.com",
    ["Bloxfruits (Coming Soon)"] = "",
}

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "ArceusXNeoGUI"

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 200, 0, 300)
Frame.Position = UDim2.new(0.5, -100, 0.5, -150)
Frame.BackgroundColor3 = Color3.fromRGB(180, 160, 190) -- Muted lavender
Frame.Parent = ScreenGui
Frame.Active = true
Frame.Draggable = true

local FrameCorner = Instance.new("UICorner")
FrameCorner.CornerRadius = UDim.new(0, 12)
FrameCorner.Parent = Frame

local FrameGradient = Instance.new("UIGradient")
FrameGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(180, 160, 190)), -- Muted lavender
    ColorSequenceKeypoint.new(1, Color3.fromRGB(230, 220, 200)) -- Pale cream
})
FrameGradient.Rotation = 90 -- Vertical gradient
FrameGradient.Parent = Frame

local FrameShadow = Instance.new("UIStroke")
FrameShadow.Thickness = 2
FrameShadow.Color = Color3.fromRGB(160, 180, 160) -- Soft sage outline
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
CloseButton.BackgroundColor3 = Color3.fromRGB(160, 180, 160) -- Soft sage
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(190, 180, 170) -- Delicate taupe text
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 14
CloseButton.Parent = Frame

local CloseButtonCorner = Instance.new("UICorner")
CloseButtonCorner.CornerRadius = UDim.new(0, 6)
CloseButtonCorner.Parent = CloseButton

local CloseButtonGradient = Instance.new("UIGradient")
CloseButtonGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(160, 180, 160)), -- Soft sage
    ColorSequenceKeypoint.new(1, Color3.fromRGB(230, 220, 200)) -- Pale cream
})
CloseButtonGradient.Rotation = 90 -- Vertical gradient
CloseButtonGradient.Parent = CloseButton

CloseButton.MouseEnter:Connect(function()
    TweenService:Create(CloseButton, TweenInfo.new(0.2), { Size = UDim2.new(0, 30, 0, 30), BackgroundColor3 = Color3.fromRGB(230, 220, 200) }):Play()
end)
CloseButton.MouseLeave:Connect(function()
    TweenService:Create(CloseButton, TweenInfo.new(0.2), { Size = UDim2.new(0, 28, 0, 28), BackgroundColor3 = Color3.fromRGB(160, 180, 160) }):Play()
end)

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui.Enabled = false
end)

local Dropdown = Instance.new("TextButton")
Dropdown.Size = UDim2.new(1, -10, 0, 36)
Dropdown.Position = UDim2.new(0, 5, 0, 40)
Dropdown.BackgroundColor3 = Color3.fromRGB(160, 180, 160) -- Soft sage
Dropdown.Text = "▶ Select Game"
Dropdown.TextColor3 = Color3.fromRGB(190, 180, 170) -- Delicate taupe text
Dropdown.Font = Enum.Font.Gotham
Dropdown.TextSize = 14
Dropdown.Parent = Frame

local DropdownCorner = Instance.new("UICorner")
DropdownCorner.CornerRadius = UDim.new(0, 6)
DropdownCorner.Parent = Dropdown

local DropdownGradient = Instance.new("UIGradient")
DropdownGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(160, 180, 160)), -- Soft sage
    ColorSequenceKeypoint.new(1, Color3.fromRGB(230, 220, 200)) -- Pale cream
})
DropdownGradient.Rotation = 90 -- Vertical gradient
DropdownGradient.Parent = Dropdown

Dropdown.MouseEnter:Connect(function()
    TweenService:Create(Dropdown, TweenInfo.new(0.2), { Size = UDim2.new(1, -8, 0, 38), BackgroundColor3 = Color3.fromRGB(230, 220, 200) }):Play()
end)
Dropdown.MouseLeave:Connect(function()
    TweenService:Create(Dropdown, TweenInfo.new(0.2), { Size = UDim2.new(1, -10, 0, 36), BackgroundColor3 = Color3.fromRGB(160, 180, 160) }):Play()
end)

local ListFrame = Instance.new("ScrollingFrame")
ListFrame.Size = UDim2.new(1, 0, 0, 0)
ListFrame.Position = UDim2.new(0, 0, 0, 80)
ListFrame.BackgroundColor3 = Color3.fromRGB(230, 220, 200) -- Pale cream
ListFrame.ClipsDescendants = true
ListFrame.Parent = Frame
ListFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ListFrame.ScrollBarThickness = 4
ListFrame.ScrollBarImageColor3 = Color3.fromRGB(190, 180, 170) -- Delicate taupe scrollbar
ListFrame.BackgroundTransparency = 0.1

local ListFrameCorner = Instance.new("UICorner")
ListFrameCorner.CornerRadius = UDim.new(0, 6)
ListFrameCorner.Parent = ListFrame

local isOpen = false
local function toggleListFrame()
    isOpen = not isOpen
    local maxHeight = 200
    local contentHeight = #ListFrame:GetChildren() * 38 -- Button height (34) + padding (4)
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
    Btn.BackgroundColor3 = Color3.fromRGB(230, 220, 200) -- Pale cream
    Btn.Text = gameName
    Btn.TextColor3 = Color3.fromRGB(190, 180, 170) -- Delicate taupe text
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
        ColorSequenceKeypoint.new(0, Color3.fromRGB(230, 220, 200)), -- Pale cream
        ColorSequenceKeypoint.new(1, Color3.fromRGB(160, 180, 160)) -- Soft sage
    })
    BtnGradient.Rotation = 90 -- Vertical gradient
    BtnGradient.Parent = Btn

    Btn.MouseEnter:Connect(function()
        TweenService:Create(Btn, TweenInfo.new(0.2), { Size = UDim2.new(1, -3, 0, 36), BackgroundColor3 = Color3.fromRGB(180, 160, 190) }):Play()
    end)
    Btn.MouseLeave:Connect(function()
        TweenService:Create(Btn, TweenInfo.new(0.2), { Size = UDim2.new(1, -5, 0, 34), BackgroundColor3 = Color3.fromRGB(230, 220, 200) }):Play()
    end)

    Btn.MouseButton1Click:Connect(function()
        Dropdown.Text = "▶ " .. gameName
        toggleListFrame()

        local url = decodeBaseUrl()
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
            return loadstring(game:HttpGet(url))()
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
