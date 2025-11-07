local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()


local Window = Fluent:CreateWindow({
    Title = "ArceusXArchive",
    SubTitle = "| AX-Archive",
    TabWidth = 140,
    Size = UDim2.fromOffset(400, 380),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Main = Window:AddTab({ Title = "Game ID", Icon = "terminal" }),
    Mount = Window:AddTab({ Title = "Mount & Gunung", Icon = "anchor" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local GameScripts = {
    ["10721852444"] = "Alea.Moon", ["3101667897"] = "Terpercaya.lua", ["3956818381"] = "Indo.lua",
    ["75655206294061"] = "Clean.luau", ["117912363638950"] = "Money1.luau", ["120861500854151"] = "Roblox.lua",
    ["4924922222"] = "12v.lua", ["140202313776640"] = "Senpei.lua", ["70550963992014"] = "Global.lua",
    ["104034421066865"] = "Car.luau", ["132130966239050"] = "Whoiam.luau", ["17737610444"] = "Idkah.lua",
    ["12623585422"] = "Noei.lua", ["13389049867"] = "Eeeeeeeeeeeee.luau", ["125248406466473"] = "iloveyou.lua",
    ["89118521329724"] = "Zombie01.lua", ["91193393488569"] = "Victoria.lua", ["16907564889"] = "Anastasia.luau",
    ["82311080830488"] = "Isabella.luau", ["71426585714528"] = "Primordius.luau", ["115142573873708"] = "Eternaxis.luau",
    ["106306383294064"] = "Titanora.luau", ["128486590418614"] = "Veylthar.luau", ["124331793246454"] = "Kronethys.luau",
    ["129270424652284"] = "Excalyros.luau", ["115788236442816"] = "Hyperionis.luau", ["123179067991291"] = "Voragnar.luau",
    ["80692223709267"] = "Celesthor.luau", ["109073199927285"] = "Drakonis Core.Moon", ["132214833492664"] = "Solypharion.Moon",
    ["136272288120249"] = "Zenithros.Moon", ["124809626273666"] = "OmegaDrax.Moon", ["140564479075599"] = "Colossara.Moon",
    ["90048768291999"] = "Supremara.Moon", ["106990445590115"] = "Astravor.Moon", ["83059641016557"] = "Eternadrax.luau",
    ["121198792957406"] = "Titanexus.Moon", ["127314070251555"] = "Kronarion.luau", ["94279945101354"] = "Aethel.luau",
    ["102015438526250"] = "Aevum.Moon", ["133719960214587"] = "Aetherium.Moon", ["104647821569857"] = "Akasha.lua",
    ["77765116337777"] = "Alakir.luau", ["77925588359671"] = "Alcyoneus.luau", ["140416344843929"] = "Aldrazar.luau",
    ["80260282334922"] = "Almagest.luau", ["78606986252533"] = "Ananta.Moon", ["13189735542"] = "Love.Moon",
    ["109259215974512"] = "Arcanix.Moon", ["105555311806207"] = "Arclight.Moon", ["119865329453489"] = "Aethra.Moon",
    ["16646849903"] = "Astraeus.N", ["136888805396223"] = "Avalon.N", ["76767617693575"] = "Axanar.n",
    ["140536326097029"] = "Azimuth.LOVE", ["86442735053775"] = "Belexus.Moon", ["136195038598165"] = "Dragon.lua",
    ["16653555262"] = "HoleH.N", ["17318749867"] = "Draconis Astra.Lua", ["122075434066550"] = "Ignis Celestia.lua",
    ["13305899582"] = "Astraghon.Lua", ["15423053861"] = "Caelumdraco.lua", ["137624695396050"] = "Solardrakon.lua",
    ["72462386094083"] = "Cosmydrax.lua", ["118199959729871"] = "Galaxion.Moon", ["124333399025205"] = "Orbis Draco.Moon",
    ["109832974748994"] = "Stellardrake.Moon", ["88264996806108"] = "Voidwyrm.Moon", ["125318037924040"] = "Lunardracarys.Moon",
    ["80688688944603"] = "Nebulonax.Moon", ["116739501459923"] = "Astralis Draco.Moon", ["81823526068423"] = "Solarion",
    ["108207853263201"] = "Terraghon.Moon", ["91116134990736"] = "Ignis", ["123468479998097"] = "Vermithrax",
    ["83491582463374"] = "Drakkar", ["74017761169031"] = "Fafnir", ["90264115537157"] = "Bahamut",
    ["135880624242201"] = "Tiamat", ["102429912667575"] = "Ancalagon", ["113604074601559"] = "Glaurung",
    ["103207450918669"] = "Sancellar", ["94952794697974"] = "Pyrausta", ["110132881708746"] = "Ouroboros",
    ["77456193125343"] = "Vritra", ["15297409281"] = "Ladon", ["70380018483320"] = "Nidhogg",
    ["77650651226156"] = "Quetzalcoatl", ["92092980656514"] = "Ryujin", ["118909003573676"] = "Shenlong",
    ["100438336521838"] = "Zmey", ["97639361445495"] = "Leviathan", ["139747517558790"] = "Wyrm",
    ["119574637420814"] = "Cailleach", ["126691209907714"] = "Draco", ["92614810259450"] = "Orochi",
    ["93751483762469"] = "Norbert", ["128152215267107"] = "Saphira", ["103421172373151"] = "Kalessin",
    ["78320694285708"] = "Puff", ["91791791825370"] = "Maleficent", ["94478161920361"] = "Toothless",
    ["125482389638298"] = "Elliot", ["84167547691677"] = "Figment", ["133326397883139"] = "Charizard",
    ["107549051862531"] = "Rathalos", ["135550636763763"] = "Alduin", ["140481779622210"] = "Spyro",
    ["6452292184"] = "CyanBloodbane", ["7044096177"] = "Khellendros", ["94373736738199"] = "Bheithir",
    ["138423548806566"] = "Grael", ["9075479275"] = "Voltrex", ["14259358984"] = "Ignacia",
    ["137304638496247"] = "Terrox", ["85442257107616"] = "Brume", ["84669620094641"] = "Zephyros",
    ["107480390436880"] = "Solarius", ["87516680797104"] = "Obsidian", ["76258615865952"] = "Granite",
    ["102353841629856"] = "Cinder", ["77294570564057"] = "Ember", ["132451615664022"] = "Blaze",
    ["118413473376604"] = "Inferno", ["116178423114975"] = "Frost", ["137806505974682"] = "Glacier",
    ["84092606596698"] = "Cyclone", ["131936189586468"] = "Quake", ["105171425275249"] = "Abyss",
    ["76964310785698"] = "Nadir", ["140378601517716"] = "Tremor", ["92127752062811"] = "Nebulor",
    ["87734613418457"] = "Quasarth", ["121439935748881"] = "Pulsara", ["103875406370088"] = "Vel'kor",
    ["91490659446272"] = "Singularith", ["137533333619498"] = "Voidflare", ["116053813135621"] = "Astralith",
    ["133626425082194"] = "Celestrax", ["85734067341424"] = "Galaxion", ["83146568106162"] = "Cometor",
    ["89047025631500"] = "Meteoros", ["81832457513928"] = "Novaflare", ["111417482709154"] = "Supernovis",
    ["106782625995423"] = "Darkflare", ["90593834103802"] = "Stellara", ["135663842983553"] = "Cosmovyx",
    ["94116744819156"] = "Andromedon", ["97393953768282"] = "Siriusar", ["87697066373562"] = "Polarine",
    ["107052315040505"] = "Zenithos", ["127804672565817"] = "Nadirix", ["125337660180093"] = "Aetheris",
    ["129916920179384"] = "Lunarix", ["118930028098583"] = "Solaron", ["89898833676465"] = "Koronalis",
    ["97233690279257"] = "Eclipsera", ["140014177882408"] = "Rigelith", ["112818969245263"] = "Vegaron",
    ["75336043355205"] = "Antaresh", ["99034404545832"] = "Betelgor", ["80482032675584"] = "Canopix",
    ["130453270520042"] = "Fomalhax", ["130788794138541"] = "Aldebaranth", ["110187948309890"] = "Cassiophex",
    ["116433680177156"] = "Orionyx", ["81672832974176"] = "Lyranox", ["115680054300509"] = "Ursarix",
    ["88644333175263"] = "Draconix", ["108581205213609"] = "Hydrarion", ["110248124005695"] = "Cygnalis",
    ["112274187986646"] = "Phoenixar", ["75504462758180"] = "Griffarix", ["136402973032879"] = "Pegasoron",
    ["92443799068611"] = "Cepheusar", ["117345375295598"] = "Herculon", ["111651646480914"] = "Persevar",
    ["139142406757181"] = "Sagittarix", ["109602187684894"] = "Capricornax", ["80764768938398"] = "Aquarioth",
    ["83773497775195"] = "Piscixon", ["92811427244720"] = "Ariethos", ["106106456364235"] = "Tauron",
    ["94812373413747"] = "Geminor", ["120146982804278"] = "Canceron", ["2693023319"] = "Leonix",
    ["105067716302567"] = "Virgon", ["112940942530141"] = "Libranox", ["76521881655554"] = "Ophiuchor",
    ["131429801183273"] = "Caelistor", ["127664149300125"] = "Vortexis", ["91780519730910"] = "Graviton",
    ["107079217762159"] = "Spacium", ["98711018939494"] = "Wormholis", ["135653357039371"] = "Eventidar",
    ["75275402548831"] = "Redshiftar", ["103104599827022"] = "Blueshiftar", ["135285975690941"] = "Expanthor",
    ["114261767466786"] = "Multivyx", ["129366557423311"] = "Parallaxis", ["110429357957262"] = "Pulsator",
    ["114281010659299"] = "Magnetar", ["14963184269"] = "Nebulix", ["95883290231059"] = "Voidripper",
    ["99849807606260"] = "Galacticore", ["115456230773566"] = "Constellux", ["122736804274241"] = "Planetar",
    ["129166494114654"] = "Moonstrider", ["98757204462933"] = "Sunforger", ["73493765209038"] = "DustDevourer",
    ["140277708007710"] = "RingGazer", ["81336028304509"] = "Orbiton", ["74242796697886"] = "TidalLock",
    ["102348365706836"] = "RocheLimitor", ["126688949103299"] = "Kuiperon", ["109286987552172"] = "Oorth",
    ["106823440585954"] = "Nyxolar", ["84766178190740"] = "Heliopor", ["86740499759561"] = "BowShocker",
    ["112574170157849"] = "Nebulight", ["94893333977039"] = "Starduster", ["93908541542709"] = "Voidwhisper",
    ["122233217802229"] = "SilentScream", ["128018459895270"] = "InfiniteWing", ["132441576270109"] = "TimelessOne",
    ["85277236695738"] = "Omnistar", ["76622091184398"] = "Crystallak", ["96894312443774"] = "Diamonar",
    ["91769674270735"] = "Amethyx"
}

local BASE_URL = "https://raw.githubusercontent.com/ArceusXArchivezx/Games/main/"

Tabs.Main:AddInput("PlaceID", {
    Title = "Enter Place ID",
    Placeholder = "Example: 10721852444",
    Numeric = true,
    Finished = true,
    Callback = function(id)
        id = tostring(id):match("%d+")
        if not id or id == "" then
            Fluent:Notify({ Title = "Error", Content = "Invalid ID!", Duration = 3 })
            return
        end

        local file = GameScripts[id]
        if not file then
            Fluent:Notify({ Title = "Not Found", Content = "No script for ID: " .. id, Duration = 4 })
            return
        end

        pcall(function()
            loadstring(game:HttpGet(BASE_URL .. file))()
            Fluent:Notify({ Title = "Success", Content = file .. " loaded!", Duration = 4 })
        end)
    end
})

Tabs.Main:AddButton({
    Title = "Auto Found Place ID",
    Description = "Click Here",
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ArceusXArchivezx/Nekoi/refs/heads/main/%E5%81%A5%E5%BA%B7%E3%81%AE%E3%81%9F%E3%82%81%E3%81%AB%E6%B0%B4%E3%82%92%E9%A3%B2%E3%81%BF%E3%81%BE%E3%81%97%E3%82%87%E3%81%86"))()
            Fluent:Notify({ Title = "Auto Found", Content = "Activated!", Duration = 3 })
        end)
    end
})

Tabs.Mount:AddButton({
    Title = "Mount | M",
    Description = "Click Here",
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Premium"))()
            Fluent:Notify({ Title = "Meow", Content = "Loaded!", Duration = 4 })
        end)
    end
})


Fluent:Notify({
    Title = "AX-Archive",
    Content = "Welcome",
    Duration = 8
})

-- === SAVE MANAGER ===
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:SetFolder("ArceusXArchive")
SaveManager:SetFolder("ArceusXArchive/cmdbar2")
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)

Window:SelectTab(1)
SaveManager:LoadAutoloadConfig()
