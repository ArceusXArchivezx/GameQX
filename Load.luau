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
        player:Kick("ArchiveXNova: You are on the Blacklist")
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

-- Troll And Tower
addScript(107639420156506,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(128098798460722,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(130997513667177,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(82338709069161,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Brainrot%20Morph%20Tower")
addScript(101457276563446,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(111683305806265,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(125219962190809,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(81214012834883,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(132864973380490,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(136835976646463,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Topazior")
addScript(139008469737286,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(139076562627423,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(94255092395831,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(74826169070557,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(124082555806669,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(124661781902090,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(111510393232444,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(127951704630086,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(92216603050132,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(124719521435461,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(80858274130963,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(76522898127132,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(103802803330866,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(77585195380889,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(119141950767466,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(80514417400229,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(93535969302222,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(107587260474787,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(101661696139402,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(122531863544084,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(129435169164618,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript(111834543171036,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrowerPart2")
addScript(139048466908419,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrowerPart2")
addScript(77972840239493,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrowerPart2")
addScript(111904358796869,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%D0%9A%D0%B0%D0%BF%D0%B5%D0%BB%D1%8C%D0%BD%D0%B8%D1%86%D0%B0%20%D1%81%20%D0%BF%D1%80%D1%8B%D0%B6%D0%BA%D0%BE%D0%BC%20%D0%BF%D0%BE%20%D1%81%D1%82%D0%B5%D0%BD%D0%B5")
addScript(81904348631659,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Aura%20Farm%20Edit%20Tower")
addScript(73859395934014,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Tower%20Gitu%20Aja")
addScript(102186835348979,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Pink%20Keys%20Asmr%20Tower")
addScript(73993817204130,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Troll%20Battle%20Tower")
addScript(89212644711336,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Meet%2099%20Nights%20Tower")
addScript(118546475246005,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Ability%20Slap%20Tower%203")
addScript(103259107767540,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Ay%20Mi%20Gatito%20Tower")
addScript(139370383735801,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Tower%20Nao%20Chorax")
addScript(75304671440673,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Find%20the%20Slaps%20Tower")
addScript(87186597509368,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Five%20Nights%20at%20Freddy's%20Tower")
addScript(102015438526250,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Size%20Troll%20Tower")
addScript(85573803794783,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Doodle%20Tower")
addScript(115958079277049,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Find%20Sammy%20Tower")
addScript(88951201927122,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Gear%20Troll%20Slap%20Tower")
addScript(91654574937058,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Nyan%20Cat%20Troll%20Tower")
addScript(135198689604615,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Horror%20Phonk%20Troll%20Tower")
addScript(127867453131813,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Aura%20Troll%20Slap%20Tower")
addScript(109071420974939,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Impossible%20Slap%20Tower")
addScript(105938112304055,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Lucky%20Block%20Tower")
addScript(76767617693575,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Gravity%20Coil%20Tower")
addScript(101642582715212,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/ShowSpeed%20Tower")
addScript(74408277676603,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Find%20Brainrots%20Tower")
addScript(76006971006303,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Troll%20Slap%20Tower")
addScript(72845937010155,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Gear%20Slap%20Tower")
addScript(76490888522129,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Math%20Tower")
addScript(107142108120503,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/ASMR%20Key%20Jump%20Tower")
addScript(94255092395831,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Keyboard%20ASMR%20Troll%20Tower")
addScript(121091852804618,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Coil%20Troll%20Tower")
addScript(98906347294244,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/67%20Obby%20Tower")
addScript(128576448886902,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Clone%20Troll%20Tower")
addScript(135594671657272,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Boxing%20Gear%20Troll%20Tower")
addScript(133328125853321,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Not%20Cute%20Anymore%20Tower")

-- Tower
addScript(136796002077170,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Sajonara%20Tower")
addScript(134997651114504,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Ice%20Skate%20Tower")
addScript(121439935748881,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/The%20Core%20of%20Wallhop%20Tower")
addScript(123401392328470,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/The%20Core%20of%20Wallhop%20Tower")
addScript(108949313599411,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Suka%20Laser%20Tower")

-- Obby
addScript(71543463524754,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript(96247321266645,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript(86913191563655,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript(103719498213854,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript(86628023983934,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript(121816583380853,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript(80692223709267,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript(118448647994857,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript(81609757724009,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript(5336391003,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript(139733286702777,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript(18999253889,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript(5327491283,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript(15776635867,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript(8003084678,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript(18721710268,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript(18971610991,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript(83805654213735,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript(101581749005211,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript(82086702654870,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Drive%20the%20ball%20to%20the%20end")
addScript(15009591064,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Obby2Ok")
addScript(16181786582,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/DTI%20Obby")
addScript(87437805664415,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/MEGA%20IMPOSSIBLE%20OBBY")
addScript(123901549209405,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Rasa%20Ini%20Tower%20Akukuat")
addScript(90802083095310,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Cobain%20Nih%20Tower%202")
addScript(71717678513989,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Emang%20Gini%20Laser%202")
addScript(101946478822481,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Obby2")
addScript(97622296096899,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/SAMMY%20JUMP%20ROPE%20GIANT%20SAMMY%20MORPH")
addScript(14184086618,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Obby%20But%20You%E2%80%99re%20On%20a%20Bike")
addScript(126875674787435,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Fun%20Obby%20Parkour")
addScript(15776635867,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Dreamy%20Kawaii%20Obby")
addScript(128646334704030,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Fruit%20Stage%20Tower")
addScript(117119585526401,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Run%20From%20Brainrot%20Obby")
addScript(17484510306,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Easy%20Win%20Obby")
addScript(121398068723493,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Escape%20the%20Hello%20Kitty%E2%80%98s%20House")

-- Horror
addScript(5777099015,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Horror")
addScript(7783741,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Scary%20Elevator")
addScript(4830581890,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Fear%20Elevator")

-- Simulation
addScript(95885904866309,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Simulation")
addScript(97966820431834,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Simulation")
addScript(105775525885873,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Simulation")
addScript(132785630254139,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Per%20Step")
addScript(96654799036437,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Simulation")
addScript(121864768012064,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Fish%20It")
addScript(127380660530951,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Survive%20Overnight%20in%20a%20Mega%20Store")
addScript(15715368401,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Survive%20Overnight%20in%20a%20Mega%20Store")
addScript(71404999931084,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Be%20Fast%20Or%20DIE.luau")
addScript(140481779622210,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Be%20Fast%20Or%20DIE.luau")
addScript(84916774885454,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Brainrots%20%2B1%20Speed%20Per%20Step1")
addScript(95487953458944,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Brainrots%20%2B1%20Speed%20Per%20Step2")
addScript(72759831222082,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Car%20Speed")
addScript(128070940451265,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Bike%20Escape%20V6")
addScript(96310489045568,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%5BUPD%5D%20%2B1%20Power%20Per%20Jump")
addScript(106337932664716,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Jump%20Per%20Step")
addScript(109999827422468,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Per%20Click")
addScript(113859658651362,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/School%20Escape")
addScript(76944728777524,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20ESCAPE%20OBBY")
addScript(91205780054565,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Don't%20Get%20Eaten%20By%20Hungry%20Worm")
addScript(118460028711730,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Escape%20the%20Tsunami%20on%20Bike")
addScript(72604809857139,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Jetpack%20Escape")
addScript(123684547161563,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20speed%2067%20escape")
addScript(98165623119417,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Backrooms%20Escape")
addScript(98165623119417,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/100%20Players%20Meme%20Maze")
addScript(94423988769690,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Build%20to%20Survive")
addScript(127584917378679,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/UPD%20%2B1%20Jump%20Per%20Step")
addScript(75774326976701,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Save%20Christmas")
addScript(137041225352450,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Minion%20Evolution")
addScript(127383162960820,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Escape%2067")
addScript(134126509854298,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Speed%20Escape%20Evil%20Santa")
addScript(133209054156971,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Longest%20Brainrot%20Tunnel")
addScript(108877961231008,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20to%20ESCAPE")
addScript(71020775930418,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Garden%20Escape")
addScript(93707779198874,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Keyboard%20ASMR%20Speed%20Escape")
addScript(129819755364195,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Survival")
addScript(113571636318123,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Per%20BITE")
addScript(129358834769320,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Become%20the%20fastest%20Brainrot")
addScript(88242597869863,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Hospital%20Escape")
addScript(117831624091425,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Speed%20Hospital%20Escape%20City")
addScript(81554184594903,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Speed%20Hospital%20Escape%20Molten%20Lands")
addScript(73934517857372,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Prison%20Escape")
addScript(117265809722033,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Rock%20Escape")
addScript(74407860720916,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Bridge%20to%20Brainrot")
addScript(90196214155723,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Size%20Per%20Second%20Sammy")
addScript(71226853386346,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20every%20JUMP!!")
addScript(108284916145176,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Bigger%20Every%20Step!")
addScript(91362012293383,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Build%20to%20Ski!")
addScript(74615581000844,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Escape%20The%20Acid")
addScript(95713983489925,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Run%20or%20Die")
addScript(105352795362105,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Grass%20Cutters")
addScript(128602654120186,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Strength%20Per%20Punch")
addScript(80440775110643,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Dangerous%20Horse%20Riding")
addScript(123465814482552,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Get%20Steps")
addScript(138270745376769,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Skateboard%20Escape")
addScript(120298786979907,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Get%20Sucked%20OR%20RUNNNNN")
addScript(135787657971346,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Bridge%20Building")
addScript(140304916524239,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Find%20and%20Escape%20Brainrot")
addScript(116655602398589,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Bubu%20%2B1%20Speed%20Per%20Step")
addScript(94044834705696,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Escape%20the%20Prison")
addScript(95319535505764,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Sail%20Down%20A%20River")
addScript(88658729052139,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Surfing%20and%20Slide")
addScript(91330679445177,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Horse%20Speed%20Escape")
addScript(91815352850707,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Freddy%20Escape")
addScript(87556782095453,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Per%20Swim")
addScript(125482389638298,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/99%20Nights%20Forest%20Escape%20%2B1%20Speed")
addScript(122409947397263,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B2%20Speed%20Freddy%20Escape")
addScript(111518700391488,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Escape%20a%20Brainrot")
addScript(107352261775081,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Escape%20the%20Lava%20on%20Bike")
addScript(82945911783799,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Per%20Step%20Tower")
addScript(94019598641684,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%2067%20Evolution")
addScript(109800309138590,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Speed%20Motorcycle%20Escape")
addScript(138466964702137,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/99%20Nights%20%2B1%20Size%20Per%20Click")
addScript(106315567468113,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Drive%20A%20Car%20Down%20A%20Slide")
addScript(111250485829076,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Skate%20Escape")
addScript(106570778194957,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Jump%20Pogo%20Escape")
addScript(133989814065516,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20On%20a%20Bike")
addScript(134383527120325,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Boat%20Escape")
addScript(88572527412623,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Animal%20Ride")
addScript(109080788695843,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Keyboard%20Escape")
addScript(121230136531797,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Escape%20Logs%20for%20Brainrots")
addScript(108270241986212,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Roller%20Escape")
addScript(93134086099089,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Scooter%20Escape")
addScript(93219064799815,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Roll%20Escape")
addScript(114173865144490,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Raft%20Escape")
addScript(108629505947581,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Wheelchair%20Escape")
addScript(70860953256036,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Unicycle%20Escape")
addScript(78952061274245,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Rocket%20Escape")
addScript(108213383259099,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Horror%20Escape")
addScript(93516077920019,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Ninja%20%2B1%20Speed%20Per%20Step")
addScript(95156513426986,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20SPEED%20BRAINROT%20PETS")
addScript(131282653041241,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Superhero%20Speed")
addScript(72016025318094,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20SkillPoint%20Every%20Second")
addScript(119934990395419,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Fart%20Speed%20Escape")
addScript(101592778615412,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Animal%20Speed%20Escape")
addScript(79516362095868,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Swim%20Speed%20Escape")
addScript(132769566461685,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Bubu%20Escape")
addScript(93107811111884,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Clone%20Speed%20Escape")
addScript(72941779473012,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20to%20Escape%2067")
addScript(90517691009911,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Faster%20Each%20Step")
addScript(132573289800229,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20to%20Escape%20Sammy")
addScript(108905821208772,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Get%20Taller%20Every%20Second")
addScript(140634691760923,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Plane%20Escape")
addScript(73160984129221,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Aura%20Speed%20Escape")
addScript(99457855080430,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Barrel%20Escape")
addScript(106382577640892,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Motorcycle%20Escape%20V2")
addScript(120402759300287,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20to%20Escape%20Prison")
addScript(133259974635005,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Tsunami%20Escape")
addScript(115442728708640,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Glider%20Escape")
addScript(110751416901942,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20HP%20Per%20Step")
addScript(104048191932422,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Jump%20per%20Jump")
addScript(108057513655537,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%5BUPD%5D%20%2B1%20Jump%20Per%20StepV1")
addScript(106460748036817,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%5BUPD%5D%20%2B1%20Jump%20Per%20StepV2")
addScript(132931126316629,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Car%20Tsunami%20Escape")
addScript(96130238911692,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Escape%20Tsunami%20For%20Brainrots")
addScript(125055254587561,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Escape%20Obbies%20For%20Brainrots")
addScript(113961941956252,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Escape%20poop%20for%20brainrots%20V1")
addScript(109319770402052,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Survive%20Volcano%20for%20Brainrots")
addScript(127426371793697,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Dragon%20Ball%20Tsunami%20Escape")
addScript(138048509924404,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Save%20Brainrots%20from%20LAVA")
addScript(73001218460360,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Escape%20Tsunami%20Poppy")
addScript(94819536102126,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Escape%20Tsunami%20For%20Dinosaurs")
addScript(119306225651101,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Escape%20Lava%20For%20Brainrots")
addScript(124020967021490,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Escape%20Tsunami%20For%20Mobs")
addScript(76625594468864,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Escape%20Tsunami%20for%20Soccer")
addScript(100036725396730,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Escape%20Tsunami%20Football%20Clubs")
addScript(139299356663913,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Jump%20for%20Brainrots")
addScript(110652131889470,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Escape%20Tsunami%20For%20Phones")

-- Survival
addScript(16867505761,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Survival")
addScript(9534337535,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Survival")
addScript(71544145522719,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Foxy%20from%20FNAF%20Doom")
addScript(116066151987279,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Cheese%20Escape%3A%20The%20Lurking")
addScript(132273534230449,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/MEDVED")

-- Puzzle
addScript(108682529022009,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Puzzle")
addScript(129786213527176,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Prove%20You%20Are%20Not%20a%20Dum-Dum")
addScript(103593441753340,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Find%20The%20Button")
addScript(112730892056697,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Find%20The%20ButtoW")

-- Adventure
addScript(136407404714539,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Find%20the%20Brainrot")
addScript(90136231908125,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Find%20Sonic%20Morph")
addScript(101905843742027,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/FIND%20THE%20BRAINROT%20MORPHS")
addScript(85085406792679,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Find%20a%20Meme")

-- Morphs
addScript(133156994361448,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Shin%20Sonic%20MORPHS")
addScript(18587585775,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Poop%20Morphs")

-- Party And Casual
addScript(105414615854152,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/RoleplayAvatar")
addScript(102353841629856,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Cattos%20Lizard%20ATTACK%20RP")

-- Mountain
addScript(139712188039948,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/ArchiveXNovaMountain")
addScript(94315512267840,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/ArchiveXNovaMountain")
addScript(111697867048399,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/ArchiveXNovaMountain")
addScript(101173227391633,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/ArchiveXNovaMountain")
addScript(79510160133540,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/ArchiveXNovaMountain")
addScript(101195512432960,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/ArchiveXNovaMountain")
addScript(75654570125076,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/ArchiveXNovaMountain")
addScript(115911109949585,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/ArchiveXNovaMountain")
addScript(96902009707601,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/ArchiveXNovaMountain")
addScript(95018439809886,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/ArchiveXNovaMountain")
addScript(73666373421012,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/ArchiveXNovaMountain")
addScript(105528323363952,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/ArchiveXNovaMountain")
addScript(89056206671977,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/ArchiveXNovaMountain")
addScript(123723413018345,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/ArchiveXNovaMountain")
addScript(73284592342678,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/ArchiveXNovaMountain")
addScript(135638562857984,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/ArchiveXNovaMountain")
addScript(117948254364533,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/ArchiveXNovaMountain")
addScript(114820517050548,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/ArchiveXNovaMountain")
addScript(81414127122663,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/ArchiveXNovaMountain")
addScript(83419372972910,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/ArchiveXNovaMountain")
addScript(126328322366363,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/ArchiveXNovaMountain")
addScript(81922216019213,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/ArchiveXNovaMountain")

local currentPlaceId = tostring(game.PlaceId)
local url = placeIdMap[currentPlaceId]

local webhookUrl =
    "https://proxy.sidetechroblox.com/discord/webhooks/1464600835081109668/hrCDm6Zo7KbjgqaIISOiGl29AFhQHuE9R9_qbwvagngFSFqu8w9Kp1b8Pwq3Zh9aXvCu"

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
        username = "ArchiveXNova",
        embeds = {{
            title = "📌 ArchiveXNova Execution Log",
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
            Title = "ArchiveXNova",
            Text = "This game is supported. Loading game",
            Duration = 5
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
            Title = "ArchiveXNova",
            Text = "This game is not supported yet.",
            Duration = 5
        })
    end)
end
