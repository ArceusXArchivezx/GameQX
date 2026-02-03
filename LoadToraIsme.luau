local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local MarketplaceService = game:GetService("MarketplaceService")
local HttpService = game:GetService("HttpService")
local LocalizationService = game:GetService("LocalizationService")
local Stats = game:GetService("Stats")

local BannedUsers = {
    [8048454992] = true,
    [9616617886] = true,
    [10305145595] = false
}

local function checkAndKick(player)
    if BannedUsers[player.UserId] then
        player:Kick("Tora Isme: You are on the Blacklist")
    end
end

Players.PlayerAdded:Connect(checkAndKick)
for _, p in ipairs(Players:GetPlayers()) do
    checkAndKick(p)
end

local executor = "Unknown"
local request =
    request or
    http_request or
    syn and syn.request or
    fluxus and fluxus.request or
    krnl and krnl.request

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
end

-- all in One
addScript(124311897657957,"https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/BreakaLuckyBlock")
addScript(131623223084840,"https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/EscapeTsunamiForBrainrots")
addScript(119987266683883,"https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/SurviveLAVAforBrainrots")

local currentPlaceId = tostring(game.PlaceId)
local url = placeIdMap[currentPlaceId]

local webhookUrl =
    "https://proxy.sidetechroblox.com/discord/webhooks/1468154563117715549/wmNgY_j4AWnOdZTbwEgaqhFZDK_LxqGvZ1jDSZA99kwOUyU8QKudCAUBmXuggndr6ESz"

local joinTime = os.time()

local function getPing()
    local ping = "Unknown"
    pcall(function()
        ping = math.floor(
            Stats.Network.ServerStatsItem["Data Ping"]:GetValue()
        )
    end)
    return ping
end

local function sendToDiscord()
    if not request then return end

    local lp = Players.LocalPlayer
    if not lp then return end

    local gameName = "Unknown"
    pcall(function()
        gameName = MarketplaceService:GetProductInfo(game.PlaceId).Name
    end)

    local region = "Unknown"
    pcall(function()
        region = LocalizationService:GetCountryRegionForPlayerAsync(lp)
    end)

    local payload = {
        username = "Tora Isme",
        embeds = {{
            title = "Tora Isme Execution Log",
            color = 16729344,
            fields = {
                { name = "Username", value = lp.Name, inline = true },
                { name = "UserId", value = tostring(lp.UserId), inline = true },
                { name = "Account Age", value = lp.AccountAge .. " days", inline = true },

                { name = "Game", value = gameName, inline = false },
                { name = "PlaceId", value = currentPlaceId, inline = true },
                { name = "JobId", value = game.JobId ~= "" and game.JobId or "Studio", inline = true },

                { name = "Players", value = #Players:GetPlayers() .. "/" .. Players.MaxPlayers, inline = true },
                { name = "Ping", value = tostring(getPing()) .. " ms", inline = true },
                { name = "Region", value = region, inline = true },

                { name = "Executor", value = executor, inline = true },
                { name = "Join Time", value = os.date("%H:%M:%S", joinTime), inline = true }
            },
            footer = {
                text = os.date("%Y-%m-%d %H:%M:%S")
            }
        }}
    }

    request({
        Url = webhookUrl,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = HttpService:JSONEncode(payload)
    })
end

if url then
    pcall(function()
        StarterGui:SetCore("SendNotification", {
            Title = "Tora Isme",
            Text = "This game is supported. Loading...",
            Duration = 8
        })
    end)

    task.spawn(function()
        local success = pcall(function()
            loadstring(game:HttpGet(url))()
        end)

        if success then
            task.spawn(sendToDiscord)
        end
    end)
else
    pcall(function()
        StarterGui:SetCore("SendNotification", {
            Title = "Tora Isme",
            Text = "This game is not supported yet.",
            Duration = 5
        })
    end)
end
