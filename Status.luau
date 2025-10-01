local Status = "ONLINE" -- "ONLINE" / "OFFLINE"
local NoteType = "NOTE" -- Bisa WARNING / INFO / NOTICE
local Reason = "Nothing" -- Ubah sesuai kebutuhan

local ScriptToRun = function()
    print("Done")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ArceusXArchivezx/Game/refs/heads/main/Belanda.luau"))()
end

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "SimpleGuiLib"
ScreenGui.Parent = PlayerGui

local LoadingFrame = Instance.new("Frame")
LoadingFrame.Size = UDim2.new(0.35, 0, 0.35, 0)
LoadingFrame.Position = UDim2.new(0.325, 0, 0.3, 0)
LoadingFrame.BackgroundColor3 = Color3.fromRGB(40, 44, 52) -- Abu-abu gelap dengan nuansa biru
LoadingFrame.BorderSizePixel = 0
LoadingFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner", LoadingFrame)
UICorner.CornerRadius = UDim.new(0, 12)

local Shadow = Instance.new("UIStroke")
Shadow.Thickness = 2
Shadow.Color = Color3.fromRGB(20, 20, 20)
Shadow.Transparency = 0.7
Shadow.Parent = LoadingFrame

local NoteLabel = Instance.new("TextLabel")
NoteLabel.Size = UDim2.new(1, 0, 0.3, 0)
NoteLabel.BackgroundTransparency = 1
NoteLabel.Text = NoteType
NoteLabel.TextColor3 = Color3.fromRGB(255, 215, 105) -- Kuning keemasan
NoteLabel.Font = Enum.Font.GothamBold
NoteLabel.TextScaled = true
NoteLabel.Parent = LoadingFrame

local NoteStroke = Instance.new("UIStroke")
NoteStroke.Thickness = 1
NoteStroke.Color = Color3.fromRGB(30, 30, 30)
NoteStroke.Transparency = 0.5
NoteStroke.Parent = NoteLabel

local ReasonLabel = Instance.new("TextLabel")
ReasonLabel.Size = UDim2.new(1, 0, 0.3, 0)
ReasonLabel.Position = UDim2.new(0, 0, 0.3, 0)
ReasonLabel.BackgroundTransparency = 1
ReasonLabel.Text = "Reason: " .. Reason
ReasonLabel.TextColor3 = Color3.fromRGB(230, 230, 230) -- Putih lembut
ReasonLabel.Font = Enum.Font.Gotham
ReasonLabel.TextScaled = true
ReasonLabel.Parent = LoadingFrame

local StatusLabel = Instance.new("TextLabel")
StatusLabel.Size = UDim2.new(1, 0, 0.3, 0)
StatusLabel.Position = UDim2.new(0, 0, 0.6, 0)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text = "STATUS: " .. Status
StatusLabel.TextColor3 = (Status == "ONLINE") and Color3.fromRGB(80, 250, 123) or Color3.fromRGB(255, 85, 85) -- Hijau neon dan merah vibrant
StatusLabel.Font = Enum.Font.GothamBold
StatusLabel.TextScaled = true
StatusLabel.Parent = LoadingFrame

local StatusStroke = Instance.new("UIStroke")
StatusStroke.Thickness = 1
StatusStroke.Color = Color3.fromRGB(30, 30, 30)
StatusStroke.Transparency = 0.5
StatusStroke.Parent = StatusLabel

-- Loading Bar
local LoadingBarFrame = Instance.new("Frame")
LoadingBarFrame.Size = UDim2.new(1, -20, 0.1, 0)
LoadingBarFrame.Position = UDim2.new(0, 10, 0.85, 0)
LoadingBarFrame.BackgroundColor3 = Color3.fromRGB(60, 64, 72) -- Latar belakang loading bar
LoadingBarFrame.BorderSizePixel = 0
LoadingBarFrame.Parent = LoadingFrame

local LoadingBar = Instance.new("Frame")
LoadingBar.Size = UDim2.new(0, 0, 1, 0) -- Mulai dari lebar 0
LoadingBar.BackgroundColor3 = Color3.fromRGB(80, 250, 123) -- Warna hijau neon untuk loading
LoadingBar.BorderSizePixel = 0
LoadingBar.Parent = LoadingBarFrame

local LoadingBarCorner = Instance.new("UICorner", LoadingBar)
LoadingBarCorner.CornerRadius = UDim.new(0, 8)

-- Animasi Loading Bar
local TweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(
    10, -- Durasi animasi diubah menjadi 50 detik
    Enum.EasingStyle.Sine, -- Gaya animasi lembut
    Enum.EasingDirection.InOut,
    0, -- Jumlah pengulangan
    false, -- Tidak bolak-balik
    0 -- Delay
)
local tween = TweenService:Create(LoadingBar, tweenInfo, {Size = UDim2.new(1, -20, 1, 0)})
tween:Play()

task.wait(1) -- Menyesuaikan waktu tunggu dengan durasi animasi
ScreenGui:Destroy()

if Status == "ONLINE" then
    ScriptToRun()
else
    warn("Script OFFLINE")
end
