local HttpGet=game.HttpGet
local load=loadstring
local TS=game:GetService("TweenService")
local P=game:GetService("Players").LocalPlayer
local M=game:GetService("MarketplaceService")

local sg=Instance.new("ScreenGui")sg.ResetOnSpawn=false sg.Name="EnvyXArchive"
if syn and syn.protect_gui then syn.protect_gui(sg)end
sg.Parent=game.CoreGui or gethui()or game:GetService("CoreGui")

local Main=Instance.new("Frame",sg)Main.Size=UDim2.new(0,300,0,300)Main.Position=UDim2.new(0.5,-230,0.5,-280)
Main.BackgroundColor3=Color3.fromRGB(12,12,28)Main.Active=true Main.Draggable=true
Instance.new("UICorner",Main).CornerRadius=UDim.new(0,16)

local glow=Instance.new("UIStroke",Main)glow.Thickness=4 glow.Transparency=0.4 glow.Color=Color3.fromRGB(0,140,255)

local Bar=Instance.new("Frame",Main)Bar.Size=UDim2.new(1,0,0,40)Bar.BackgroundColor3=Color3.fromRGB(0,140,255)
Instance.new("UICorner",Bar).CornerRadius=UDim.new(0,16)

local Title=Instance.new("TextLabel",Bar)Title.Size=UDim2.new(1,-80,1,0)Title.BackgroundTransparency=1
Title.Text="ArchiveXNova"Title.TextColor3=Color3.new(1,1,1)Title.Font=Enum.Font.GothamBlack Title.TextSize=18

local X=Instance.new("TextButton",Bar)X.Size=UDim2.new(0,36,0,36)X.Position=UDim2.new(1,-40,0,2)
X.BackgroundColor3=Color3.fromRGB(255,60,60)X.Text="X"X.TextColor3=Color3.new(1,1,1)X.Font=Enum.Font.GothamBold
Instance.new("UICorner",X).CornerRadius=UDim.new(0,10)

local rainbowElements={}local useRainbow=true local currentColor=Color3.fromRGB(0,140,255)

if isfile and readfile and isfile("ArchiveXNova_Color.txt")then
pcall(function()
local r,g,b=readfile("ArchiveXNova_Color.txt"):match("(%d+),(%d+),(%d+)")
if r then currentColor=Color3.fromRGB(tonumber(r),tonumber(g),tonumber(b))
useRainbow=false Main.BackgroundColor3=currentColor:lerp(Color3.new(0,0,0),0.6)Bar.BackgroundColor3=currentColor glow.Color=currentColor
end end)end

spawn(function()
while task.wait(0.02)do if not Main.Parent or not useRainbow then continue end
local h=tick()%10/10 local bright=Color3.fromHSV(h,1,1)local dim=Color3.fromHSV(h,0.9,0.8)
Bar.BackgroundColor3=bright glow.Color=bright
for _,el in pairs(rainbowElements)do if el and el.Parent then el.BackgroundColor3=dim end end
end end)

local function setColor(col)
useRainbow=false currentColor=col
Main.BackgroundColor3=col:lerp(Color3.new(0,0,0),0.6)Bar.BackgroundColor3=col glow.Color=col
for _,el in pairs(rainbowElements)do if el and el.Parent then el.BackgroundColor3=col:lerp(Color3.new(0,0,0),0.4)end end
if writefile then writefile("ArchiveXNova_Color.txt",math.floor(col.R*255)..","..math.floor(col.G*255)..","..math.floor(col.B*255))end
end

local TabScroll=Instance.new("ScrollingFrame",Main)TabScroll.Size=UDim2.new(1,0,0,44)TabScroll.Position=UDim2.new(0,0,0,40)
TabScroll.BackgroundTransparency=1 TabScroll.ScrollBarThickness=0 TabScroll.AutomaticCanvasSize=Enum.AutomaticSize.X
local TabLayout=Instance.new("UIListLayout",TabScroll)TabLayout.FillDirection="Horizontal"TabLayout.Padding=UDim.new(0,10)

local Content=Instance.new("Frame",Main)Content.Size=UDim2.new(1,-20,1,-94)Content.Position=UDim2.new(0,10,0,84)Content.BackgroundTransparency=1

local Tabs={}
local function CreateTab(n)
local btn=Instance.new("TextButton",TabScroll)btn.Size=UDim2.new(0,120,0,36)btn.Text=n btn.TextColor3=Color3.new(1,1,1)
btn.Font=Enum.Font.GothamBold btn.TextSize=15 Instance.new("UICorner",btn).CornerRadius=UDim.new(0,12)
table.insert(rainbowElements,btn)
if not useRainbow then btn.BackgroundColor3=currentColor:lerp(Color3.new(0,0,0),0.4)end
local page=Instance.new("ScrollingFrame",Content)page.Size=UDim2.new(1,0,1,0)page.Visible=false page.BackgroundTransparency=1
page.ScrollBarThickness=6 page.AutomaticCanvasSize=Enum.AutomaticSize.Y
Instance.new("UIListLayout",page).Padding=UDim.new(0,8)Instance.new("UIPadding",page).PaddingTop=UDim.new(0,10)
btn.MouseButton1Click:Connect(function()for _,t in Tabs do t.page.Visible=false end page.Visible=true end)
table.insert(Tabs,{btn=btn,page=page})return page
end

local SearchTab=CreateTab("Search")local Troll=CreateTab("Troll & Tower")local Obby=CreateTab("Obby & Tower")local Horror=CreateTab("Horror & Elevator")
local Simulation=CreateTab("Simulation")local Survival=CreateTab("Survival")local Puzzle=CreateTab("Puzzle")
local Adventure=CreateTab("Adventure")
local Roleplay=CreateTab("Roleplay & Avatar")local ColorTab=CreateTab("Color")
Tabs[1].page.Visible=true

local function btn(p,t,c)
local b=Instance.new("TextButton",p)b.Size=UDim2.new(1,0,0,40)b.Text="  "..t b.TextXAlignment="Left"
b.TextColor3=Color3.new(1,1,1)b.Font=Enum.Font.GothamSemibold b.TextSize=15
Instance.new("UICorner",b).CornerRadius=UDim.new(0,12)table.insert(rainbowElements,b)
if not useRainbow then b.BackgroundColor3=currentColor:lerp(Color3.new(0,0,0),0.4)end
b.MouseButton1Click:Connect(c)
end

local scriptMap={}
local placeIdMap={}
local function addScript(name,placeId,url)
scriptMap[name:lower()]=url
placeIdMap[tostring(placeId)]=url
end

addScript("Nightmare Troll Slap Tower",107639420156506,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("Escape Troll Tower",128098798460722,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("Brainrot Tower",130997513667177,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("Brainrot Morph Tower",82338709069161,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("Green Bean Tower",101457276563446,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("Scary Smiley Tower",111683305806265,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("Prop Morph Tower",125219962190809,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("Boomerang Tower",81214012834883,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("Christmas Troll Tower",132864973380490,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("Scary Troll Tower",136835976646463,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Topazior")
addScript("Emote Tower",139008469737286,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("Meet Sammy Tower",139076562627423,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("Keyboard ASMR Troll Tower",94255092395831,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("Troll Escalator Tower",74826169070557,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("Don't Get Crushed By 67",124082555806669,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("Invisible Gun Troll Tower",124661781902090,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("99 Nights in the Tower",111510393232444,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("Scary Slap Tower",127951704630086,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("Lucky Troll Tower",92216603050132,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("UGC Christmas Tower",124719521435461,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("Cursed Troll Tower",80858274130963,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("INSANE Gear Slap Tower",76522898127132,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("Boys And Girls Tower",103802803330866,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("Verified TROLL Tower",77585195380889,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("61 Scary Troll Slap Tower",119141950767466,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("Jetpack Troll Slap Tower",80514417400229,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("Scary Troll Animal Tower",93535969302222,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("Kitty Troll Tower",107587260474787,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("Tsunami Troll Tower",101661696139402,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("67 Brainrot Tower",122531863544084,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("Aura Edit Tower",129435169164618,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrower")
addScript("Gravity Tower 2",111834543171036,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrowerPart2")
addScript("Meet A Friend Tower",139048466908419,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrowerPart2")
addScript("Winter Tower",77972840239493,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/TrollTrowerPart2")
addScript("Капельница с прыжком по стене",111904358796869,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%D0%9A%D0%B0%D0%BF%D0%B5%D0%BB%D1%8C%D0%BD%D0%B8%D1%86%D0%B0%20%D1%81%20%D0%BF%D1%80%D1%8B%D0%B6%D0%BA%D0%BE%D0%BC%20%D0%BF%D0%BE%20%D1%81%D1%82%D0%B5%D0%BD%D0%B5")
addScript("Aura Farm Edit Tower",81904348631659,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Aura%20Farm%20Edit%20Tower")
addScript("Tower Gitu Aja",73859395934014,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Tower%20Gitu%20Aja")
addScript("Pink Keys Asmr Tower",102186835348979,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Pink%20Keys%20Asmr%20Tower")
addScript("Troll Battle Tower",73993817204130,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Troll%20Battle%20Tower")
addScript("Meet 99 Nights Tower",89212644711336,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Meet%2099%20Nights%20Tower")
addScript("Ability Slap Tower 3",118546475246005,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Ability%20Slap%20Tower%203")

addScript("Run From 67 Obby",71543463524754,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript("Meet Nao Chorax",96247321266645,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript("Jump Into Green Bean",86913191563655,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript("Obby For Free Rewards",103719498213854,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript("Jump Into 67",86628023983934,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript("Jump Into Brainrot",121816583380853,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript("Free UGC Obby",80692223709267,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript("Jump To Meet Brainrots",118448647994857,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript("Mimi Tower",81609757724009,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript("Tower Of Dreams",5336391003,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript("Strawberry Tower",139733286702777,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript("Pink Stage Tower",18999253889,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript("Escape School Obby!",5327491283,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript("Dreamy Kawaii Obby",15776635867,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript("oMega Obby",8003084678,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript("Halloween Obby",18721710268,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript("EL GATO'S PRISON RUN",18971610991,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript("SAMMY'S PRISON RUN",83805654213735,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript("RUMI'S PRISON RUN",101581749005211,"https://raw.githubusercontent.com/ArceusXArchivezx/GameQX/refs/heads/main/Obby")
addScript("Drive the ball to the end",82086702654870,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Drive%20the%20ball%20to%20the%20end")
addScript("Obby, BUT you unlock ABILITIES",15009591064,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Obby2Ok")

addScript("Cheese Escape",5777099015,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Horror")

addScript("Dig and Hatch a Brainrot",95885904866309,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Simulation")
addScript("Adopt a Pet",97966820431834,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Simulation")
addScript("Rescue Animals",105775525885873,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Simulation")
addScript("Speed Per Step",132785630254139,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Simulation")
addScript("Jump RNG",96654799036437,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Simulation")
addScript("Fish It",121864768012064,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Fish%20It")
addScript("Survive Overnight in a Mega Store",127380660530951,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Survive%20Overnight%20in%20a%20Mega%20Store")
addScript("SIREN HEAD: LEGACY",15715368401,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Survive%20Overnight%20in%20a%20Mega%20Store")
addScript("Be Fast Or DIE",71404999931084,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Be%20Fast%20Or%20DIE.luau")
addScript("Escape The Lava",140481779622210,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Be%20Fast%20Or%20DIE.luau")
addScript("Brainrots +1 Speed Per Step",84916774885454,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Simulation")
addScript("+1 Car Speed",72759831222082,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Car%20Speed")
addScript("+1 Speed Bike Escape",128070940451265,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Bike%20Escape")
addScript("+1 Power Per Jump",96310489045568,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Power%20Per%20Jump")
addScript("+1 Jump Per Step",106337932664716,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Jump%20Per%20Step")
addScript("+1 Speed Per Click",109999827422468,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Per%20Click")
addScript("School Escape",113859658651362,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/School%20Escape")
addScript("+1 Speed ESCAPE OBBY",76944728777524,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20ESCAPE%20OBBY")
addScript("Don't Get Eaten By Hungry Worm",91205780054565,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Don't%20Get%20Eaten%20By%20Hungry%20Worm")
addScript("Escape the Tsunami on Bike",118460028711730,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Escape%20the%20Tsunami%20on%20Bike")
addScript("+1 Speed Jetpack Escape",72604809857139,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Jetpack%20Escape")
addScript("+1 speed 67 escape",123684547161563,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20speed%2067%20escape")
addScript("+1 Speed Backrooms Escape",98165623119417,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/%2B1%20Speed%20Backrooms%20Escape")
addScript("100 Players Meme Maze",98165623119417,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/100%20Players%20Meme%20Maze")
addScript("Build to Survive",94423988769690,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Build%20to%20Survive")

addScript("Escape Angry Head",16867505761,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Survival")
addScript("Shrek in The Backrooms",9534337535,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Survival")
addScript("Foxy from FNAF Doom",71544145522719,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Foxy%20from%20FNAF%20Doom")
addScript("Foxy from FNAF Doom",71544145522719,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Foxy%20from%20FNAF%20Doom")
addScript("Cheese Escape: The Lurking",116066151987279,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Cheese%20Escape%3A%20The%20Lurking")
addScript("MEDVED",132273534230449,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/MEDVED")

addScript("Scary Escape Rooms",108682529022009,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/Puzzle")
addScript("Prove You Are Not a Dum-Dum",129786213527176,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Prove%20You%20Are%20Not%20a%20Dum-Dum")

addScript("Find the Brainrot",136407404714539,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Find%20the%20Brainrot")
addScript("Find Sonic Morph",90136231908125,"https://raw.githubusercontent.com/TheMugenKingx/RobloxGameScriptV1/refs/heads/main/Find%20Sonic%20Morph")

addScript("Become Any SCP-096",105414615854152,"https://raw.githubusercontent.com/TheMugenKingx/RGAKALPA/refs/heads/main/RoleplayAvatar")

btn(Troll,"Nightmare Troll Slap Tower",function()load(HttpGet(game,scriptMap["nightmare troll slap tower"]))()end)
btn(Troll,"Escape Troll Tower",function()load(HttpGet(game,scriptMap["escape troll tower"]))()end)
btn(Troll,"Brainrot Tower",function()load(HttpGet(game,scriptMap["brainrot tower"]))()end)
btn(Troll,"Brainrot Morph Tower",function()load(HttpGet(game,scriptMap["brainrot morph tower"]))()end)
btn(Troll,"Green Bean Tower",function()load(HttpGet(game,scriptMap["green bean tower"]))()end)
btn(Troll,"Scary Smiley Tower",function()load(HttpGet(game,scriptMap["scary smiley tower"]))()end)
btn(Troll,"Prop Morph Tower",function()load(HttpGet(game,scriptMap["prop morph tower"]))()end)
btn(Troll,"Boomerang Tower",function()load(HttpGet(game,scriptMap["boomerang tower"]))()end)
btn(Troll,"Christmas Troll Tower",function()load(HttpGet(game,scriptMap["christmas troll tower"]))()end)
btn(Troll,"Anti-Gravity Troll",function()load(HttpGet(game,scriptMap["anti-gravity troll"]))()end)
btn(Troll,"Scary Troll Tower",function()load(HttpGet(game,scriptMap["scary troll tower"]))()end)
btn(Troll,"Emote Tower",function()load(HttpGet(game,scriptMap["emote tower"]))()end)
btn(Troll,"Meet Sammy Tower",function()load(HttpGet(game,scriptMap["meet sammy tower"]))()end)
btn(Troll,"Keyboard ASMR Troll Tower",function()load(HttpGet(game,scriptMap["keyboard asmr troll tower"]))()end)
btn(Troll,"Troll Escalator Tower",function()load(HttpGet(game,scriptMap["troll escalator tower"]))()end)
btn(Troll,"Pink Slap Tower",function()load(HttpGet(game,scriptMap["pink slap tower"]))()end)
btn(Troll,"Don't Get Crushed By 67",function()load(HttpGet(game,scriptMap["don't get crushed by 67"]))()end)
btn(Troll,"Invisible Gun Troll Tower",function()load(HttpGet(game,scriptMap["invisible gun troll tower"]))()end)
btn(Troll,"Hungry Pig Tower",function()load(HttpGet(game,scriptMap["hungry pig tower"]))()end)
btn(Troll,"99 Nights in the Tower",function()load(HttpGet(game,scriptMap["99 nights in the tower"]))()end)
btn(Troll,"Scary Slap Tower",function()load(HttpGet(game,scriptMap["scary slap tower"]))()end)
btn(Troll,"Lucky Troll Tower",function()load(HttpGet(game,scriptMap["lucky troll tower"]))()end)
btn(Troll,"UGC Christmas Tower",function()load(HttpGet(game,scriptMap["ugc christmas tower"]))()end)
btn(Troll,"Cursed Troll Tower",function()load(HttpGet(game,scriptMap["cursed troll tower"]))()end)
btn(Troll,"INSANE Gear Slap Tower",function()load(HttpGet(game,scriptMap["insane gear slap tower"]))()end)
btn(Troll,"Boys And Girls Tower",function()load(HttpGet(game,scriptMap["boys and girls tower"]))()end)
btn(Troll,"Verified TROLL Tower",function()load(HttpGet(game,scriptMap["verified troll tower"]))()end)
btn(Troll,"61 Scary Troll Slap Tower",function()load(HttpGet(game,scriptMap["61 scary troll slap tower"]))()end)
btn(Troll,"Jetpack Troll Slap Tower",function()load(HttpGet(game,scriptMap["jetpack troll slap tower"]))()end)
btn(Troll,"Scary Troll Animal Tower",function()load(HttpGet(game,scriptMap["scary troll animal tower"]))()end)
btn(Troll,"Kitty Troll Tower",function()load(HttpGet(game,scriptMap["kitty troll tower"]))()end)
btn(Troll,"Tsunami Troll Tower",function()load(HttpGet(game,scriptMap["tsunami troll tower"]))()end)
btn(Troll,"67 Brainrot Tower",function()load(HttpGet(game,scriptMap["67 brainrot tower"]))()end)
btn(Troll,"Aura Edit Tower",function()load(HttpGet(game,scriptMap["aura edit tower"]))()end)
btn(Troll,"Gravity Tower 2",function()load(HttpGet(game,scriptMap["gravity tower 2"]))()end)
btn(Troll,"Meet A Friend Tower",function()load(HttpGet(game,scriptMap["meet a friend tower"]))()end)
btn(Troll,"Winter Tower",function()load(HttpGet(game,scriptMap["winter tower"]))()end)
btn(Troll,"Aura Farm Edit Tower",function()load(HttpGet(game,scriptMap["aura farm edit tower"]))()end)
btn(Troll,"Tower Gitu Aja",function()load(HttpGet(game,scriptMap["tower gitu aja"]))()end)
btn(Troll,"Pink Keys Asmr Tower",function()load(HttpGet(game,scriptMap["pink keys asmr tower"]))()end)
btn(Troll,"Troll Battle Tower",function()load(HttpGet(game,scriptMap["troll battle tower"]))()end)
btn(Troll,"Meet 99 Nights Tower",function()load(HttpGet(game,scriptMap["meet 99 nights tower"]))()end)
btn(Troll,"Ability Slap Tower 3",function()load(HttpGet(game,scriptMap["ability slap tower 3"]))()end)

btn(Obby,"Run From 67 Obby",function()load(HttpGet(game,scriptMap["run from 67 obby"]))()end)
btn(Obby,"Meet Nao Chorax",function()load(HttpGet(game,scriptMap["meet nao chorax"]))()end)
btn(Obby,"Jump Into Green Bean",function()load(HttpGet(game,scriptMap["jump into green bean"]))()end)
btn(Obby,"Get Ugc Reward Obby",function()load(HttpGet(game,scriptMap["get ugc reward obby"]))()end)
btn(Obby,"Obby For Free Rewards",function()load(HttpGet(game,scriptMap["obby for free rewards"]))()end)
btn(Obby,"Jump Into 67",function()load(HttpGet(game,scriptMap["jump into 67"]))()end)
btn(Obby,"Jump Into Brainrot",function()load(HttpGet(game,scriptMap["jump into brainrot"]))()end)
btn(Obby,"Free UGC Obby",function()load(HttpGet(game,scriptMap["free ugc obby"]))()end)
btn(Obby,"Jump To Meet Brainrots",function()load(HttpGet(game,scriptMap["jump to meet brainrots"]))()end)
btn(Obby,"Mimi Tower",function()load(HttpGet(game,scriptMap["mimi tower"]))()end)
btn(Obby,"Tower Of Dreams",function()load(HttpGet(game,scriptMap["tower of dreams"]))()end)
btn(Obby,"Strawberry Tower",function()load(HttpGet(game,scriptMap["strawberry tower"]))()end)
btn(Obby,"Tower Of Banana - Tower Of Hell",function()load(HttpGet(game,scriptMap["tower of banana - tower of hell"]))()end)
btn(Obby,"Pink Stage Tower",function()load(HttpGet(game,scriptMap["pink stage tower"]))()end)
btn(Obby,"Escape School Obby!",function()load(HttpGet(game,scriptMap["escape school obby!"]))()end)
btn(Obby,"Dreamy Kawaii Obby",function()load(HttpGet(game,scriptMap["dreamy kawaii obby"]))()end)
btn(Obby,"oMega Obby",function()load(HttpGet(game,scriptMap["omega obby"]))()end)
btn(Obby,"Halloween Obby",function()load(HttpGet(game,scriptMap["halloween obby"]))()end)
btn(Obby,"EL GATO'S PRISON RUN",function()load(HttpGet(game,scriptMap["el gato's prison run"]))()end)
btn(Obby,"SAMMY'S PRISON RUN",function()load(HttpGet(game,scriptMap["sammy's prison run"]))()end)
btn(Obby,"RUMI'S PRISON RUN",function()load(HttpGet(game,scriptMap["rumi's prison run"]))()end)
btn(Obby,"Drive the ball to the end",function()load(HttpGet(game,scriptMap["drive the ball to the end"]))()end)
btn(Obby,"Obby, BUT you unlock ABILITIES",function()load(HttpGet(game,scriptMap["obby, but you unlock abilities"]))()end)

btn(Horror,"Cheese Escape",function()load(HttpGet(game,scriptMap["cheese escape"]))()end)

btn(Simulation,"Dig and Hatch a Brainrot",function()load(HttpGet(game,scriptMap["dig and hatch a brainrot"]))()end)
btn(Simulation,"Adopt a Pet",function()load(HttpGet(game,scriptMap["adopt a pet"]))()end)
btn(Simulation,"Rescue Animals",function()load(HttpGet(game,scriptMap["rescue animals"]))()end)
btn(Simulation,"Speed Per Step",function()load(HttpGet(game,scriptMap["speed per step"]))()end)
btn(Simulation,"Jump RNG",function()load(HttpGet(game,scriptMap["jump rng"]))()end)
btn(Simulation,"Fish It",function()load(HttpGet(game,scriptMap["Fish It"]))()end)
btn(Simulation,"Survive Overnight in a Mega Store",function()load(HttpGet(game,scriptMap["survive overnight in a mega store"]))()end)
btn(Simulation,"SIREN HEAD: LEGACY",function()load(HttpGet(game,scriptMap["siren head: legacy"]))()end)
btn(Simulation,"Be Fast Or DIE",function()load(HttpGet(game,scriptMap["be fast or die"]))()end)
btn(Simulation,"Escape The Lava",function()load(HttpGet(game,scriptMap["escape the lava"]))()end)
btn(Simulation,"Brainrots +1 Speed Per Step",function()load(HttpGet(game,scriptMap["brainrots +1 speed per step"]))()end)
btn(Simulation,"+1 Car Speed",function()load(HttpGet(game,scriptMap["+1 car speed"]))()end)
btn(Simulation,"+1 Speed Bike Escape",function()load(HttpGet(game,scriptMap["+1 speed bike escape"]))()end)
btn(Simulation,"+1 Power Per Jump",function()load(HttpGet(game,scriptMap["+1 power per jump"]))()end)
btn(Simulation,"+1 Jump Per Step",function()load(HttpGet(game,scriptMap["+1 jump per step"]))()end)
btn(Simulation,"+1 Speed Per Click",function()load(HttpGet(game,scriptMap["+1 speed per click"]))()end)
btn(Simulation,"School Escape",function()load(HttpGet(game,scriptMap["school escape"]))()end)
btn(Simulation,"+1 Speed ESCAPE OBBY",function()load(HttpGet(game,scriptMap["+1 speed escape obby"]))()end)
btn(Simulation,"Don't Get Eaten By Hungry Worm",function()load(HttpGet(game,scriptMap["don't get eaten by hungry worm"]))()end)
btn(Simulation,"Escape the Tsunami on Bike",function()load(HttpGet(game,scriptMap["escape the tsunami on bike"]))()end)
btn(Simulation,"+1 Speed Jetpack Escape",function()load(HttpGet(game,scriptMap["+1 speed jetpack escape"]))()end)
btn(Simulation,"+1 speed 67 escape",function()load(HttpGet(game,scriptMap["+1 speed 67 escape"]))()end)
btn(Simulation,"+1 Speed Backrooms Escape",function()load(HttpGet(game,scriptMap["+1 speed backrooms escape"]))()end)
btn(Simulation,"100 Players Meme Maze",function()load(HttpGet(game,scriptMap["100 players meme maze"]))()end)
btn(Simulation,"Build to Survive",function()load(HttpGet(game,scriptMap["build to survive"]))()end)

btn(Survival,"Escape Angry Head",function()load(HttpGet(game,scriptMap["escape angry head"]))()end)
btn(Survival,"Shrek in The Backrooms",function()load(HttpGet(game,scriptMap["shrek in the backrooms"]))()end)
btn(Survival,"Foxy from FNAF Doom",function()load(HttpGet(game,scriptMap["foxy from fnaf doom"]))()end)
btn(Survival,"Nico's Nextbots",function()load(HttpGet(game,scriptMap["nico's nextbots"]))()end)
btn(Survival,"Cheese Escape: The Lurking",function()load(HttpGet(game,scriptMap["cheese escape: the lurking"]))()end)
btn(Survival,"MEDVED",function()load(HttpGet(game,scriptMap["medved"]))()end)

btn(Puzzle,"Scary Escape Rooms",function()load(HttpGet(game,scriptMap["scary escape rooms"]))()end)
btn(Puzzle,"Prove You Are Not a Dum-Dum",function()load(HttpGet(game,scriptMap["prove you are not a dum-dum"]))()end)

btn(Adventure,"Find the Brainrot",function()load(HttpGet(game,scriptMap["find the brainrot"]))()end)
btn(Adventure,"Find Sonic Morph",function()load(HttpGet(game,scriptMap["find sonic morph"]))()end)

btn(Roleplay,"Become Any SCP-096",function()load(HttpGet(game,scriptMap["become any scp-096"]))()end)

local presets={
{"Neon Purple",Color3.fromRGB(150,0,255)},{"Cyber Pink",Color3.fromRGB(255,0,150)},{"Toxic Green",Color3.fromRGB(0,255,100)},
{"Blood Red",Color3.fromRGB(200,0,0)},{"Ocean Blue",Color3.fromRGB(0,100,255)},{"Galaxy",Color3.fromRGB(100,0,200)},
{"Fire Orange",Color3.fromRGB(255,100,0)},{"Ice Blue",Color3.fromRGB(100,200,255)},{"Gold",Color3.fromRGB(255,200,0)},
{"Dark Mode",Color3.fromRGB(20,20,40)}
}
for _,v in ipairs(presets)do btn(ColorTab,v[1],function()setColor(v[2])end)end
btn(ColorTab,"Save Current Color",function()setColor(currentColor)end)
btn(ColorTab,"Clear Saved (Rainbow)",function()
useRainbow=true currentColor=Color3.fromRGB(0,140,255)
if delfile and isfile("ArchiveXNova_Color.txt")then delfile("ArchiveXNova_Color.txt")end
Main.BackgroundColor3=Color3.fromRGB(12,12,28)
end)

local searchBox=Instance.new("TextBox",SearchTab)searchBox.Size=UDim2.new(1,0,0,40)searchBox.Position=UDim2.new(0,0,0,10)
searchBox.PlaceholderText="Search game name..."searchBox.Text=""searchBox.TextColor3=Color3.new(1,1,1)
searchBox.BackgroundColor3=Color3.fromRGB(30,30,50)searchBox.Font=Enum.Font.Gotham searchBox.TextSize=16
Instance.new("UICorner",searchBox).CornerRadius=UDim.new(0,12)table.insert(rainbowElements,searchBox)
if not useRainbow then searchBox.BackgroundColor3=currentColor:lerp(Color3.new(0,0,0),0.5)end

local enterBtn=Instance.new("TextButton",SearchTab)enterBtn.Size=UDim2.new(1,0,0,40)enterBtn.Position=UDim2.new(0,0,0,58)
enterBtn.Text="ENTER"enterBtn.TextColor3=Color3.new(1,1,1)enterBtn.Font=Enum.Font.GothamBlack enterBtn.TextSize=18
Instance.new("UICorner",enterBtn).CornerRadius=UDim.new(0,12)table.insert(rainbowElements,enterBtn)
if not useRainbow then enterBtn.BackgroundColor3=currentColor end

enterBtn.MouseButton1Click:Connect(function()
local query=searchBox.Text:lower():gsub("%p",""):gsub("%s+"," ")
local url=scriptMap[query]
if url then load(HttpGet(game,url))() end
end)

local copyBtn=Instance.new("TextButton",SearchTab)copyBtn.Size=UDim2.new(1,0,0,40)copyBtn.Position=UDim2.new(0,0,0,106)
copyBtn.Text="Copy Name Game"copyBtn.TextColor3=Color3.new(1,1,1)copyBtn.Font=Enum.Font.GothamBold copyBtn.TextSize=16
Instance.new("UICorner",copyBtn).CornerRadius=UDim.new(0,12)table.insert(rainbowElements,copyBtn)
if not useRainbow then copyBtn.BackgroundColor3=currentColor:lerp(Color3.new(0,0,0),0.3)end

copyBtn.MouseButton1Click:Connect(function()
local gameName="Unknown"
pcall(function()gameName=M:GetProductInfo(game.PlaceId).Name end)
gameName=gameName:gsub("[%[%(].-[%]%)]",""):gsub("UPD",""):gsub("%p",""):gsub("%s+"," "):match("^%s*(.-)%s*$")
setclipboard(gameName)
searchBox.Text=gameName
end)

local placeIdBox=Instance.new("TextBox",SearchTab)placeIdBox.Size=UDim2.new(1,0,0,40)placeIdBox.Position=UDim2.new(0,0,0,154)
placeIdBox.PlaceholderText="Search PlaceID..."placeIdBox.Text=""placeIdBox.TextColor3=Color3.new(1,1,1)
placeIdBox.BackgroundColor3=Color3.fromRGB(30,30,50)placeIdBox.Font=Enum.Font.Gotham placeIdBox.TextSize=16
Instance.new("UICorner",placeIdBox).CornerRadius=UDim.new(0,12)table.insert(rainbowElements,placeIdBox)
if not useRainbow then placeIdBox.BackgroundColor3=currentColor:lerp(Color3.new(0,0,0),0.5)end

local placeIdEnter=Instance.new("TextButton",SearchTab)placeIdEnter.Size=UDim2.new(1,0,0,40)placeIdEnter.Position=UDim2.new(0,0,0,202)
placeIdEnter.Text="ENTER (PlaceID)"placeIdEnter.TextColor3=Color3.new(1,1,1)placeIdEnter.Font=Enum.Font.GothamBlack placeIdEnter.TextSize=18
Instance.new("UICorner",placeIdEnter).CornerRadius=UDim.new(0,12)table.insert(rainbowElements,placeIdEnter)
if not useRainbow then placeIdEnter.BackgroundColor3=currentColor end

placeIdEnter.MouseButton1Click:Connect(function()
local id=placeIdBox.Text:match("^%d+$")
if id and placeIdMap[id] then
load(HttpGet(game,placeIdMap[id]))()
end
end)

local copyPlaceIdBtn=Instance.new("TextButton",SearchTab)copyPlaceIdBtn.Size=UDim2.new(1,0,0,40)copyPlaceIdBtn.Position=UDim2.new(0,0,0,250)
copyPlaceIdBtn.Text="Copy PlaceID Game"copyPlaceIdBtn.TextColor3=Color3.new(1,1,1)copyPlaceIdBtn.Font=Enum.Font.GothamBold copyPlaceIdBtn.TextSize=16
Instance.new("UICorner",copyPlaceIdBtn).CornerRadius=UDim.new(0,12)table.insert(rainbowElements,copyPlaceIdBtn)
if not useRainbow then copyPlaceIdBtn.BackgroundColor3=currentColor:lerp(Color3.new(0,0,0),0.3)end

copyPlaceIdBtn.MouseButton1Click:Connect(function()
setclipboard(tostring(game.PlaceId))
placeIdBox.Text=tostring(game.PlaceId)
end)

X.MouseButton1Click:Connect(function()sg:Destroy()end)
