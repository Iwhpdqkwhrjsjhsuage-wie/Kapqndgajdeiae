repeat wait() until game:IsLoaded()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nevcit/GOA_HUB/refs/heads/main/KeySystem.lua"))()
local screen = game:GetService("CoreGui").KeySystem
local box = game:GetService("CoreGui").KeySystem.Frame.TextBox
local tb3 = game:GetService("CoreGui").KeySystem.Frame.Frame:GetChildren()[3]
local tb2 = game:GetService("CoreGui").KeySystem.Frame.Frame.TextButton
local correct = false
getgenv().Nevcit = false
local KeyGuardLibrary = loadstring(game:HttpGet("https://cdn.keyguardian.org/library/v1.0.0.lua"))()
local trueData = "f8697a274a6147978e4430002dd72c79"
local falseData = "b3d0b953d17a4191bc765c9be4503ba3"

KeyGuardLibrary.Set({
  publicToken = "236a84aa38b742699016bf40133dbec7",
  privateToken = "a6bca04c1b964ce896721bc4c6a859de",
  trueData = trueData,
  falseData = falseData,
})

tb3.MouseButton1Click:Connect(function()
    local getkey = KeyGuardLibrary.getLink()    
    game.StarterGui:SetCore("SendNotification", {
        Title = "Notifications";
        Text = "Paste on Website";
        Duration = "10";
        Button1 = "OK"
    })
    setclipboard(getkey)
end)

tb2.MouseButton1Click:Connect(function()
    local key = box.Text
    local response = KeyGuardLibrary.validateDefaultKey(key)
    if response == trueData and not getgenv().UseKey and not getgenv().KeyMode and not getgenv().AllowAnyKey then
        game.StarterGui:SetCore("SendNotification", {
            Title = "Loading .......";
            Text = "Please Wait";
            Duration = "4";
            Button1 = "OK"
        })
        writefile("GOAHUB/Key.txt", key)
        box.Text = "Valid Key"        
        task.wait(0.1)
        screen:Destroy()
        task.wait(0.1)
        getgenv().Nevcit = true
        task.wait(0.1)
        correct = true
    elseif response ~= trueData or getgenv().UseKey or getgenv().KeyMode or getgenv().AllowAnyKey then
        box.Text = "Invalid Key"
        game.StarterGui:SetCore("SendNotification", {
            Title = "ERROR";
            Text = "GET KEY FIRST";
            Duration = "5";
            Button1 = "OK"
        })
    end
end)

local jcn = readfile("GOAHUB/Key.txt")
local response = KeyGuardLibrary.validateDefaultKey(jcn)
if response == trueData and not getgenv().UseKey and not getgenv().KeyMode and not getgenv().AllowAnyKey then
  box.Text = "Valid Key"
  game.StarterGui:SetCore("SendNotification", {
    Title = "Loading .......";
    Text = "Please Wait";
    Duration = "4";
    Button1 = "OK"
  })
  task.wait(0.1)
  screen:Destroy()
  task.wait(0.1)
  getgenv().Nevcit = true
  task.wait(0.1)
  correct = true
elseif response ~= trueData or getgenv().UseKey or getgenv().KeyMode or getgenv().AllowAnyKey then
  box.Text = "Invalid Key"
  game.StarterGui:SetCore("SendNotification", {
    Title = "ERROR";
    Text = "GET KEY FIRST";
    Duration = "5";
    Button1 = "OK"
  })
end

repeat task.wait() until correct and getgenv().Nevcit and not getgenv().UseKey and not getgenv().KeyMode and not getgenv().AllowAnyKey
for _, gui in ipairs(game:GetService("CoreGui"):GetChildren()) do
    if gui.Name == "FLUENT" then
      gui:Destroy()
    end
end

----------------- LOCAL -------------------------------
local p = Instance.new("Part", workspace)
p.Name = "Nevcit"
p.Anchored = true
p.CanCollide = true
p.Transparency = 1
p.Size = Vector3.new(5, 5, 5)
--------------------- MAIN LOCAL -----------------------------
local autoplaypande
local tp
local instant
local autoloot
local autolootroom
local avoid
local desturret
local electricity
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")
local head = character:WaitForChild("Head")
-------------------\\ LOCAL EVENT //----------------
local electric
local turret
local squiddle
local eyesfestation
local destroyfake
local destroymoney
local destroyitem
local destroytrickster
local destroylocker
local generator
local cable
local destroy
local removegen
local money
local monster
local monster2
local keycard
local real
local fake
local locker
local item
local notify
local notify2
local removenotify
local removenotify2
----------------\\ getgenv() //---------------------
getgenv().EspDoor = false
getgenv().EspItem = false
getgenv().EspMoney = false
getgenv().EspKeyCard = false
getgenv().EspMonster = false
getgenv().EspLocker = false
getgenv().EspFakeDoor = false
getgenv().BreakLoopAutoLoot = false
getgenv().BreakLoopGenerator = false
getgenv().BreakLoopCable = false
getgenv().BreakLoopAvoid = false
getgenv().BreakLoopElectric = false
getgenv().BreakLoopTurret = false
getgenv().HighlightMode = false
getgenv().DistanceMode = false
getgenv().WalkSpeed = nil
getgenv().ActiveWalkSpeed = false
------------------------ TABLE LOCAL ---------------------------------
local gen = {}
local cable = {}
local trickster ={}
local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nevcit/UI-Library/main/Loadstring/FluentLib"))()

--------------------\\ TABLES //--------------------------

local objecthighlight = {}

local lootNames = {
    ["5Currency"] = 9, ["10Currency"] = 9, ["15Currency"] = 9, ["25Currency"] = 9, ["50Currency"] = 9, ["100Currency"] = 9, 
    ["200Currency"] = 9, ["500Currency"] = 9, ["InnerKeyCard"] = 9, ["NormalKeyCard"] = 9, ["RidgeKeyCard"] = 9,
    ["BigFlashBeacon"] = 7, ["FlashBeacon"] = 7, ["Medkit"] = 7, ["RoomsBattery"] = 7, 
    ["DefaultBattery1"] = 7, ["DefaultBattery2"] = 7, ["DefaultBattery3"] = 7, 
    ["AltBattery1"] = 7, ["AltBattery2"] = 7, ["AltBattery3"] = 7, ["CodeBreacher"] = 7,
    ["Flashlight"] = 7, ["Lantern"] = 7, ["SmallLantern"] = 7, ["Blacklight"] = 7, ["Gummylight"] = 7, ["WindupLight"] = 7
}

local nameMapping = {
  BigFlashBeacon = "FlashBeacon",
  SmallLantern = "Lantern",
  Flashlight =   "Flashlight",
  Gummylight = "Gummylight",
  Blacklight = "Blacklight",
  Lantern =   "Lantern",
  FlashBeacon = "FlashBeacon",
  Medkit = "Medkit",
  CodeBreacher = "CodeBreacher",
  WindupLight = "Hand Cranked Flashlight",
  ToyRemote = "Toy Remote",
  RoomsBattery = "Batteries",
  AltBattery1 = "Batteries",
  AltBattery2 = "Batteries",
  AltBattery3 = "Batteries",
  DefaultBattery1 = "Batteries",
  DefaultBattery2 = "Batteries",
  DefaultBattery3 = "Batteries"
}

local namaItem = {
  BigFlashBeacon = "Flash Beacon",
  SmallLantern = "Lantern",
  Flashlight =   "Flashlight",
  Gummylight = "Gummylight",
  Blacklight = "Blacklight",
  Lantern =   "Lantern",
  FlashBeacon = "Flash Beacon",
  Medkit = "Medkit",
  CodeBreacher = "Code Breacher",
  WindupLight = "Hand Cranked Flashlight",
  RoomsBattery = "Battery",
  AltBattery1 = "Battery",
  AltBattery2 = "Battery",
  AltBattery3 = "Battery",
  DefaultBattery1 = "Battery",
  DefaultBattery2 = "Battery",
  DefaultBattery3 = "Battery"
}

local hargaCurrency = {
  ["5Currency"] = "5$",
  ["10Currency"] = "10$",
  ["15Currency"] = "15$",
  ["25Currency"] = "25$",
  ["50Currency"]= "50$",
  ["100Currency"] = "100$",
  ["200Currency"] = "200$",
  ["500Currency"] = "500$"
}

local KeyCard = {
  NormalKeyCard = { Name = "Normal KeyCard", Color = Color3.fromRGB(70, 130, 180) },
  InnerKeyCard = { Name = "Inner KeyCard", Color = Color3.fromRGB(138, 43, 226) },
  RidgeKeyCard = { Name = "Ridge KeyCard", Color = Color3.fromRGB(139, 69, 19) }
}

local Monsters = {
    Angler = "Angler", 
    Chainsmoker = "Chainsmoker", 
    Blitz = "Blitz", 
    Pinkie = "Pinkie", 
    Froger = "Froger", 
    Pandemonium = "Pandemonium", 
    RidgeAngler = "Angler", 
    RidgeChainsmoker = "Chainsmoker", 
    RidgeBlitz = "Blitz", 
    RidgeFroger = "Froger", 
    RidgeChainSmoker = "ChainSmoker", 
    RidgePinkie = "Pinkie",
    WallDweller = "Wall Dweller"
}

local monsterNames = {
    "Angler", "Pinkie", "Chainsmoker", "Blitz", "Froger", "Pandemonium",
    "RidgeAngler", "RidgeChainsmoker", "RidgeChainSmoker", "RidgeBlitz", 
    "RidgeFroger", "RidgePinkie", "TheMulti-Monster", "WallDweller"
}


local notifiedMonsters = {}

-----------------\\ FUNCTION //----------------------

local function showNotification(monsterName)
    if Monsters[monsterName] then
        monsterName = Monsters[monsterName]
    end
    
    -- Cek jika monster sudah pernah diberi notifikasi
    if not notifiedMonsters[monsterName] then
        -- Tandai monster ini sudah diberi notifikasi
        notifiedMonsters[monsterName] = true

        -- Tampilkan notifikasi
        Fluent:Notify({
            Title = "Monster Has Spawned",
            Content = "Monster : " .. monsterName,
            SubContent = "", -- Optional
            Duration = 5 -- Set to nil to make the notification not disappear
        })
    end
end

local function getInventoryAttributes() ----- OPSIONAL AUTOLOOT
    local player = game.Players.LocalPlayer
    local inventory = player:FindFirstChild("PlayerFolder") and player.PlayerFolder:FindFirstChild("Inventory")
    local attributes = {
        Flashlight = { Charge = 0 },
        Lantern = { Charge = 0 },
        Blacklight = { Charge = 0 },
        Gummylight = { Charge = 0 },
        FlashBeacon = { Uses = 0 } -- Hanya simpan FlashBeacon untuk Uses
    }

    -- Periksa nilai di inventori berdasarkan nama objek di tabel attributes
    for itemName, attr in pairs(attributes) do
        local item = inventory:FindFirstChild(itemName)
        if item and item:IsA("NumberValue") then
            attr.Charge = item.Value
            attr.Uses = item.Value --- Menggunakan item.Value secara langsung
        end
    end

    return attributes
end

local function autoLoot()
    local lastCacheTime = 0
    local descendantsCache = {}
    local inventoryAttributes = getInventoryAttributes() -- Ambil nilai Charge dan Uses dari inventori

    while not getgenv().BreakLoopAutoLoot do
        -- Caching descendants setiap 0.5 detik
        if tick() - lastCacheTime >= 0.5 then
            descendantsCache = workspace.Rooms:GetDescendants()
            lastCacheTime = tick()
        end

        -- Looping melalui cache descendants
        for _, v in ipairs(descendantsCache) do
            if v:IsA("Model") and lootNames[v.Name] then
                local prompt = v:FindFirstChild("ProxyPart") and v.ProxyPart:FindFirstChildOfClass("ProximityPrompt")
                
                -- Cek jika prompt ada dan objek tidak memiliki atribut 'price' bertipe string
                if prompt and (not v:GetAttribute("Price") or typeof(v:GetAttribute("Price")) ~= "string") then
                    local distance = (v.ProxyPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                    -- Tangani objek dengan atribut Charge atau Uses berdasarkan nilai di inventori
                    local player = game.Players.LocalPlayer
                    local inventory = player.PlayerFolder:FindFirstChild("Inventory")
                    local inventoryName = nameMapping[v.Name] or v.Name
                    local inventoryCharge = inventoryAttributes[inventoryName] and inventoryAttributes[inventoryName].Charge or 0
                    
                    if (v.Name == "Flashlight" or v.Name == "Lantern" or v.Name == "SmallLantern" or v.Name == "Blacklight" or v.Name == "Gummylight" or v.Name == "WindupLight") then
                      local charge = v:GetAttribute("Charge")
                      local Daya = inventory:FindFirstChild(v.Name)
                      local Daya2 = inventory:FindFirstChild(inventoryName)
                      if Daya ~= nil or Daya2 ~= nil then
                        if charge >= Daya.Value or charge >= Daya2.Value then
                          if distance <= lootNames[v.Name] then
                            fireproximityprompt(prompt)
                            task.wait(0.1)
                          end
                        end
                      elseif Daya == nil or Daya2 == nil then
                        if distance <= lootNames[v.Name] then
                          fireproximityprompt(prompt)
                          task.wait(0.1)
                        end
                      end
                    elseif (v.Name == "FlashBeacon" or v.Name == "BigFlashBeacon") then
                      local uses = v:GetAttribute("Uses")
                      local inventoryUses = inventoryAttributes[inventoryName] and inventoryAttributes[inventoryName].Uses or 0
                      local Pakai = inventory:FindFirstChild("FlashBeacon")
                      local Pakai2 = inventory:FindFirstChild(inventoryName)
                      if Pakai ~= nil or Pakai2 ~= nil then
                        if uses >= Pakai.Value or uses >= Pakai2.Value then
                          if distance <= lootNames[v.Name] then
                            fireproximityprompt(prompt)
                            task.wait(0.1)
                          end
                        end
                      elseif Pakai == nil or Pakai2 == nil then
                        if distance <= lootNames[v.Name] then
                          fireproximityprompt(prompt)
                          task.wait(0.1)
                        end
                      end
                    elseif (v.Name == "CodeBreacher" or v.Name == "Medkit") then
                      local stack = inventory:FindFirstChild(v.Name)
                      if stack ~= nil then
                        if stack.Value < 4 then
                          if distance <= lootNames[v.Name] then
                            fireproximityprompt(prompt)
                            task.wait(0.1)
                          end
                        end
                      elseif stack == nil then
                        if distance <= lootNames[v.Name] then
                          fireproximityprompt(prompt)
                          task.wait(0.1)
                        end
                      end
                    else
                        if distance <= lootNames[v.Name] then
                            fireproximityprompt(prompt)
                            task.wait(0.1)
                        end
                    end
                end
            end
        end

        -- Tunggu 0.1 detik untuk mengulangi proses
        task.wait(0.1)
    end
end

local function createEspDoor(object, variabel)
  if getgenv().HighlightMode == false and getgenv().DistanceMode == true then
    local Esp = Instance.new("Folder", object)
    Esp.Name = "NevcitNormalDoor"

    local bg = Instance.new("BillboardGui", Esp)
    bg.Adornee = object
    bg.Size = UDim2.fromOffset(50, 25) -- Ukuran tinggi disesuaikan untuk dua label
    bg.AlwaysOnTop = true
    bg.ResetOnSpawn = false
    
    local label = Instance.new("TextLabel", bg)
    label.Size = UDim2.fromScale(1, 1) -- Tinggi diatur untuk mengisi sesuai dengan UIListLayout
    label.Text = "Door\n(10M)"
    label.TextColor3 = Color3.fromRGB(0, 255, 0)
    label.BackgroundTransparency = 1
    label.TextStrokeTransparency = 0.4
    label.LineHeight = 1
    label.TextScaled = true
    label.TextWrapped = false
    label.TextSize = 10
    task.spawn(function()
      while not variabel do
        local distance = math.floor((object.Position - hrp.Position).Magnitude / 3)   
        label.Text = "Door\n(" .. distance .. "M)"          
        task.wait(0.19)
      end
    end)
  elseif getgenv().HighlightMode == false and getgenv().DistanceMode == false then
    local Esp = Instance.new("Folder", object)
    Esp.Name = "NevcitNormalDoor"

    local bg = Instance.new("BillboardGui", Esp)
    bg.Adornee = object
    bg.Size = UDim2.fromOffset(50, 25) -- Ukuran tinggi disesuaikan untuk dua label
    bg.AlwaysOnTop = true
    bg.ResetOnSpawn = false
    
    local label = Instance.new("TextLabel", bg)
    label.Size = UDim2.fromScale(1, 1) -- Tinggi diatur untuk mengisi sesuai dengan UIListLayout
    label.Text = "Door"
    label.TextColor3 = Color3.fromRGB(0, 255, 0)
    label.BackgroundTransparency = 1
    label.TextStrokeTransparency = 0.4
    label.LineHeight = 1
    label.TextScaled = true
    label.TextWrapped = true
    label.TextSize = 5
  elseif getgenv().DistanceMode == false and getgenv().HighlightMode == true then
    local h = Instance.new("Highlight", object)
    h.Name = "NevcitNormalDoor"
    h.FillColor = Color3.fromRGB(0, 255, 0)
    h.FillTransparency = 0.3
    h.OutlineColor = Color3.fromRGB(0, 255, 0)
    h.OutlineTransparency = 0.5
    h.Adornee = object
  elseif getgenv().DistanceMode == true and getgenv().HighlightMode == true then
    local h = Instance.new("Highlight", object)
    h.Name = "NevcitNormalDoor"
    h.FillColor = Color3.fromRGB(0, 255, 0)
    h.FillTransparency = 0.3
    h.OutlineColor = Color3.fromRGB(0, 255, 0)
    h.OutlineTransparency = 0.5
    h.Adornee = object
    
    local Esp = Instance.new("Folder", object)
    Esp.Name = "NevcitNormalDoor"

    local bg = Instance.new("BillboardGui", Esp)
    bg.Adornee = object
    bg.Size = UDim2.fromOffset(50, 25) -- Ukuran tinggi disesuaikan untuk dua label
    bg.AlwaysOnTop = true
    bg.ResetOnSpawn = false
    
    local label = Instance.new("TextLabel", bg)
    label.Size = UDim2.fromScale(1, 1) -- Tinggi diatur untuk mengisi sesuai dengan UIListLayout
    label.Text = "Door\n(10M)"
    label.TextColor3 = Color3.fromRGB(0, 255, 0)
    label.BackgroundTransparency = 1
    label.TextStrokeTransparency = 0.4
    label.LineHeight = 1
    label.TextScaled = true
    label.TextWrapped = false
    label.TextSize = 10
    task.spawn(function()
      while not variabel do
        local distance = math.floor((object.Position - hrp.Position).Magnitude / 3)   
        label.Text = "Door\n(" .. distance .. "M)"          
        task.wait(0.19)
      end
    end)
  end
end

local function createEspItem(object, variabel)
  if getgenv().HighlightMode == false and getgenv().DistanceMode == true then
    local Esp = Instance.new("Folder", object)
    Esp.Name = "NevcitItem"

    local bg = Instance.new("BillboardGui", Esp)
    bg.Adornee = object
    bg.Size = UDim2.fromOffset(50, 25) -- Ukuran tinggi disesuaikan untuk dua label
    bg.AlwaysOnTop = true
    bg.ResetOnSpawn = false
    
    local label = Instance.new("TextLabel", bg)
    label.Size = UDim2.fromScale(1, 1) -- Tinggi diatur untuk mengisi sesuai dengan UIListLayout
    label.Text = namaItem[object.Name]
    label.TextColor3 = Color3.fromRGB(0, 191, 255)
    label.BackgroundTransparency = 1
    label.TextStrokeTransparency = 0.4
    label.LineHeight = 1
    label.TextScaled = true
    label.TextWrapped = false
    label.TextSize = 10
    task.spawn(function()
      while not variabel do
        local distance = math.floor((object.ProxyPart.Position - hrp.Position).Magnitude / 3)   
        label.Text = namaItem[object.Name] .. "\n(" .. distance .. "M)"          
        task.wait(0.19)
      end
    end)
  elseif getgenv().HighlightMode == false and getgenv().DistanceMode == false then
    local Esp = Instance.new("Folder", object)
    Esp.Name = "NevcitItem"

    local bg = Instance.new("BillboardGui", Esp)
    bg.Adornee = object
    bg.Size = UDim2.fromOffset(50, 25) -- Ukuran tinggi disesuaikan untuk dua label
    bg.AlwaysOnTop = true
    bg.ResetOnSpawn = false
    
    local label = Instance.new("TextLabel", bg)
    label.Size = UDim2.fromScale(1, 1) -- Tinggi diatur untuk mengisi sesuai dengan UIListLayout
    label.Text = namaItem[object.Name]
    label.TextColor3 = Color3.fromRGB(0, 191, 255)
    label.BackgroundTransparency = 1
    label.TextStrokeTransparency = 0.4
    label.LineHeight = 1
    label.TextScaled = true
    label.TextWrapped = true
    label.TextSize = 5
  elseif getgenv().DistanceMode == false and getgenv().HighlightMode == true then
    local h = Instance.new("Highlight", object)
    h.Name = "NevcitItem"
    h.FillColor = Color3.fromRGB(0, 191, 255)
    h.FillTransparency = 0.3
    h.OutlineColor = Color3.fromRGB(0, 191, 255)
    h.OutlineTransparency = 0.5
    h.Adornee = object
  elseif getgenv().DistanceMode == true and getgenv().HighlightMode == true then
    local h = Instance.new("Highlight", object)
    h.Name = "NevcitItem"
    h.FillColor = Color3.fromRGB(0, 191, 255)
    h.FillTransparency = 0.3
    h.OutlineColor = Color3.fromRGB(0, 191, 255)
    h.OutlineTransparency = 0.5
    h.Adornee = object
    
    local Esp = Instance.new("Folder", object)
    Esp.Name = "NevcitNormalDoor"

    local bg = Instance.new("BillboardGui", Esp)
    bg.Adornee = object
    bg.Size = UDim2.fromOffset(50, 25) -- Ukuran tinggi disesuaikan untuk dua label
    bg.AlwaysOnTop = true
    bg.ResetOnSpawn = false
    
    local label = Instance.new("TextLabel", bg)
    label.Size = UDim2.fromScale(1, 1) -- Tinggi diatur untuk mengisi sesuai dengan UIListLayout
    label.Text = namaItem[object.Name]
    label.TextColor3 = Color3.fromRGB(0, 191, 255)
    label.BackgroundTransparency = 1
    label.TextStrokeTransparency = 0.4
    label.LineHeight = 1
    label.TextScaled = true
    label.TextWrapped = false
    label.TextSize = 10
    task.spawn(function()
      while not variabel do
        local distance = math.floor((object.ProxyPart.Position - hrp.Position).Magnitude / 3)   
        label.Text = namaItem[object.Name] .. "\n(" .. distance .. "M)"          
        task.wait(0.19)
      end
    end)
  end
end

local function createEspMoney(object)
  if getgenv().HighlightMode == false and getgenv().DistanceMode == true then
    local Esp = Instance.new("Folder", object)
    Esp.Name = "NevcitCurrency"

    local bg = Instance.new("BillboardGui", Esp)
    bg.Adornee = object
    bg.Size = UDim2.fromOffset(50, 25) -- Ukuran tinggi disesuaikan untuk dua label
    bg.AlwaysOnTop = true
    bg.ResetOnSpawn = false
    
    local label = Instance.new("TextLabel", bg)
    label.Size = UDim2.fromScale(1, 1) -- Tinggi diatur untuk mengisi sesuai dengan UIListLayout
    label.Text = hargaCurrency[object.Name]
    label.TextColor3 = Color3.fromRGB(255, 215, 0)
    label.BackgroundTransparency = 1
    label.TextStrokeTransparency = 0.4
    label.LineHeight = 1
    label.TextScaled = true
    label.TextWrapped = true
    label.TextSize = 10
    task.spawn(function()
      while not getgenv().EspMoney do
        local distance = math.floor((object.ProxyPart.Position - hrp.Position).Magnitude / 3)   
        label.Text =  hargaCurrency[object.Name] .. "\n(" .. distance .. "M)"          
        task.wait(0.19)
      end
    end)
  elseif getgenv().HighlightMode == false and getgenv().DistanceMode == false then
    local Esp = Instance.new("Folder", object)
    Esp.Name = "NevcitCurrency"

    local bg = Instance.new("BillboardGui", Esp)
    bg.Adornee = object
    bg.Size = UDim2.fromOffset(50, 25) -- Ukuran tinggi disesuaikan untuk dua label
    bg.AlwaysOnTop = true
    bg.ResetOnSpawn = false
    
    local label = Instance.new("TextLabel", bg)
    label.Size = UDim2.fromScale(1, 1) -- Tinggi diatur untuk mengisi sesuai dengan UIListLayout
    label.Text = hargaCurrency[object.Name]
    label.TextColor3 = Color3.fromRGB(255, 215, 0)
    label.BackgroundTransparency = 1
    label.TextStrokeTransparency = 0.4
    label.LineHeight = 1
    label.TextScaled = true
    label.TextWrapped = false
    label.TextSize = 5
  elseif getgenv().DistanceMode == false and getgenv().HighlightMode == true then
    local h = Instance.new("Highlight", object)
    h.Name = "NevcitCurrency"
    h.FillColor = Color3.fromRGB(255, 215, 0)
    h.FillTransparency = 0.3
    h.OutlineColor = Color3.fromRGB(255, 215, 0)
    h.OutlineTransparency = 0.5
    h.Adornee = object
  elseif getgenv().DistanceMode == true and getgenv().HighlightMode == true then
    local h = Instance.new("Highlight", object)
    h.Name = "NevcitCurrency"
    h.FillColor = Color3.fromRGB(255, 215, 0)
    h.FillTransparency = 0.3
    h.OutlineColor = Color3.fromRGB(255, 215, 0)
    h.OutlineTransparency = 0.5
    h.Adornee = object
    
    local Esp = Instance.new("Folder", object)
    Esp.Name = "NevciCurrency"

    local bg = Instance.new("BillboardGui", Esp)
    bg.Adornee = object
    bg.Size = UDim2.fromOffset(50, 25) -- Ukuran tinggi disesuaikan untuk dua label
    bg.AlwaysOnTop = true
    bg.ResetOnSpawn = false
    
    local label = Instance.new("TextLabel", bg)
    label.Size = UDim2.fromScale(1, 1) -- Tinggi diatur untuk mengisi sesuai dengan UIListLayout
    label.Text = hargaCurrency[object.Name]
    label.TextColor3 = Color3.fromRGB(255, 215, 0)
    label.BackgroundTransparency = 1
    label.TextStrokeTransparency = 0.4
    label.LineHeight = 1
    label.TextScaled = true
    label.TextWrapped = false
    label.TextSize = 10
    task.spawn(function()
      while not getgenv().EspMoney do
        local distance = math.floor((object.ProxyPart.Position - hrp.Position).Magnitude / 3)   
        label.Text = hargaCurrency[object.Name] .. "\n(" .. distance .. "M)"          
        task.wait(0.19)
      end
    end)
  end
end

local function createEspKeyCard(object)
  if getgenv().HighlightMode == false and getgenv().DistanceMode == true then
    local Esp = Instance.new("Folder", object)
    Esp.Name = "NevcitKeyCard"

    local bg = Instance.new("BillboardGui", Esp)
    bg.Adornee = object
    bg.Size = UDim2.fromOffset(50, 25)
    bg.AlwaysOnTop = true
    bg.ResetOnSpawn = false
    
    local label = Instance.new("TextLabel", bg)
    label.Size = UDim2.fromScale(1, 1)
    label.Text = KeyCard[object.Name].Name
    label.TextColor3 = KeyCard[object.Name].Color
    label.BackgroundTransparency = 1
    label.TextStrokeTransparency = 0.4
    label.LineHeight = 1
    label.TextScaled = true
    label.TextWrapped = false
    label.TextSize = 10
    task.spawn(function()
      while not getgenv().EspKeyCard do
        local distance = math.floor((object.ProxyPart.Position - hrp.Position).Magnitude / 3)   
        label.Text =  KeyCard[object.Name].Name .. "\n(" .. distance .. "M)"          
        task.wait(0.19)
      end
    end)
  elseif getgenv().HighlightMode == false and getgenv().DistanceMode == false then
    local Esp = Instance.new("Folder", object)
    Esp.Name = "NevcitKeyCard"

    local bg = Instance.new("BillboardGui", Esp)
    bg.Adornee = object
    bg.Size = UDim2.fromOffset(50, 25) -- Ukuran tinggi disesuaikan untuk dua label
    bg.AlwaysOnTop = true
    bg.ResetOnSpawn = false
    
    local label = Instance.new("TextLabel", bg)
    label.Size = UDim2.fromScale(1, 1) -- Tinggi diatur untuk mengisi sesuai dengan UIListLayout
    label.Text = KeyCard[object.Name].Name
    label.TextColor3 = KeyCard[object.Name].Color
    label.BackgroundTransparency = 1
    label.TextStrokeTransparency = 0.4
    label.LineHeight = 1
    label.TextScaled = true
    label.TextWrapped = false
    label.TextSize = 5
  elseif getgenv().DistanceMode == false and getgenv().HighlightMode == true then
    local h = Instance.new("Highlight", object)
    h.Name = "NevcitKeyCard"
    h.FillColor = KeyCard[object.Name].Color
    h.FillTransparency = 0.3
    h.OutlineColor = KeyCard[object.Name].Color
    h.OutlineTransparency = 0.5
    h.Adornee = object
  elseif getgenv().DistanceMode == true and getgenv().HighlightMode == true then
    local h = Instance.new("Highlight", object)
    h.Name = "NevcitKeyCard"
    h.FillColor = KeyCard[object.Name].Color
    h.FillTransparency = 0.3
    h.OutlineColor = KeyCard[object.Name].Color
    h.OutlineTransparency = 0.5
    h.Adornee = object
    
    local Esp = Instance.new("Folder", object)
    Esp.Name = "NevcitKeyCard"

    local bg = Instance.new("BillboardGui", Esp)
    bg.Adornee = object
    bg.Size = UDim2.fromOffset(50, 25) -- Ukuran tinggi disesuaikan untuk dua label
    bg.AlwaysOnTop = true
    bg.ResetOnSpawn = false
    
    local label = Instance.new("TextLabel", bg)
    label.Size = UDim2.fromScale(1, 1) -- Tinggi diatur untuk mengisi sesuai dengan UIListLayout
    label.Text = KeyCard[object.Name].Name
    label.TextColor3 = KeyCard[object.Name].Color
    label.BackgroundTransparency = 1
    label.TextStrokeTransparency = 0.4
    label.LineHeight = 1
    label.TextScaled = true
    label.TextWrapped = false
    label.TextSize = 10
    task.spawn(function()
      while not getgenv().EspKeyCard do
        local distance = math.floor((object.ProxyPart.Position - hrp.Position).Magnitude / 3)   
        label.Text = KeyCard[object.Name].Name .. "\n(" .. distance .. "M)"          
        task.wait(0.19)
      end
    end)
  end
end

local function createEspMonster(object)
  if getgenv().HighlightMode == false and getgenv().DistanceMode == true then
    local Esp = Instance.new("Folder", object)
    Esp.Name = "NevcitMonster"

    local bg = Instance.new("BillboardGui", Esp)
    bg.Adornee = object
    bg.Size = UDim2.fromOffset(50, 25) -- Ukuran tinggi disesuaikan untuk dua label
    bg.AlwaysOnTop = true
    bg.ResetOnSpawn = false
    
    local label = Instance.new("TextLabel", bg)
    label.Size = UDim2.fromScale(1, 1) -- Tinggi diatur untuk mengisi sesuai dengan UIListLayout
    label.Text = Monsters[object.Name]
    label.TextColor3 = Color3.fromRGB(255, 0, 0)
    label.BackgroundTransparency = 1
    label.TextStrokeTransparency = 0.4
    label.LineHeight = 1
    label.TextScaled = true
    label.TextWrapped = true
    label.TextSize = 10
    task.spawn(function()
      while not getgenv().EspMonster do
        local distance = math.floor((object.Position - hrp.Position).Magnitude / 3)   
        label.Text =  Monsters[object.Name] .. "\n(" .. distance .. "M)"          
        task.wait(0.05)
      end
    end)
  elseif getgenv().HighlightMode == false and getgenv().DistanceMode == false then
    local Esp = Instance.new("Folder", object)
    Esp.Name = "NevcitMonster"

    local bg = Instance.new("BillboardGui", Esp)
    bg.Adornee = object
    bg.Size = UDim2.fromOffset(50, 25) -- Ukuran tinggi disesuaikan untuk dua label
    bg.AlwaysOnTop = true
    bg.ResetOnSpawn = false
    
    local label = Instance.new("TextLabel", bg)
    label.Size = UDim2.fromScale(1, 1) -- Tinggi diatur untuk mengisi sesuai dengan UIListLayout
    label.Text = Monsters[object.Name]
    label.TextColor3 = Color3.fromRGB(255, 0, 0)
    label.BackgroundTransparency = 1
    label.TextStrokeTransparency = 0.4
    label.LineHeight = 1
    label.TextScaled = true
    label.TextWrapped = true
    label.TextSize = 5
  elseif getgenv().DistanceMode == false and getgenv().HighlightMode == true then
    local h = Instance.new("Highlight", object)
    h.Name = "NevcitMonster"
    h.FillColor = Color3.fromRGB(255, 0, 0)
    h.FillTransparency = 0.3
    h.OutlineColor = Color3.fromRGB(255, 0, 0)
    h.OutlineTransparency = 0.5
    h.Adornee = object
  elseif getgenv().DistanceMode == true and getgenv().HighlightMode == true then
    local h = Instance.new("Highlight", object)
    h.Name = "NevcitMonster"
    h.FillColor = Color3.fromRGB(255, 0, 0)
    h.FillTransparency = 0.3
    h.OutlineColor = Color3.fromRGB(255, 0, 0)
    h.OutlineTransparency = 0.5
    h.Adornee = object
    
    local Esp = Instance.new("Folder", object)
    Esp.Name = "NevcitMonster"

    local bg = Instance.new("BillboardGui", Esp)
    bg.Adornee = object
    bg.Size = UDim2.fromOffset(50, 25) -- Ukuran tinggi disesuaikan untuk dua label
    bg.AlwaysOnTop = true
    bg.ResetOnSpawn = false
    
    local label = Instance.new("TextLabel", bg)
    label.Size = UDim2.fromScale(1, 1) -- Tinggi diatur untuk mengisi sesuai dengan UIListLayout
    label.Text = Monsters[object.Name]
    label.TextColor3 = Color3.fromRGB(255, 0, 0)
    label.BackgroundTransparency = 1
    label.TextStrokeTransparency = 0.4
    label.LineHeight = 1
    label.TextScaled = true
    label.TextWrapped = false
    label.TextSize = 10
    task.spawn(function()
      while not getgenv().EspMonster do
        local distance = math.floor((object.Position - hrp.Position).Magnitude / 3)   
        label.Text = Monsters[object.Name] .. "\n(" .. distance .. "M)"          
        task.wait(0.19)
      end
    end)
  end
end

local function createEspLocker(object)
  if getgenv().HighlightMode == false and getgenv().DistanceMode == true then
    local Esp = Instance.new("Folder", object)
    Esp.Name = "NevcitLocker"

    local bg = Instance.new("BillboardGui", Esp)
    bg.Adornee = object
    bg.Size = UDim2.fromOffset(50, 25) -- Ukuran tinggi disesuaikan untuk dua label
    bg.AlwaysOnTop = true
    bg.ResetOnSpawn = false
    
    local label = Instance.new("TextLabel", bg)
    label.Size = UDim2.fromScale(1, 1) -- Tinggi diatur untuk mengisi sesuai dengan UIListLayout
    label.Text = "Monster Locker"
    label.TextColor3 = Color3.fromRGB(255, 0, 0)
    label.BackgroundTransparency = 1
    label.TextStrokeTransparency = 0.4
    label.LineHeight = 1
    label.TextScaled = true
    label.TextWrapped = false
    label.TextSize = 10
    task.spawn(function()
      while not getgenv().EspLocker do
        local distance = math.floor((object.highlight.Locker.Position - hrp.Position).Magnitude / 3)   
        label.Text =  "Monster Locker\n(" .. distance .. "M)"          
        task.wait(0.18)
      end
    end)
  elseif getgenv().HighlightMode == false and getgenv().DistanceMode == false then
    local Esp = Instance.new("Folder", object)
    Esp.Name = "NevcitLocker"

    local bg = Instance.new("BillboardGui", Esp)
    bg.Adornee = object
    bg.Size = UDim2.fromOffset(50, 25) -- Ukuran tinggi disesuaikan untuk dua label
    bg.AlwaysOnTop = true
    bg.ResetOnSpawn = false
    
    local label = Instance.new("TextLabel", bg)
    label.Size = UDim2.fromScale(1, 1) -- Tinggi diatur untuk mengisi sesuai dengan UIListLayout
    label.Text = "Monster Locker"
    label.TextColor3 = Color3.fromRGB(255, 0, 0)
    label.BackgroundTransparency = 1
    label.TextStrokeTransparency = 0.4
    label.LineHeight = 1
    label.TextScaled = true
    label.TextWrapped = false
    label.TextSize = 5
  elseif getgenv().DistanceMode == false and getgenv().HighlightMode == true then
    local h = Instance.new("Highlight", object)
    h.Name = "NevictLocker"
    h.FillColor = Color3.fromRGB(255, 0, 0)
    h.FillTransparency = 0.3
    h.OutlineColor = Color3.fromRGB(255, 0, 0)
    h.OutlineTransparency = 0.5
    h.Adornee = object
  elseif getgenv().DistanceMode == true and getgenv().HighlightMode == true then
    local h = Instance.new("Highlight", object)
    h.Name = "NevcitLocker"
    h.FillColor = Color3.fromRGB(255, 0, 0)
    h.FillTransparency = 0.3
    h.OutlineColor = Color3.fromRGB(255, 0, 0)
    h.OutlineTransparency = 0.5
    h.Adornee = object
    
    local Esp = Instance.new("Folder", object)
    Esp.Name = "NevcitLocker"

    local bg = Instance.new("BillboardGui", Esp)
    bg.Adornee = object
    bg.Size = UDim2.fromOffset(50, 25) -- Ukuran tinggi disesuaikan untuk dua label
    bg.AlwaysOnTop = true
    bg.ResetOnSpawn = false
    
    local label = Instance.new("TextLabel", bg)
    label.Size = UDim2.fromScale(1, 1) -- Tinggi diatur untuk mengisi sesuai dengan UIListLayout
    label.Text = Monsters[object.Name]
    label.TextColor3 = Color3.fromRGB(255, 0, 0)
    label.BackgroundTransparency = 1
    label.TextStrokeTransparency = 0.4
    label.LineHeight = 1
    label.TextScaled = true
    label.TextWrapped = false
    label.TextSize = 10
    task.spawn(function()
      while not getgenv().EspLocker do
        local distance = math.floor((object.highlight.Locker.Position - hrp.Position).Magnitude / 3)   
        label.Text = "Monster Locker\n(" .. distance .. "M)"          
        task.wait(0.19)
      end
    end)
  end
end

local function lockPositionTo(part)
    local old = hrp.CFrame
    local player = game.Players.LocalPlayer
    local hrp = player.Character:WaitForChild("HumanoidRootPart")
    local objek = workspace.Nevcit
    objek.Position = hrp.Position + Vector3.new(0, 130, 0)
    local targetPosition = objek.Position + Vector3.new(0, hrp.Size.Y / 2, 0) -- Menyesuaikan agar tetap di atas part

    -- Loop untuk memaksa player tetap di posisi target
    local con
    con = game:GetService("RunService").Heartbeat:Connect(function()
        if (hrp.Position - targetPosition).magnitude > 0.1 then
            hrp.CFrame = CFrame.new(targetPosition)
        end
    end)
  
    local rev
    rev = part.Destroying:Connect(function()
        con:Disconnect()
        task.wait(0.3)
        hrp.CFrame = old
        rev:Disconnect()
    end)
end

local function applygenerator(inst)
	local text = Instance.new("BillboardGui")
	text.Name = "NevcitGenerator"
	text.Size = UDim2.new(0, 80, 0, 20)
	text.StudsOffset = Vector3.new(0, 0, 0)
	text.AlwaysOnTop = true
	text.Parent = inst:FindFirstChild("Model")
 text.MaxDistance = 200
	local label = Instance.new("TextLabel")
	label.Size = UDim2.new(1, 0, 1, 0)
 label.Name = "NevcitGenerator"
	label.Text = "Broken Generator"
	label.TextColor3 = Color3.new(1, 1, 1)
	label.BackgroundTransparency = 1
	label.TextStrokeTransparency = 0
	label.TextScaled = true
	label.Parent = text
 table.insert(gen, text)
end

local function applycable(inst)
	local text = Instance.new("BillboardGui")
	text.Name = "NevcitBrokenCable"
	text.Size = UDim2.new(0, 80, 0, 20)
	text.StudsOffset = Vector3.new(0, 0, 0)
	text.AlwaysOnTop = true
	text.Parent = inst
	text.MaxDistance = 300
	local label = Instance.new("TextLabel")
	label.Size = UDim2.new(1, 0, 1, 0)
 label.Name = "NevcitBrokenCable"
	label.Text = "Broken Cable"
	label.TextColor3 = Color3.new(1, 1, 1)
	label.BackgroundTransparency = 1
	label.TextStrokeTransparency = 0
	label.TextScaled = true
	label.Parent = text
 table.insert(cable, text)
end

local function applylocker(inst)
	local text = Instance.new("BillboardGui")
	text.Name = "NevcitLocker"
	text.Adornee = inst
	text.Size = UDim2.new(0, 80, 0, 50)
	text.StudsOffset = Vector3.new(0, 0, 0)
	text.AlwaysOnTop = true
	text.Parent = inst
	text.MaxDistance = 200
	local label = Instance.new("TextLabel")
	label.Size = UDim2.new(1, 0, 1, 0)
 label.Name = "NevcitLocker"
	label.Text = "Monster Locker"
	label.TextColor3 = Color3.fromRGB(196, 40, 28) 
	label.BackgroundTransparency = 1
	label.TextStrokeTransparency = 0
	label.TextScaled = false
	label.Parent = text
 local BHA = Instance.new("BoxHandleAdornment", text)
  BHA.Size = inst.highlight.Locker.Size + Vector3.new(0.1, 0, 0)
  BHA.Adornee = inst.highlight.Locker
  BHA.Color3 = Color3.fromRGB(138, 43, 226)
  BHA.Name = "NevcitLocker"
  BHA.Transparency = 0.5
  BHA.ZIndex = 5
  BHA.AlwaysOnTop = true
	table.insert(locker, text)
end

local function applytrickster(inst)
	local text = Instance.new("BillboardGui")
	text.Name = "NevcitTrickster"
	text.Adornee = inst
	text.Size = UDim2.new(0, 80, 0, 50)
	text.StudsOffset = Vector3.new(0, 0, 0)
	text.AlwaysOnTop = true
	text.Parent = inst
	text.MaxDistance = 200
	local label = Instance.new("TextLabel")
	label.Size = UDim2.new(1, 0, 1, 0)
 label.Name = "NevcitTrickster"
	label.Text = "Fake Door"
	label.TextColor3 = Color3.new(1, 1, 1) 
	label.BackgroundTransparency = 1
	label.TextStrokeTransparency = 0
	label.TextScaled = false
	label.Parent = text
  local BHA = Instance.new("BoxHandleAdornment", text)
  BHA.Size = inst.Door.Door1.Size + Vector3.new(0.1, 0, 0)
  BHA.Adornee = inst.Door.Door1
  BHA.Color3 = Color3.fromRGB(255, 0, 0)
  BHA.Name = "NevcitTrickster"
  BHA.Transparency = 0.5
  BHA.ZIndex = 5
  BHA.AlwaysOnTop = true
  table.insert(trickster, text)
end

local function applytrickster1(inst)
  local Esp = Instance.new("Folder", inst)
  Esp.Name = "NevcitTrickster"
  local text = Instance.new("BillboardGui", Esp)
  text.Adornee = inst
  text.Size = UDim2.fromOffset(150, 25)
  text.StudsOffset = Vector3.new(-0.5, 1, 0)
  text.AlwaysOnTop = true
  text.MaxDistance = 200
  local bg = Instance.new("BillboardGui", Esp)
  bg.Adornee = inst
  bg.Size = UDim2.fromScale(1, 1)
  bg.StudsOffset = Vector3.new(-0.5, -0.5, 0)
  bg.AlwaysOnTop = true
  local f = Instance.new("Frame", bg)
  f.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
  f.Size = UDim2.fromScale(2,2)
  f.ZIndex = 5
  f.BorderSizePixel = 0
  local label = Instance.new("TextLabel", text)
  label.Size = UDim2.new(1, 0, 1, 0)
  label.Name = "NevcitTrickster"
  label.Text = "Fake Door"
  label.TextColor3 = Color3.fromRGB(255, 0, 0)
  label.BackgroundTransparency = 1
  label.TextStrokeTransparency = 0
  label.TextScaled = false
end

local function applynormaldoor(inst)
	local text = Instance.new("BillboardGui")
	text.Name = "NevcitNormalDoor"
	text.Adornee = inst
	text.Size = UDim2.new(20, 80, 20, 80)
	text.StudsOffset = Vector3.new(0, 0, 0)
	text.AlwaysOnTop = true
	text.Parent = inst
 local Box = Instance.new("BoxHandleAdornment", text)
  Box.Adornee = inst.Door
  Box.Size = inst.Door.Door1.Size + Vector3.new(0.1, 0, 0)
  Box.Color3 = Color3.fromRGB(0, 255, 0)
  Box.Name = "NevcitNormalDoor"
  Box.AlwaysOnTop = true
  Box.Transparency = 0.5
  Box.ZIndex = 4
	local label = Instance.new("TextLabel", text)
	label.Size = UDim2.new(1, 0, 1, 0)
 label.Name = "NevcitNormalDoorText"
	label.Text = "Door"
	label.TextColor3 = Color3.fromRGB(161, 165, 162) 
	label.BackgroundTransparency = 1
	label.TextStrokeTransparency = 1
 label.ZIndex = 10
	label.TextScaled = false
	table.insert(normaldoor, text)
end

local function applybigdoor(inst)
	local text = Instance.new("BillboardGui")
	text.Name = "NevcitNormalDoor"
	text.Adornee = inst
	text.Size = UDim2.new(20, 80, 20, 80)
	text.StudsOffset = Vector3.new(0, 0, 0)
	text.AlwaysOnTop = true
	text.Parent = inst
 local Box = Instance.new("BoxHandleAdornment", text)
  Box.Adornee = inst.Door
  Box.Size = inst.Door.BigRoomDoor.Frame:FindFirstChild("Frame").Size + Vector3.new(0.1, 0, 0)
  Box.Color3 = Color3.fromRGB(0, 255, 0)
  Box.Name = "NevcitNormalDoor"
  Box.AlwaysOnTop = true
  Box.Transparency = 0.5
  Box.ZIndex = 5
  local label = Instance.new("TextLabel", text)
  label.Size = UDim2.new(1, 0, 1, 0)
  label.Name = "NevcitNormalDoorText"
  label.Text = "Door"
  label.TextColor3 = Color3.fromRGB(161, 165, 162) 
  label.BackgroundTransparency = 1
  label.TextStrokeTransparency = 0
  label.TextScaled = false
  label.ZIndex = 10
  table.insert(normaldoor, text)
end

local function applynormaldoor1(inst)
  if not inst then return end
  local Esp = Instance.new("Folder", inst)
  Esp.Name = "NevcitNormalDoor"
  local text = Instance.new("BillboardGui", Esp)
  text.Adornee = inst
  text.Size = UDim2.fromScale(1, 1)
  text.StudsOffset = Vector3.new(-0.5, -0.5, 0)
  text.AlwaysOnTop = true
  local f = Instance.new("Frame", text)
  f.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
  f.Size = UDim2.fromScale(2,2)
  f.ZIndex = 5
  f.BorderSizePixel = 0
  local bg = Instance.new("BillboardGui", Esp)
  bg.Adornee = inst
  bg.Size = UDim2.fromOffset(150, 25)
  bg.StudsOffset = Vector3.new(0, 1, 0)
  bg.AlwaysOnTop = true
  bg.ResetOnSpawn = false
  local label = Instance.new("TextLabel", bg)
  label.Size = UDim2.fromScale(1,1)
  label.Text = "Door"
  label.TextColor3 = Color3.fromRGB(0, 255, 0) 
  label.BackgroundTransparency = 1
  label.TextStrokeTransparency = 0
  label.TextScaled = false
end

local Window = Fluent:CreateWindow({
    Title = "GOA Hub",
    SubTitle = "by Nevcit",
    TabWidth = 80,
    Size = UDim2.fromOffset(580, 340),
    Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

local Options = Fluent.Options

local Tabs = {
  Main = Window:AddTab({ Title = "Main", Icon = "home" }),
  esp = Window:AddTab({ Title = "ESP", Icon = "eye" }),
  Script = Window:AddTab({ Title = "Script", Icon = "diamond" }),
  Save = Window:AddTab({ Title = "Save Settings", Icon = "save" }),
  Credit = Window:AddTab({ Title = "Credit", Icon = "bookmark" })
}

------------------------ MAIN TAB --------------------------

local Slider = Tabs.Main:AddSlider("WalkSpeed", 
{
    Title = "WalkSpeed",
    Description = "",
    Default = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,
    Min = 10,
    Max = 50,
    Rounding = 1,
    Callback = function(Value)
      getgenv().WalkSpeed = Value
    end
})

local Toggle = Tabs.Main:AddToggle("Active WalkSpeed", 
{
    Title = "Active WalkSpeed", 
    Description = "",
    Default = false,
    Callback = function(state)
      getgenv().ActiveWalkSpeed = false
      if state then
        getgenv().ActiveWalkSpeed = true
        repeat task.wait(0.1)
          if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= getgenv().WalkSpeed then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = getgenv().WalkSpeed
          end
        until not getgenv().ActiveWalkSpeed
      end
      if not state then
        getgenv().ActiveWalkSpeed = false
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 10
      end
    end 
})

local Toggle = Tabs.Main:AddToggle("FullBright", 
{
    Title = "Full Bright", 
    Description = "",
    Default = false,
    Callback = function(state)
	if state then
	    local lighting = game.Lighting
      lighting.Brightness = 3
      lighting.ClockTime = 14
	     lighting.FogEnd = 100000
   	  lighting.GlobalShadows = false
		    lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
	else
	    local lighting = game.Lighting
      lighting.Brightness = 0.09
      lighting.ClockTime = 0
		     lighting.FogEnd = 2000
		     lighting.GlobalShadows = false
		     lighting.OutdoorAmbient = Color3.fromRGB(0, 0, 0)
        end
    end 
})

local Toggle = Tabs.Main:AddToggle("Instant Interact", 
{
    Title = "Instant Interact", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        instant = game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
          if prompt.HoldDuration ~= 0 then
            fireproximityprompt(prompt)
            task.wait(0.2)
          end
        end)
      end
      if state == false then
        instant:Disconnect()
      end
    end 
})

local Toggle = Tabs.Main:AddToggle("Notify Monster", 
{
    Title = "Notify Monster", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
       notify = workspace.ChildAdded:Connect(function(inst)
         if inst:IsA("Part") and table.find(monsterNames, inst.Name) then
           showNotification(inst.Name)
         end
       end)

        notify2 = workspace.Monsters.ChildAdded:Connect(function(inst)
          if inst.Name == "WallDweller" then
            showNotification("WallDweller")
          end
        end)

        removenotify = workspace.ChildRemoved:Connect(function(inst)
          if inst:IsA("Part") and table.find(monsterNames, inst.Name) then
            notifiedMonsters[inst.Name] = nil
          end
        end)
        
        removenotify2 = workspace.Monsters.ChildRemoved:Connect(function(inst)
          if inst:IsA("Part") and table.find(monsterNames, inst.Name) then
            notifiedMonsters[inst.Name] = nil
          end
        end)
      end
      if state == false then
        notify:Disconnect()
        wait()
        notify2:Disconnect()        
      end
    end 
})

local Toggle = Tabs.Main:AddToggle("Auto Loot V1", 
{
    Title = "Auto Loot V1", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        getgenv().BreakLoopAutoLoot = false
        while wait() do
          task.wait(0.3)
          local autoloot = coroutine.create(function()
            for _, v in ipairs(workspace.Rooms:GetDescendants()) do
              if v:IsA("Model") then
                if v.Name == "5Currency" or v.Name == "10Currency" or v.Name == "15Currency" or v.Name == "25Currency" or v.Name == "50Currency" or v.Name == "100Currency" or v.Name == "200Currency" or v.Name == "500Currency" or v.Name == "InnerKeyCard" or v.Name == "NormalKeyCard" then
                  local distance = (v.ProxyPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                  if distance <= 9 then
                    fireproximityprompt(v.ProxyPart.ProximityPrompt)
                  end
                end
              end
            end
            for _, v in ipairs(workspace.Rooms:GetDescendants()) do
              if v:IsA("Model") then
                if v.Name == "RidgeKeyCard" then
                  local distance = (v.ProxyPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                  if distance <= 9 then
                    fireproximityprompt(v.ProxyPart.ProximityPrompt)
                  end
                end
              end
            end
            for _, v in ipairs(workspace.Rooms:GetDescendants()) do
              if v:IsA("Model") then
                if v.Name == "BigFlashBeacon" or v.Name == "FlashBeacon" or v.Name == "Flashlight" or v.Name == "Medkit" or v.Name == "Lantern" or v.Name == "SmallLantern" or v.Name == "WindupLight" or v.Name == "CodeBreacher" or v.Name == "Blacklight" or v.Name == "DefaultBattery1" or v.Name == "DefaultBattery2" or v.Name == "DefaultBattery3" or v.Name == "AltBattery1" or v.Name == "AltBattery2" or v.Name == "AltBattery3" or v.Name == "RoomsBattery" or v.Name == "Gummylight" then
                  local distance = (v.ProxyPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                  if distance <= 7 then
                    fireproximityprompt(v.ProxyPart.ProximityPrompt)
                  end
                end
              end
            end
          end)
          coroutine.resume(autoloot)
          if getgenv().BreakLoopAutoLoot == true then
            coroutine.close(autoloot)
            wait()
            break
          end
        end
      end
      if state == false then      
        getgenv().BreakLoopAutoLoot = true
      end
    end 
})

local Toggle = Tabs.Main:AddToggle("Auto Loot V2", 
{
    Title = "Auto Loot V2  (Recommended)", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        getgenv().BreakLoopAutoLoot = false
        coroutine.wrap(autoLoot)()
      end
      if state == false then      
        getgenv().BreakLoopAutoLoot = true
      end
    end 
})

local Toggle = Tabs.Main:AddToggle("Auto Pande", 
{
    Title = "Auto Play Minigame Pandemonium", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        autoplaypande = workspace.ChildAdded:Connect(function(inst)
          if inst.Name == "Pandemonium" then
            local pandemonium = game.Players.LocalPlayer.PlayerGui.Main.PandemoniumMiniGame.Background.Frame
            while inst ~= nil do
              if pandemonium.Visible == true then
                task.wait(0.05)
                pandemonium.circle.Position = pandemonium.middle.Position
              end
            end
          end
        end)
      end
      if state == false then
        autoplaypande:Disconnect()
      end
    end 
})

local Toggle = Tabs.Main:AddToggle("Avoid Monster", 
{
    Title = "Avoid Monster", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        avoid = workspace.ChildAdded:Connect(function(v)
          if (v.Name == "Angler" or v.Name == "Pinkie" or v.Name == "Chainsmoker" or v.Name == "Blitz" or v.Name == "Froger" or v.Name == "Pandemonium" or v.Name == "RidgeAngler" or v.Name == "RidgePinkie" or v.Name == "RidgeChainsmoker" or v.Name == "RidgeBlitz" or v.Name == "RidgeFroger") then
            lockPositionTo(v)            
          end
        end)
      end
      if state == false then
        avoid:Disconnect()
        con:Disconnect()
        for _, v in ipairs(workspace:GetChildren()) do
          if v.Name == "Nevcit" and v.ClassName == "Part" then
            v:Destroy()              
          end
        end
      end
  end
})

---------------------- ESP TAB -------------------------------

local Toggle = Tabs.esp:AddToggle("Highlight Mode", 
{
    Title = "Highlight Mode", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state then
        getgenv().HighlightMode = true
      else
        getgenv().HighlightMode = false
      end
    end 
})

local Toggle = Tabs.esp:AddToggle("Distance Mode", 
{
    Title = "Distance Mode", 
    Description = "",
    Default = true,
    Callback = function(state)
      if state then
        getgenv().DistanceMode = true
      else
        getgenv().DistanceMode = false
      end
    end 
})

local Toggle = Tabs.esp:AddToggle("ESP Item", 
{
    Title = "ESP Item", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        getgenv().EspItem = false
        local tem = coroutine.create(function()
          destroyitem = workspace.Rooms.ChildAdded:Connect(function()
          for _, v in ipairs(workspace.Rooms:GetDescendants()) do
            if v.Name == "NevcitItem" then
              v:Destroy()
            end
          end
        end)
          item = workspace.Rooms.DescendantAdded:Connect(function(inst)
            if inst.ClassName == "Model" and inst.Name == "FlashBeacon" then
              wait()
              createEspItem(inst, getgenv().EspItem)
            elseif inst.ClassName == "Model" and inst.Name == "BigFlashBeacon" then
              wait()
              createEspItem(inst, getgenv().EspItem)
            elseif inst.ClassName == "Model" and inst.Name == "Flashlight" then
              wait()
              createEspItem(inst, getgenv().EspItem)
            elseif inst.ClassName == "Model" and inst.Name == "Medkit" then
              wait()
              createEspItem(inst, getgenv().EspItem)
            elseif inst.ClassName == "Model" and inst.Name == "Lantern" then
              wait()
              createEspItem(inst, getgenv().EspItem)
            elseif inst.ClassName == "Model" and inst.Name == "SmallLantern" then
              wait()
              createEspItem(inst, getgenv().EspItem)
            elseif inst.ClassName == "Model" and inst.Name == "DefaultBattery1" then
              wait()
              createEspItem(inst, getgenv().EspItem)
            elseif inst.ClassName == "Model" and inst.Name == "DefaultBattery2" then
              wait()
              createEspItem(inst, getgenv().EspItem)
            elseif inst.ClassName == "Model" and inst.Name == "DefaultBattery3" then
              wait()
              createEspItem(inst, getgenv().EspItem)
            elseif inst.ClassName == "Model" and inst.Name == "RoomsBattery" then
              wait()
              createEspItem(inst, getgenv().EspItem)
            elseif inst.ClassName == "Model" and inst.Name == "AltBattery1" then
              wait()
              createEspItem(inst, getgenv().EspItem)
            elseif inst.ClassName == "Model" and inst.Name == "AltBattery2" then
              wait()
              createEspItem(inst, getgenv().EspItem)
            elseif inst.ClassName == "Model" and inst.Name == "AltBattery3" then
              wait()
              createEspItem(inst, getgenv().EspItem)
            elseif inst.ClassName == "Model" and inst.Name == "CodeBreacher" then
              wait()
              createEspItem(inst, getgenv().EspItem)
            elseif inst.ClassName == "Model" and inst.Name == "WindupLight" then
              wait()
              createEspItem(inst, getgenv().EspItem)
            elseif inst.ClassName == "Model" and inst.Name == "Blacklight" then
              wait()
              createEspItem(inst, getgenv().EspItem)
            elseif inst.ClassName == "Model" and inst.Name == "ToyRemote" then
              wait()
              createEspItem(inst, getgenv().EspItem)
            elseif inst.ClassName == "Model" and inst.Name == "Gummylight" then
              wait()
              createEspItem(inst, getgenv().EspItem)
            end
          end)
        end)
        coroutine.resume(tem)
        for _, v in pairs(workspace.Rooms:GetDescendants()) do
          if v.ClassName == "Model" and v.Name == "FlashBeacon" then
           wait()
            createEspItem(v, getgenv().EspItem)
          elseif v.ClassName == "Model" and v.Name == "BigFlashBeacon" then
            wait()
            createEspItem(v, getgenv().EspItem)
          elseif v.ClassName == "Model" and v.Name == "Flashlight" then
            wait()
            createEspItem(v, getgenv().EspItem)
          elseif v.ClassName == "Model" and v.Name == "Medkit" then
            wait()
            createEspItem(v, getgenv().EspItem)
          elseif v.ClassName == "Model" and v.Name == "Latern" then
            wait()
            createEspItem(v, getgenv().EspItem)
          elseif v.ClassName == "Model" and v.Name == "DefaultBattery1" then
            wait()
            createEspItem(v, getgenv().EspItem)
          elseif v.ClassName == "Model" and v.Name == "DefaultBattery2" then
           wait()
            createEspItem(v, getgenv().EspItem)
          elseif v.ClassName == "Model" and v.Name == "DefaultBattery3" then
            wait()
            createEspItem(v, getgenv().EspItem)
          elseif v.ClassName == "Model" and v.Name == "RoomsBattery" then
            wait()
            createEspItem(v, getgenv().EspItem)
          elseif v.ClassName == "Model" and v.Name == "AltBattery1" then
            wait()
            createEspItem(v, getgenv().EspItem)
          elseif v.ClassName == "Model" and v.Name == "AltBattery2" then
            wait()
            createEspItem(v, getgenv().EspItem)
          elseif v.ClassName == "Model" and v.Name == "AltBattery3" then
            wait()
            createEspItem(v, getgenv().EspItem)
          elseif v.ClassName == "Model" and v.Name == "CodeBreacher" then
            wait()
            createEspItem(v, getgenv().EspItem)
          elseif v.ClassName == "Model" and v.Name == "WindupLight" then
            wait()
            createEspItem(v, getgenv().EspItem)
          elseif v.ClassName == "Model" and v.Name == "Blacklight" then
            wait()
            createEspItem(v, getgenv().EspItem)
          elseif v.ClassName == "Model" and v.Name == "ToyRemote" then
            wait()
            createEspItem(v, getgenv().EspItem)
          elseif v.ClassName == "Model" and v.Name == "Gummylight" then
            wait()
            createEspItem(v, getgenv().EspItem)
          end
        end
      end
      if state == false then
        destroyitem:Disconnect()
        wait()
        item:Disconnect()
        getgenv().EspItem = true
        for _, v in ipairs(workspace.Rooms:GetDescendants()) do
          if v.Name == "NevcitItem" then
            v:Destroy()
          end
        end
      end
  end
})

local Toggle = Tabs.esp:AddToggle("ESP Currency/Money", 
{
    Title = "ESP Currency/Money", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        getgenv().EspMoney = false
        destroymoney = workspace.Rooms.ChildAdded:Connect(function()
          for _, v in ipairs(workspace.Rooms:GetDescendants()) do
            if v.Name == "NevcitCurrency" then
              v:Destroy()
            end
          end
        end)
        local cur = coroutine.create(function()
          money = workspace.Rooms.DescendantAdded:Connect(function(inst)
            -- Cek apakah inst merupakan objek yang ingin diproses
            if inst.ClassName == "Model" and (inst.Name == "5Currency" or inst.Name == "10Currency" or inst.Name == "15Currency" or inst.Name == "25Currency" or inst.Name == "50Currency" or inst.Name == "100Currency" or inst.Name == "200Currency" or inst.Name == "500Currency") then
              -- Cek apakah objek sudah memiliki ESP
              if not inst:FindFirstChild("NevcitCurrency") then
                -- Gunakan `task.spawn()` untuk memproses objek dengan sedikit delay
                task.spawn(function()
                  wait(math.random(0.05, 0.1))  -- Delay acak antara 0.05 detik hingga 0.1 detik
                  createEspMoney(inst)
                end)
              end
            end
          end)
        end)
        coroutine.resume(cur)
        -- Cek semua objek yang sudah ada untuk dibuatkan ESP jika perlu
        for _, v in pairs(workspace.Rooms:GetDescendants()) do
          if v.ClassName == "Model" and (v.Name == "5Currency" or v.Name == "10Currency" or v.Name == "15Currency" or v.Name == "25Currency" or v.Name == "50Currency" or v.Name == "100Currency" or v.Name == "200Currency" or v.Name == "500Currency") then
            -- Pastikan hanya membuat ESP jika objek belum memiliki ESP
            if not v:FindFirstChild("NevcitCurrency") then
              task.spawn(function()
                wait(math.random(0.05, 0.1))  -- Delay acak agar tidak diproses bersamaan
                createEspMoney(v)
              end)
            end
          end
        end
      end
      if state == false then
        destroymoney:Disconnect()
        wait()
        getgenv().EspMoney = true
        money:Disconnect()
        for _, v in ipairs(workspace.Rooms:GetDescendants()) do
          if v.Name == "NevcitCurrency" then
            v:Destroy()
          end
        end
      end
  end
})

local Toggle = Tabs.esp:AddToggle("ESP Monster Locker", 
{
    Title = "ESP Monster Locker", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        getgenv().EspLocker = false
        locker = workspace.DescendantAdded:Connect(function(inst)
          if inst.Name == "MonsterLocker" then
            createEspLocker(inst)
            task.wait(0.1)
          end
        end)
      end
      if state == false then
        getgenv().EspLocker = true
        locker:Disconnect()
        for _, v in ipairs(workspace.Rooms:GetDescendants()) do
          if v.Name == "NevcitLocker" then
            v:Destroy()
          end
        end
      end
  end
})

local Toggle = Tabs.esp:AddToggle("ESP Monster", 
{
    Title = "ESP Monster", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        getgenv().EspMonster = false
        monster = workspace.ChildAdded:Connect(function(inst)
          if inst.Name == "Angler" or inst.Name == "Chainsmoker" or inst.Name == "Blitz" or inst.Name == "Pinkie" or inst.Name == "Froger" or inst.Name == "Pandemonium" or inst.Name == "RidgeAngler" or inst.Name == "RidgeChainsmoker" or inst.Name == "RidgeBlitz" or inst.Name == "RidgeFroger" or inst.Name == "RidgeChainSmoker" or inst.Name == "RidgePinkie" then
            createEspMonster(inst)            
          end
        end)
        monster2 = workspace.Monsters.ChildAdded:Connect(function(inst)
          if inst.Name == "WallDweller" then
            createEspMonster(inst)
          end
        end)
      end
      if state == false then
        monster:Disconnect()
        wait()
        monster2:Disconnect()
        getgenv().EspMonster = true
        for _, v in ipairs(workspace.Rooms:GetDescendants()) do
          if v.Name == "NevcitMonster" then
            v:Destroy()
          end
        end
      end
    end
})

local Toggle = Tabs.esp:AddToggle("ESP Fake Door", 
{
    Title = "ESP Fake Door", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        destroyfake = workspace.Rooms.ChildAdded:Connect(function()
          for _, v in pairs(workspace.Rooms:GetDescendants()) do
            if v.Name == "NevcitTrickster" or v.Name == "NevcitTrickster1" then
              v:Destroy()
            end
          end
        end)
        fake = workspace.Rooms.DescendantAdded:Connect(function(inst)
          task.wait(0.3)
          if inst.Name == "TricksterDoor" then
            applytrickster1(inst)
          end
        end)
      end
      if state == false then
        destroyfake:Disconnect()
        wait()
        fake:Disconnect()
        for _, v in ipairs(workspace.Rooms:GetDescendants()) do
          if v.Name == "NevcitTrickster" or v.Name == "NevcitTrickster1" then
            v:Destroy()
          end
        end
      end
  end
})

local Toggle = Tabs.esp:AddToggle("ESP Door", 
{
    Title = "ESP Door", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        getgenv().EspDoor = false
        destroy = workspace.Rooms.ChildAdded:Connect(function()
          for _, v in ipairs(workspace.Rooms:GetDescendants()) do
            if v.Name == "NevcitNormalDoor" then
              v:Destroy()
            end
          end
        end)
        real = workspace.Rooms.DescendantAdded:Connect(function(inst)
          task.wait(0.2)
          if inst.Parent:IsA("Model") and inst.Parent.Name == "NormalDoor" and inst.Name == "Door" and inst:IsA("Model") and inst:FindFirstChild("Door1") then
            if inst.Parent:GetAttribute("ProgressDoor") ~= nil then
              createEspDoor(inst.Door1, getgenv().EspDoor)
            end
          end
          if  inst:IsA("Model") and inst.Name == "BigDoor" then
            if inst:GetAttribute("ProgressDoor") ~= nil then
              createEspDoor(inst.Door.Door1, getgenv().EspDoor)
            end
          end
        end)
        for i, inst in pairs(workpace.Rooms:GetDescendants()) do
          if inst.Parent:IsA("Model") and inst.Parent.Name == "NormalDoor" and inst.Name == "Door" and inst:IsA("Model") and inst:FindFirstChild("Door1") then
            if inst.Parent:GetAttribute("ProgressDoor") ~= nil then
              createEspDoor(inst.Door1, getgenv().EspDoor)
            end
          end
          if inst:IsA("Model") and inst.Name == "BigDoor" then
            if inst:GetAttribute("ProgressDoor") ~= nil then
              createEspDoor(inst.Door.Door1, getgenv().EspDoor)
            end
          end
        end
      end
      if state == false then
        destroy:Disconnect()
        wait()
        real:Disconnect()
        wait()
        getgenv().EspDoor = true
        for _, v in ipairs(workspace.Rooms:GetDescendants()) do
          if v.Name == "NevcitNormalDoor" then
            v:Destroy()
          end
        end
      end
  end
})

local Toggle = Tabs.esp:AddToggle("ESP Keycard", 
{
    Title = "ESP Keycard", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        getgenv().EspKeyCard = false
        local keycor = coroutine.create(function()
          keycard = workspace.Rooms.DescendantAdded:Connect(function(inst)
            if inst:IsA("Model") and (inst.Name == "NormalKeyCard" or inst.Name == "InnerKeyCard" or inst.Name == "RidgeKeyCard") then
              createEspKeyCard(inst)
              task.wait(0.1)              
            end
          end)
        end)
        coroutine.resume(keycor)
        for _, v in ipairs(workspace.Rooms:GetDescendants()) do
          if v:IsA("Model") and (v.Name == "NormalKeyCard" or v.Name == "InnerKeyCard" or v.Name == "RidgeKeyCard") then
            createEspKeyCard(v)
            task.wait(0.1)            
          end          
        end
      end
      if state == false then
        getgenv().EspKeyCard = true
        keycard:Disconnect()
        for _, v in ipairs(workspace.Rooms:GetDescendants()) do
          if v.Name == "NevcitKeyCard" then
            v:Destroy()
          end
        end
      end
    end
})

local Toggle = Tabs.esp:AddToggle("ESP Broken Cables", 
{
    Title = "ESP Broken Cables", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        getgenv().BreakLoopCable = false
        while wait(1) do
          for i, v in pairs(workspace.Rooms:GetDescendants()) do
            if v:IsA("Model") and v.Name == "BrokenCables" then
              local fixed = v:FindFirstChild("Fixed")
              if fixed.Value == 0 then
                local proxypart = v:FindFirstChild("ProxyPart")
                if proxypart ~= nil then
                  local espbroken = v:FindFirstChild("NevcitBrokenCable")
                  if espbroken == nil then
                    applycable(v)
                  end
                end
              end
              if fixed.Value == 100 then
                local proxypart = v:FindFirstChild("ProxyPart")
                if proxypart ~= nil then
                  local espbroken = v:FindFirstChild("NevcitBrokenCable")
                  if espbroken ~= nil then
                    v:FindFirstChild("NevcitBrokenCable"):Destroy()
                  end
                end
              end
            end
          end
          if getgenv().BreakLoopCable == true then
            break
          end
        end
      end
      if state == false then
        getgenv().BreakLoopCable = true
        for _, v in ipairs(workspace.Rooms:GetDescendants()) do
          if v.Name == "NevcitBrokenCable" then
            v:Destroy()
          end
        end
      end
	end
})

local Toggle = Tabs.esp:AddToggle("ESP Broken Generator", 
{
    Title = "ESP Broken Generator", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        getgenv().BreakLoopGenerator = false
        while wait(1) do
          for i, v in pairs(workspace.Rooms:GetDescendants()) do
            if v:IsA("Model") and v.Name == "EncounterGenerator" then
              local fixed = v:FindFirstChild("Fixed")
              if fixed.Value == 0 then
                local proxypart = v:FindFirstChild("Model")
                if proxypart ~= nil then
                  local espbroken = v:FindFirstChild("Model"):FindFirstChild("NevcitGenerator")
                  if espbroken == nil then
                    applygenerator(v)
                  end
                end
              end
              if fixed.Value == 100 then
                local proxypart = v:FindFirstChild("Model")
                if proxypart ~= nil then
                  local espbroken = v:FindFirstChild("Model"):FindFirstChild("NevcitGenerator")
                  if espbroken ~= nil then
                    espbroken:Destroy()
                  end
                end
              end
            end
          end
          if getgenv().BreakLoopGenerator == true then
            break
          end
        end
      end
      if state == false then
        getgenv().BreakLoopGenerator = true
        for _, v in ipairs(workspace.Rooms:GetDescendants()) do
          if v.Name == "NevcitGenerator" then
            v:Destroy()
          end
        end
      end
	end
})

-----------------\\ SCRIPT //-----------------------

local Toggle = Tabs.Script:AddToggle("Anti Eyesfestation", 
{
    Title = "Anti Eyesfestation", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state then
        eyesfestation = workspace.Rooms.DescendantAdded:Connect(function(inst)
          if inst.Name == "Eyefestation" and inst.Parent.Name == "EyefestationSpawn" and inst.Parent.ClassName ~= "Folder" then
            inst:Destroy()
            task.wait(0.2)
          end
        end)
        for i, v in pairs(workspace.Rooms:GetDescendants()) do
          if v.Name == "Eyefestation" and v.Parent.Name == "EyefestationSpawn" and v.Parent.ClassName ~= "Folder" then
            v:Destroy()
            task.wait(0.2)
          end
        end
      end
      if not state then
        eyesfestation:Disconnect()
      end
    end 
})

local Toggle = Tabs.Script:AddToggle("Anti Squiddles", 
{
    Title = "Anti Squiddles", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state then
        squiddle = workspace.Rooms.DescendantAdded:Connect(function(inst)
          if inst:IsA("Sound") and inst.Name == "SquiddleBuildup" and inst.Parent.Name == "Face" and inst.Parent.Parent:IsA("Model") then
            inst.Parent.Parent:Destroy()
            task.wait(0.1)
          end
        end)
        for i, inst in pairs(workspace.Rooms:GetDescendants()) do
          if inst:IsA("Sound") and inst.Name == "SquiddleBuildup" and inst.Parent.Name == "Face" and inst.Parent.Parent:IsA("Model") then
            inst.Parent.Parent:Destroy()
            task.wait(0.1)
          end
        end
      end
      if not state then
        squiddles:Disconnect()
      end
    end 
})

local Toggle = Tabs.Script:AddToggle("Anti Turret", 
{
    Title = "Anti Turret", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state then
        turret = workspace.Rooms.DescendantAdded:Connect(function(inst)
          if (inst.Name == "TurretSpawn" or inst.Name == "TurretSpawn1" or inst.Name == "TurretSpawn2" or inst.Name == "TurretSpawn3" or inst.Name == "TurretSpawn4") then
            inst:Destroy()
            task.wait(0.1)
          end
        end)
        for i, v in pairs(workspace.Rooms:GetDescendants()) do
          if (v.Name == "TurretSpawn" or v.Name == "TurretSpawn1" or v.Name == "TurretSpawn2" or v.Name == "TurretSpawn3" or v.Name == "TurretSpawn4") then
            v:Destroy()
            task.wait(0.1)
          end
        end
      end
      if not state then
        turret:Disconnect()
      end
    end 
})

local Toggle = Tabs.Script:AddToggle("Anti Electric Water", 
{
    Title = "Anti Electrical Water", 
    Description = "Include Break Pipe",
    Default = false,
    Callback = function(state)
      if state == true then
        electric = workspace.Rooms.DescendantAdded:Connect(function(inst)
          if inst.Name == "DamageParts" and inst:IsA("Folder") then
            inst:Destroy()
            task.wait(0.1)
          end
          if inst.Name == "BlockPart" and inst:IsA("Part") then
            inst:Destroy()
            task.wait(0.1)
          end
        end)
        for _, v in pairs(workspace.Rooms:GetDescendants()) do
          if v.Name == "DamageParts" and v:IsA("Folder") then
            v:Destroy()
            task.wait(0.2)
          end
          if v.Name == "BlockPart" and v:IsA("Part") then
            v:Destroy()
            task.wait(0.2)
          end          
        end
      end
      if state == false then
        electric:Disconnect()
      end
    end 
})

----------------------- CONFIG TAB ----------------------

local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nevcit/UI-Library/refs/heads/main/Loadstring/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

InterfaceManager:SetFolder("GOAHUB")
SaveManager:SetFolder("GOAHUB/Pressure/Main")

InterfaceManager:BuildInterfaceSection(Tabs.Save)
SaveManager:BuildConfigSection(Tabs.Save)

Fluent:Notify({
    Title = "Read This",
    Content = "Subscribe my channel (Nevcit) for support me",
    Duration = 10
})

----------------- Credit -----------------

Tabs.Credit:AddButton({
    Title = "Youtube Channel",
    Description = "",
    Callback = function()
        setclipboard("https://www.youtube.com/@Nevcit")
        Fluent:Notify({
            Title = "Subcribe For Support Me",
            Content = "",
            SubContent = "", -- Optional
            Duration = 5 -- Set to nil to make the notification not disappear
        })
    end
})


------------------ GUI CLOSE & OPEN --------------------

for _, gui in ipairs(game:GetService("CoreGui"):GetChildren()) do
  if gui.Name == "Nevcit" then
    gui:Destroy()
  end
end

local minimize = game:GetService("CoreGui").FLUENT:GetChildren()[2]
local size = {35, 35}
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
ScreenGui.Name = "Nevcit"
ScreenGui.Enabled = true
local Button = Instance.new("ImageButton", ScreenGui)
Button.Image = "rbxassetid://114587443832683"
Button.Size = UDim2.new(0, size[1], 0, size[2])
Button.Position = UDim2.new(0.15, 0, 0.15, 0)
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.Active = true
Button.Draggable = true
local uistroke = Instance.new("UIStroke", Button)
uistroke.Thickness = 4
uistroke.Color = Color3.fromRGB(0, 0, 0)
Button.MouseButton1Click:Connect(function()
  if minimize.Visible == true then
    minimize.Visible = false
  elseif minimize.Visible == false then
    minimize.Visible = true
  end
end)
