local HttpGet=game.HttpGet local load=loadstring local TS=game:GetService("TweenService")
local P=game:GetService("Players").LocalPlayer local M=game:GetService("MarketplaceService")
local Run=game:GetService("RunService")
local BASE="https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/main/"

local Scripts={} do
Scripts["10721852444"]="Alea.Moon" Scripts["3101667897"]="Terpercaya.lua" Scripts["3956818381"]="Indo.lua"
Scripts["4924922222"]="12v.lua" Scripts["2693023319"]="Leonix" Scripts["75655206294061"]="Clean.luau"
Scripts["117912363638950"]="Money1.luau" Scripts["120861500854151"]="Roblox.lua" Scripts["140202313776640"]="Senpei.lua"
Scripts["70550963992014"]="Global.lua" Scripts["104034421066865"]="Car.luau" Scripts["132130966239050"]="Whoiam.luau"
Scripts["17737610444"]="Idkah.lua" Scripts["12623585422"]="Noei.lua" Scripts["13389049867"]="Eeeeeeeeeeeee.luau"
Scripts["125248406466473"]="iloveyou.lua" Scripts["89118521329724"]="Zombie01.lua" Scripts["91193393488569"]="Victoria.lua"
Scripts["16907564889"]="Anastasia.luau" Scripts["82311080830488"]="Isabella.luau" Scripts["71426585714528"]="Primordius.luau"
Scripts["115142573873708"]="Eternaxis.luau" Scripts["106306383294064"]="Titanora.luau" Scripts["128486590418614"]="Veylthar.luau"
Scripts["124331793246454"]="Kronethys.luau" Scripts["129270424652284"]="Excalyros.luau" Scripts["115788236442816"]="Hyperionis.luau"
Scripts["123179067991291"]="Voragnar.luau" Scripts["80692223709267"]="Celesthor.luau" Scripts["109073199927285"]="Drakonis Core.Moon"
Scripts["132214833492664"]="Solypharion.Moon" Scripts["136272288120249"]="Zenithros.Moon" Scripts["124809626273666"]="OmegaDrax.Moon"
Scripts["140564479075599"]="Colossara.Moon" Scripts["90048768291999"]="Supremara.Moon" Scripts["106990445590115"]="Astravor.Moon"
Scripts["83059641016557"]="Eternadrax.luau" Scripts["121198792957406"]="Titanexus.Moon" Scripts["127314070251555"]="Kronarion.luau"
Scripts["94279945101354"]="Aethel.luau" Scripts["102015438526250"]="Aevum.Moon" Scripts["133719960214587"]="Aetherium.Moon"
Scripts["104647821569857"]="Akasha.lua" Scripts["77765116337777"]="Alakir.luau" Scripts["77925588359671"]="Alcyoneus.luau"
Scripts["140416344843929"]="Aldrazar.luau" Scripts["80260282334922"]="Almagest.luau" Scripts["78606986252533"]="Ananta.Moon"
Scripts["13189735542"]="Love.Moon" Scripts["109259215974512"]="Arcanix.Moon" Scripts["105555311806207"]="Arclight.Moon"
Scripts["119865329453489"]="Aethra.Moon" Scripts["16646849903"]="Astraeus.N" Scripts["136888805396223"]="Avalon.N"
Scripts["76767617693575"]="Axanar.n" Scripts["140536326097029"]="Azimuth.LOVE" Scripts["86442735053775"]="Belexus.Moon"
Scripts["136195038598165"]="Dragon.lua" Scripts["16653555262"]="HoleH.N" Scripts["17318749867"]="Draconis Astra.Lua"
Scripts["122075434066550"]="Ignis Celestia.lua" Scripts["13305899582"]="Astraghon.Lua" Scripts["15423053861"]="Caelumdraco.lua"
Scripts["137624695396050"]="Solardrakon.lua" Scripts["72462386094083"]="Cosmydrax.lua" Scripts["118199959729871"]="Galaxion.Moon"
Scripts["124333399025205"]="Orbis Draco.Moon" Scripts["109832974748994"]="Stellardrake.Moon" Scripts["88264996806108"]="Voidwyrm.Moon"
Scripts["125318037924040"]="Lunardracarys.Moon" Scripts["80688688944603"]="Nebulonax.Moon" Scripts["116739501459923"]="Astralis Draco.Moon"
Scripts["81823526068423"]="Solarion" Scripts["108207853263201"]="Terraghon.Moon" Scripts["91116134990736"]="Ignis"
Scripts["123468479998097"]="Vermithrax" Scripts["83491582463374"]="Drakkar" Scripts["74017761169031"]="Fafnir"
Scripts["90264115537157"]="Bahamut" Scripts["135880624242201"]="Tiamat" Scripts["102429912667575"]="Ancalagon"
Scripts["113604074601559"]="Glaurung" Scripts["103207450918669"]="Sancellar" Scripts["94952794697974"]="Pyrausta"
Scripts["110132881708746"]="Ouroboros" Scripts["77456193125343"]="Vritra" Scripts["15297409281"]="Ladon"
Scripts["70380018483320"]="Nidhogg" Scripts["77650651226156"]="Quetzalcoatl" Scripts["92092980656514"]="Ryujin"
Scripts["118909003573676"]="Shenlong" Scripts["100438336521838"]="Zmey" Scripts["97639361445495"]="Leviathan"
Scripts["139747517558790"]="Wyrm" Scripts["119574637420814"]="Cailleach" Scripts["126691209907714"]="Draco"
Scripts["92614810259450"]="Orochi" Scripts["93751483762469"]="Norbert" Scripts["128152215267107"]="Saphira"
Scripts["103421172373151"]="Kalessin" Scripts["78320694285708"]="Puff" Scripts["91791791825370"]="Maleficent"
Scripts["94478161920361"]="Toothless" Scripts["125482389638298"]="Elliot" Scripts["84167547691677"]="Figment"
Scripts["133326397883139"]="Charizard" Scripts["107549051862531"]="Rathalos" Scripts["135550636763763"]="Alduin"
Scripts["140481779622210"]="Spyro" Scripts["6452292184"]="CyanBloodbane" Scripts["7044096177"]="Khellendros"
Scripts["94373736738199"]="Bheithir" Scripts["138423548806566"]="Grael" Scripts["9075479275"]="Voltrex"
Scripts["14259358984"]="Ignacia" Scripts["137304638496247"]="Terrox" Scripts["85442257107616"]="Brume"
Scripts["84669620094641"]="Zephyros" Scripts["107480390436880"]="Solarius" Scripts["87516680797104"]="Obsidian"
Scripts["76258615865952"]="Granite" Scripts["102353841629856"]="Cinder" Scripts["77294570564057"]="Ember"
Scripts["132451615664022"]="Blaze" Scripts["118413473376604"]="Inferno" Scripts["116178423114975"]="Frost"
Scripts["137806505974682"]="Glacier" Scripts["84092606596698"]="Cyclone" Scripts["131936189586468"]="Quake"
Scripts["105171425275249"]="Abyss" Scripts["76964310785698"]="Nadir" Scripts["140378601517716"]="Tremor"
Scripts["92127752062811"]="Nebulor" Scripts["87734613418457"]="Quasarth" Scripts["121439935748881"]="Pulsara"
Scripts["103875406370088"]="Vel'kor" Scripts["91490659446272"]="Singularith" Scripts["137533333619498"]="Voidflare"
Scripts["116053813135621"]="Astralith" Scripts["133626425082194"]="Celestrax" Scripts["85734067341424"]="Galaxion"
Scripts["83146568106162"]="Cometor" Scripts["89047025631500"]="Meteoros" Scripts["81832457513928"]="Novaflare"
Scripts["111417482709154"]="Supernovis" Scripts["106782625995423"]="Darkflare" Scripts["90593834103802"]="Stellara"
Scripts["135663842983553"]="Cosmovyx" Scripts["94116744819156"]="Andromedon" Scripts["97393953768282"]="Siriusar"
Scripts["87697066373562"]="Polarine" Scripts["107052315040505"]="Zenithos" Scripts["127804672565817"]="Nadirix"
Scripts["125337660180093"]="Aetheris" Scripts["129916920179384"]="Lunarix" Scripts["118930028098583"]="Solaron"
Scripts["89898833676465"]="Koronalis" Scripts["97233690279257"]="Eclipsera" Scripts["140014177882408"]="Rigelith"
Scripts["112818969245263"]="Vegaron" Scripts["75336043355205"]="Antaresh" Scripts["99034404545832"]="Betelgor"
Scripts["80482032675584"]="Canopix" Scripts["130453270520042"]="Fomalhax" Scripts["130788794138541"]="Aldebaranth"
Scripts["110187948309890"]="Cassiophex" Scripts["116433680177156"]="Orionyx" Scripts["81672832974176"]="Lyranox"
Scripts["115680054300509"]="Ursarix" Scripts["88644333175263"]="Draconix" Scripts["108581205213609"]="Hydrarion"
Scripts["110248124005695"]="Cygnalis" Scripts["112274187986646"]="Phoenixar" Scripts["75504462758180"]="Griffarix"
Scripts["136402973032879"]="Pegasoron" Scripts["92443799068611"]="Cepheusar" Scripts["117345375295598"]="Herculon"
Scripts["111651646480914"]="Persevar" Scripts["139142406757181"]="Sagittarix" Scripts["109602187684894"]="Capricornax"
Scripts["80764768938398"]="Aquarioth" Scripts["83773497775195"]="Piscixon" Scripts["92811427244720"]="Ariethos"
Scripts["106106456364235"]="Tauron" Scripts["94812373413747"]="Geminor" Scripts["120146982804278"]="Canceron"
Scripts["105067716302567"]="Virgon" Scripts["112940942530141"]="Libranox" Scripts["76521881655554"]="Ophiuchor"
Scripts["131429801183273"]="Caelistor" Scripts["127664149300125"]="Vortexis" Scripts["91780519730910"]="Graviton"
Scripts["107079217762159"]="Spacium" Scripts["98711018939494"]="Wormholis" Scripts["135653357039371"]="Eventidar"
Scripts["75275402548831"]="Redshiftar" Scripts["103104599827022"]="Blueshiftar" Scripts["135285975690941"]="Expanthor"
Scripts["114261767466786"]="Multivyx" Scripts["129366557423311"]="Parallaxis" Scripts["110429357957262"]="Pulsator"
Scripts["114281010659299"]="Magnetar" Scripts["14963184269"]="Nebulix" Scripts["95883290231059"]="Voidripper"
Scripts["99849807606260"]="Galacticore" Scripts["115456230773566"]="Constellux" Scripts["122736804274241"]="Planetar"
Scripts["129166494114654"]="Moonstrider" Scripts["98757204462933"]="Sunforger" Scripts["73493765209038"]="DustDevourer"
Scripts["140277708007710"]="RingGazer" Scripts["81336028304509"]="Orbiton" Scripts["74242796697886"]="TidalLock"
Scripts["102348365706836"]="RocheLimitor" Scripts["126688949103299"]="Kuiperon" Scripts["109286987552172"]="Oorth"
Scripts["106823440585954"]="Nyxolar" Scripts["84766178190740"]="Heliopor" Scripts["86740499759561"]="BowShocker"
Scripts["112574170157849"]="Nebulight" Scripts["94893333977039"]="Starduster" Scripts["93908541542709"]="Voidwhisper"
Scripts["122233217802229"]="SilentScream" Scripts["128018459895270"]="InfiniteWing" Scripts["132441576270109"]="TimelessOne"
Scripts["85277236695738"]="Omnistar" Scripts["76622091184398"]="Crystallak" Scripts["96894312443774"]="Diamonar"
Scripts["91769674270735"]="Amethyx"
end

local sg=Instance.new("ScreenGui") sg.ResetOnSpawn=false sg.Name="EnvyXArchive"
if syn and syn.protect_gui then syn.protect_gui(sg) end
sg.Parent = game.CoreGui or gethui() or game:GetService("CoreGui")

local Main=Instance.new("Frame",sg) Main.Size=UDim2.new(0,400,0,300) Main.Position=UDim2.new(0.5,-200,0.5,-150)
Main.BackgroundColor3=Color3.fromRGB(15,15,25) Main.Active=true Main.Draggable=true
Instance.new("UICorner",Main).CornerRadius=UDim.new(0,14)

local Bar=Instance.new("Frame",Main) Bar.Size=UDim2.new(1,0,0,36) Bar.BackgroundColor3=Color3.fromRGB(0,130,255)
Instance.new("UICorner",Bar).CornerRadius=UDim.new(0,14)
local Title=Instance.new("TextLabel",Bar) Title.Size=UDim2.new(1,-80,1,0) Title.BackgroundTransparency=1
Title.Text="AlanWalkerX" Title.TextColor3=Color3.new(1,1,1) Title.Font=Enum.Font.GothamBold Title.TextSize=16
local X=Instance.new("TextButton",Bar) X.Size=UDim2.new(0,30,0,30) X.Position=UDim2.new(1,-38,0,3)
X.BackgroundColor3=Color3.fromRGB(255,70,70) X.Text="X" X.TextColor3=Color3.new(1,1,1)
Instance.new("UICorner",X).CornerRadius=UDim.new(0,8)

local TabScroll=Instance.new("ScrollingFrame",Main)
TabScroll.Size=UDim2.new(1,0,0,40) TabScroll.Position=UDim2.new(0,0,0,36)
TabScroll.BackgroundTransparency=1 TabScroll.ScrollBarThickness=4 TabScroll.AutomaticCanvasSize=Enum.AutomaticSize.X
TabScroll.ScrollingDirection=Enum.ScrollingDirection.X
local TabLayout=Instance.new("UIListLayout",TabScroll)
TabLayout.FillDirection="Horizontal" TabLayout.Padding=UDim.new(0,8) TabLayout.SortOrder=Enum.SortOrder.LayoutOrder

local Content=Instance.new("Frame",Main) Content.Size=UDim2.new(1,-20,1,-86) Content.Position=UDim2.new(0,10,0,66)
Content.BackgroundTransparency=1 Content.ClipsDescendants=true

local Tabs={}
local function CreateTab(name)
    local btn=Instance.new("TextButton",TabScroll) btn.Size=UDim2.new(0,110,0,32) btn.BackgroundColor3=Color3.fromRGB(40,40,65)
    btn.Text=name btn.TextColor3=Color3.new(1,1,1) btn.Font=Enum.Font.GothamBold btn.TextSize=14
    Instance.new("UICorner",btn).CornerRadius=UDim.new(0,8)

    local page=Instance.new("ScrollingFrame",Content) page.Size=UDim2.new(1,0,1,0) page.Visible=false page.BackgroundTransparency=1
    page.ScrollBarThickness=5 page.AutomaticCanvasSize=Enum.AutomaticSize.Y
    Instance.new("UIListLayout",page).Padding=UDim.new(0,7)
    Instance.new("UIPadding",page).PaddingTop=UDim.new(0,8)

    btn.MouseButton1Click:Connect(function()
        for _,t in Tabs do t.page.Visible=false t.btn.BackgroundColor3=Color3.fromRGB(40,40,65) end
        page.Visible=true btn.BackgroundColor3=Color3.fromRGB(0,170,255)
    end)

    table.insert(Tabs,{btn=btn,page=page})
    return page
end

local Home       = CreateTab("Home")
local Games      = CreateTab("List Of Game")

Tabs[1].btn.BackgroundColor3=Color3.fromRGB(0,170,255) Tabs[1].page.Visible=true

local function btn(parent,text,callback)
    local b=Instance.new("TextButton",parent) b.Size=UDim2.new(1,0,0,36) b.BackgroundColor3=Color3.fromRGB(40,40,65)
    b.Text="  "..text b.TextXAlignment="Left" b.TextColor3=Color3.new(1,1,1) b.Font=Enum.Font.GothamSemibold
    Instance.new("UICorner",b).CornerRadius=UDim.new(0,10)
    b.MouseButton1Click:Connect(callback)
end

local Input=Instance.new("TextBox",Home) Input.Size=UDim2.new(1,0,0,36) Input.BackgroundColor3=Color3.fromRGB(35,35,55)
Input.PlaceholderText="Enter Place ID..." Input.TextColor3=Color3.new(1,1,1)
Instance.new("UICorner",Input).CornerRadius=UDim.new(0,10)

local Exec=Instance.new("TextButton",Home) Exec.Size=UDim2.new(1,0,0,36) Exec.BackgroundColor3=Color3.fromRGB(0,170,255)
Exec.Text="EXECUTE" Exec.TextColor3=Color3.new(1,1,1) Exec.Font=Enum.Font.GothamBold
Instance.new("UICorner",Exec).CornerRadius=UDim.new(0,10)

btn(Home,"Auto Found Place ID",function()load(HttpGet(game,"https://raw.githubusercontent.com/ArceusXArchivezx/Nekoi/refs/heads/main/%E5%81%A5%E5%BA%B7%E3%81%AE%E3%81%9F%E3%82%81%E3%81%AB%E6%B0%B4%E3%82%92%E9%A3%B2%E3%81%BF%E3%81%BE%E3%81%97%E3%82%87%E3%81%86"))()end)
btn(Home,"Mount Freemium",function()load(HttpGet(game,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/UserPremiumUi.lua"))()end)
btn(Home,"Mount Premium",function()load(HttpGet(game,"https://api.junkie-development.de/api/v1/luascripts/public/38ffc04e33a5f4abd0ff7a1cad539b173aad564961fab1c9c5e8c1bd1840891c/download"))()end)
btn(Home,"Troll & Tower",function()load(HttpGet(game,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower"))()end)
btn(Home,"Obby & Tower",function()load(HttpGet(game,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Emeraldon"))()end)
btn(Home,"Horror & Elevator",function()load(HttpGet(game,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Horror"))()end)
btn(Home,"Simulation",function()load(HttpGet(game,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Simulation"))()end)
btn(Home,"Survival",function()load(HttpGet(game,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Survival"))()end)

btn(Games,"Fish It",function()load(HttpGet(game,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Fish%20It"))()end)

Exec.MouseButton1Click:Connect(function()
    local id=Input.Text:match("^%d+$")
    if id and Scripts[id] then
        pcall(function() load(HttpGet(game,BASE..Scripts[id]))() end)
    end
end)

X.MouseButton1Click:Connect(function() sg:Destroy() end)

spawn(function()
    local gameName="Loading..."
    pcall(function() gameName=M:GetProductInfo(game.PlaceId).Name end)

    local notif=Instance.new("Frame",sg) notif.Size=UDim2.new(0,380,0,150) notif.Position=UDim2.new(1,20,0,20)
    notif.BackgroundColor3=Color3.fromRGB(20,20,35)
    Instance.new("UICorner",notif).CornerRadius=UDim.new(0,14)
    Instance.new("UIStroke",notif).Color=Color3.fromRGB(0,180,255) Instance.new("UIStroke",notif).Thickness=2.5

    local user=Instance.new("TextLabel",notif) user.Size=UDim2.new(1,-20,0,26) user.Position=UDim2.new(0,10,0,8)
    user.Text="User: "..P.DisplayName user.TextColor3=Color3.fromRGB(0,230,255) user.Font=Enum.Font.GothamBold user.TextSize=17 user.TextXAlignment="Left"

    local username=Instance.new("TextLabel",notif) username.Size=UDim2.new(1,-20,0,24) username.Position=UDim2.new(0,10,0,34)
    username.Text="Username: @"..P.Name username.TextColor3=Color3.fromRGB(180,180,255) username.TextSize=15 username.TextXAlignment="Left"

    local gameLbl=Instance.new("TextLabel",notif) gameLbl.Size=UDim2.new(1,-20,0,26) gameLbl.Position=UDim2.new(0,10,0,60)
    gameLbl.Text="Game: "..gameName gameLbl.TextColor3=Color3.fromRGB(100,255,100) gameLbl.Font=Enum.Font.GothamSemibold gameLbl.TextSize=16 gameLbl.TextXAlignment="Left"

    local dateLbl=Instance.new("TextLabel",notif) dateLbl.Size=UDim2.new(1,-20,0,24) dateLbl.Position=UDim2.new(0,10,0,88)
    dateLbl.TextColor3=Color3.fromRGB(255,200,100) dateLbl.Font=Enum.Font.GothamSemibold dateLbl.TextSize=15 dateLbl.TextXAlignment="Left"

    local timeLbl=Instance.new("TextLabel",notif) timeLbl.Size=UDim2.new(1,-20,0,24) timeLbl.Position=UDim2.new(0,10,0,112)
    timeLbl.TextColor3=Color3.fromRGB(255,255,150) timeLbl.Font=Enum.Font.GothamBold timeLbl.TextSize=18 timeLbl.TextXAlignment="Left"

    Run.Heartbeat:Connect(function()
        local t=os.date("*t")
        dateLbl.Text=string.format("Today %d %s %d",t.day,os.date("%B"),t.year)
        timeLbl.Text=string.format("%02d:%02d:%02d",t.hour,t.min,t.sec)
    end)

    TS:Create(notif,TweenInfo.new(0.6),{Position=UDim2.new(1,-400,0,20)}):Play()
    task.wait(8)
    TS:Create(notif,TweenInfo.new(0.5),{Position=UDim2.new(1,20,0,20)}):Play()
    task.wait(0.5) notif:Destroy()
end)
