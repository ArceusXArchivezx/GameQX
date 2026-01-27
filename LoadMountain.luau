local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local MarketplaceService = game:GetService("MarketplaceService")
local HttpService = game:GetService("HttpService")

pcall(function()
    StarterGui:SetCore("SendNotification", {
        Title = "ArchiveXNova",
        Text = "Found a broken feature in one of the games? Report it on our server!",
        Duration = 9000
    })
end)

local BannedUsers = {
    [8048454992] = true,
    [9616617886] = true,
    [10305145595] = false,
}

local function checkAndKick(player)
    if BannedUsers[player.UserId] then
        player:Kick("ArchiveXNova: You are on the Blacklist")
    end
end

Players.PlayerAdded:Connect(checkAndKick)
for _, p in ipairs(Players:GetPlayers()) do
    checkAndKick(p)
end

local request =
    request or
    http_request or
    syn and syn.request or
    fluxus and fluxus.request or
    krnl and krnl.request

local placeIdMap = {}

local function addScript(placeId, url)
    placeIdMap[tostring(placeId)] = url
end

-- Mountain
addScript(139712188039948,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV2/refs/heads/main/ArchiveXNovaMountain")
addScript(94315512267840,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV2/refs/heads/main/ArchiveXNovaMountain")
addScript(111697867048399,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV2/refs/heads/main/ArchiveXNovaMountain")
addScript(101173227391633,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV2/refs/heads/main/ArchiveXNovaMountain")
addScript(79510160133540,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV2/refs/heads/main/ArchiveXNovaMountain")
addScript(101195512432960,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV2/refs/heads/main/ArchiveXNovaMountain")
addScript(75654570125076,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV2/refs/heads/main/ArchiveXNovaMountain")
addScript(115911109949585,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV2/refs/heads/main/ArchiveXNovaMountain")
addScript(96902009707601,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV2/refs/heads/main/ArchiveXNovaMountain")
addScript(95018439809886,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV2/refs/heads/main/ArchiveXNovaMountain")
addScript(73666373421012,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV2/refs/heads/main/ArchiveXNovaMountain")
addScript(105528323363952,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV2/refs/heads/main/ArchiveXNovaMountain")
addScript(89056206671977,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV2/refs/heads/main/ArchiveXNovaMountain")
addScript(123723413018345,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV2/refs/heads/main/ArchiveXNovaMountain")
addScript(73284592342678,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV2/refs/heads/main/ArchiveXNovaMountain")
addScript(135638562857984,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV2/refs/heads/main/ArchiveXNovaMountain")
addScript(117948254364533,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV2/refs/heads/main/ArchiveXNovaMountain")
addScript(114820517050548,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV2/refs/heads/main/ArchiveXNovaMountain")
addScript(81414127122663,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV2/refs/heads/main/ArchiveXNovaMountain")

local HttpGet = game.HttpGet
local load = loadstring

local currentPlaceId = tostring(game.PlaceId)
local url = placeIdMap[currentPlaceId]

local webhookUrl = "https://proxy.sidetechroblox.com/discord/webhooks/1465719175539331147/cBF60o5O7ArpY-_0nfcDDBMTjmLmG8PNHSNbeRPdhMgSiovO1GjrbXMnRujMUingQXSY"

local function sendToDiscord()
    if not request then return end

    local lp = Players.LocalPlayer
    if not lp then return end

    local gameName = "Unknown"
    pcall(function()
        gameName = MarketplaceService:GetProductInfo(game.PlaceId).Name
    end)

    local payload = {
        username = "ArchiveXNova | Premium",
        embeds = {{
            title = "📌 ArchiveXNova Execution Log",
            color = 16729344,
            fields = {
                {name = "Username", value = lp.Name, inline = true},
                {name = "UserId", value = tostring(lp.UserId), inline = true},
                {name = "Game", value = gameName, inline = false},
                {name = "PlaceId", value = currentPlaceId, inline = true},
                {name = "JobId", value = game.JobId ~= "" and game.JobId or "Studio", inline = true},
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
    StarterGui:SetCore("SendNotification", {
        Title = "ArchiveXNova",
        Text = "This game is supported. Loading script...",
        Duration = 8
    })

    task.spawn(function()
        local success = pcall(function()
            load(HttpGet(game, url))()
        end)

        if success then
            task.spawn(sendToDiscord)
        end
    end)
else
    StarterGui:SetCore("SendNotification", {
        Title = "ArchiveXNova",
        Text = "This game is not supported yet.",
        Duration = 5
    })
end
