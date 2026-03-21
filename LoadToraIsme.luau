local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local MarketplaceService = game:GetService("MarketplaceService")
local HttpService = game:GetService("HttpService")
local LocalizationService = game:GetService("LocalizationService")
local Stats = game:GetService("Stats")

local CONFIG = {
    ShowNotifications = true,
    NotificationDuration = 5,
    DebugMode = false
}

local BannedUsers = {
    [8048454992] = true,
    [9616617886] = true,
    [10305145595] = false
}

local function checkAndKick(player)
    if BannedUsers[player.UserId] then
        player:Kick("Tora Isme: You are on the Blacklist")
        if CONFIG.DebugMode then
            warn("Banned user kicked: " .. player.Name .. " (" .. player.UserId .. ")")
        end
    end
end

Players.PlayerAdded:Connect(checkAndKick)

for _, p in ipairs(Players:GetPlayers()) do
    checkAndKick(p)
end

local executor = "Unknown"
local request = request or http_request or syn and syn.request or fluxus and fluxus.request or krnl and krnl.request

if syn then
    executor = "Synapse X"
elseif krnl then
    executor = "Krnl"
elseif fluxus then
    executor = "Fluxus"
elseif getexecutorname then
    executor = getexecutorname()
elseif identifyexecutor then
    executor = identifyexecutor()
end

local placeIdMap = {}

local function addScript(placeId, url)
    placeIdMap[tostring(placeId)] = url
    if CONFIG.DebugMode then
        print("Added script for PlaceId: " .. placeId)
    end
end

addScript(124311897657957, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/BreakaLuckyBlock")
addScript(131623223084840, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/EscapeTsunamiForBrainrots")
addScript(119987266683883, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/SurviveLAVAforBrainrots")
addScript(138048509924404, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/SaveBrainrotfromLava")
addScript(135094773390024, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/EscapePoliceForBrainrots")
addScript(103571191458177, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/DigLegends")
addScript(135668295983945, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/1SkillPointLegends")
addScript(139489585993138, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/BlowUpandFall")
addScript(134763881293027, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/StealFromBrainrots")
addScript(134951244280326, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/ClimbForBrainrots")
addScript(120564326011184, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/BeaYouTuber")
addScript(72167803024670, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/FindWhoSlapped")
addScript(129315204746120, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/EscapeQuicksandforBrainrots")
addScript(72532006226238, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/LeafCollector")
addScript(83333932726271, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/TrapRun")
addScript(77499336428083, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/DrawARaft")
addScript(71812071769179, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/EscapeGuardstoStealBrainrots")
addScript(78326551441316, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/EscapeGettingCrushedForBrainrots")
addScript(113303333910928, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/DiveForBrainrots")
addScript(71228743840806, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/FishForLuckyBlocks")
addScript(89494216641846, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/ClimbWormTowerforBrainrots")
addScript(109533024287077, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/1SpeedEscapeforBrainrots")
addScript(139299356663913, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/JumpforBrainrots")
addScript(125055254587561, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/EscapeObbiesForBrainrots")
addScript(75843683571426, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/MyCatArmy")
addScript(131756752872026, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/DiveDown")
addScript(106685450523667, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/GlideforBrainrots")
addScript(76124655331395, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/SpearTraining")
addScript(90695455422761, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/JumptoStealBrainrots")
addScript(114204398207377, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/SurviveZombieArena")
addScript(94702395375549, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/RunForBrainrots")
addScript(90918200416523, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/SlapFights")
addScript(130594398886540, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/GardenHorizons")
addScript(88797686191630, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/SaveBrainrotsFromBackrooms")
addScript(110339581423462, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/1SpeedDinosaurEscape")
addScript(117735412151102, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/CatchBrainrotsFromRiver")
addScript(71827913900569, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/GrowBeanstalkForBrainrots")
addScript(106772177198260, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/ReelaBrainrot")
addScript(70654235200182, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/BaddieJumping")
addScript(114640202062357, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/SwingObbyforBrainrots")
addScript(74277864669743, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/FlyforBrainrots")
addScript(73982574886804, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/LaunchYourRocket")
addScript(83403180598996, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/ClimbtoInfinity")
addScript(118433033586507, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/SimpleSpells")
addScript(123657429151726, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/GuessMyNumber")
addScript(82031770257269, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/JumptoStealBrainrots")
addScript(109404397225572, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/MyFarmersMarket")
addScript(124473577469410, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/BeaLuckyBlock")
addScript(97365843755210, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/CutGrassforBrainrots")
addScript(88933961678687, "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/HyperSpeedRunner")

local currentPlaceId = tostring(game.PlaceId)
local url = placeIdMap[currentPlaceId]

local function showNotification(title, text, duration)
    if CONFIG.ShowNotifications then
        pcall(function()
            StarterGui:SetCore("SendNotification", {
                Title = title or "Tora Isme",
                Text = text,
                Duration = duration or CONFIG.NotificationDuration
            })
        end)
    end
    if CONFIG.DebugMode then
        print("[" .. (title or "Tora Isme") .. "] " .. text)
    end
end

local function executeScript(url)
    local success, result = pcall(function()
        local scriptContent = game:HttpGet(url)
        if scriptContent and scriptContent ~= "" then
            loadstring(scriptContent)()
            return true
        end
        return false
    end)
    
    if success and result then
        return true
    elseif not success then
        if CONFIG.DebugMode then
            warn("Error executing script: " .. tostring(result))
        end
        return false
    end
    return false
end

if url then
    showNotification("Tora Isme", "Game supported! Loading script...", 3)
    
    task.wait(1)
    
    task.spawn(function()
        local executed = executeScript(url)
        
        if executed then
            showNotification("Tora Isme", "Script loaded successfully!", 3)
            if CONFIG.DebugMode then
                print("Script executed for PlaceId: " .. currentPlaceId)
                print("Executor detected: " .. executor)
            end
        else
            showNotification("Tora Isme", "Failed to load script!", 5)
        end
    end)
else
    showNotification("Tora Isme", "This game is not supported yet.", 5)
    if CONFIG.DebugMode then
        print("Unsupported PlaceId: " .. currentPlaceId)
    end
end

if CONFIG.DebugMode then
    print("Tora Isme Loader - Version 1.0")
    print("Executor: " .. executor)
    print("PlaceId: " .. currentPlaceId)
    print("Supported Scripts: " .. #placeIdMap)
end
