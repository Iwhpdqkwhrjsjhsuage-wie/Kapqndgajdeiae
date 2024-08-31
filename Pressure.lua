for _, gui in ipairs(game:GetService("CoreGui"):GetChildren()) do
    if gui.Name == "ScreenGui" then
      gui:Destroy()
    end
end

----------------- LOCAL -------------------------------

--------------------- MAIN LOCAL -----------------------------
local autoplaypande
local tp
local instant
local autoloot
local autolootroom
local avoid
local desturret
local electricity
getgenv().BreakLoopAutoLoot = false
getgenv().BreakLoopAvoid = false
getgenv().BreakLoopElectric = false
getgenv().BreakLoopTurret = false
--------------------- ESP LOCAL -------------------------------
local destroyfake
local destroymoney
local destroyitem
local destroytrickster
local destroylocker
local generator
local cable
local destroy
local removegen
local keycard
local money
local monster
local monster2
local real
local fake
local locker
local item
local notify
local notify2
getgenv().BreakLoopKey = false
getgenv().BreakLoopGenerator = false
getgenv().BreakLoopCable = false
------------------------ TABLE LOCAL ---------------------------------
local gen = {}
local cable = {}
local item = {}
local key = {}
local monster = {}
local trickster ={}
local normaldoor = {}
local locker = {}
local currency = {}
local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nevcit/Pressure/main/Fluent"))()

-------------------- FUNCTION ---------------------------
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

local function applyitem(inst)
	local text = Instance.new("BillboardGui")
	text.Name = "NevcitItem"
	text.Adornee = inst
	text.Size = UDim2.new(0, 50, 0, 20)
	text.StudsOffset = Vector3.new(0, 0, 0)
	text.AlwaysOnTop = true
	text.Parent = inst
	text.MaxDistance = 250
	local label = Instance.new("TextLabel")
	label.Size = UDim2.new(1, 0, 1, 0)
label.Name = "NevcitItem"
	label.Text = inst.Name
	label.TextColor3 = Color3.new(1, 1, 1)
	label.BackgroundTransparency = 1
	label.TextStrokeTransparency = 0
	label.TextScaled = true
	label.Parent = text
  if label.Text == "FlashBeacon" then
    label.Text = "Flash Beacon"
  elseif label.Text == "SmallLantern" then
    label.Text = "Lantern"
  elseif label.Text == "BigFlashBeacon" then
    label.Text = "Flash Beacon"
  elseif label.Text == "CodeBreacher" then
    label.Text = "Code Breacher"
  elseif label.Text == "WindupLight" then
    label.Text = "Hand Cranked FlashLight"
  elseif label.Text == "DefaultBattery1" then
    label.Text = "Battery"
  elseif label.Text == "DefaultBattery2" then
    label.Text = "Battery"
  elseif label.Text == "DefaultBattery3" then
    label.Text = "Battery"
  elseif label.Text == "AltBattery1" then
    label.Text = "Battery"
  elseif label.Text == "AltBattery2" then
    label.Text = "Battery"
  elseif label.Text == "AltBattery3" then
    label.Text = "Battery"
  elseif label.Text == "RoomsBattery" then
    label.Text = "Battery"
  	elseif label.Text == "ToyRemote" then
    label.Text = "Toy Remote"
  end
  table.insert(item, text)
end

local function applyCurrency(inst)
	local text = Instance.new("BillboardGui")
	text.Name = "NevcitCurrency"
	text.Adornee = inst
	text.Size = UDim2.new(0, 40, 0, 18)
	text.StudsOffset = Vector3.new(0, 0, 0)
	text.AlwaysOnTop = true
	text.Parent = inst
	text.MaxDistance = 250
	local label = Instance.new("TextLabel")
	label.Size = UDim2.new(1, 0, 1, 0)
	label.Position = UDim2.new(0, 0, 0, 0)
 label.Name = "NevcitCurrency"
	label.Text = inst.Name
	label.TextColor3 = Color3.fromRGB(249, 233, 153)
	label.BackgroundTransparency = 1
	label.TextStrokeTransparency = 0
	label.TextScaled = false
	label.Parent = text
	if label.Text == "5Currency" then
   label.Text = "5$"
 elseif label.Text == "10Currency" then
   label.Text = "10$"
 elseif label.Text == "15Currency" then
   label.Text = "15$"
 elseif label.Text == "25Currency" then
   label.Text = "25$"
 elseif label.Text == "50Currency" then
   label.Text = "50$"
 elseif label.Text == "100Currency" then
   label.Text = "100$"
 elseif label.Text == "200Currency" then
   label.Text = "200$"
 	elseif label.Text == "500Currency" then
   label.Text = "500$"
 end
  table.insert(currency, text)
end

local function applykey(inst)
	local text = Instance.new("BillboardGui")
	text.Name = "NevcitKey"
	text.Adornee = inst
	text.Size = UDim2.new(0, 80, 0, 20)
	text.StudsOffset = Vector3.new(0, 0, 0)
	text.AlwaysOnTop = true
	text.Parent = inst
 text.MaxDistance = 200
	local label = Instance.new("TextLabel")
	label.Size = UDim2.new(1, 0, 1, 0)
	label.Position = UDim2.new(0, 0, 0, 0)
 label.Name = "NevcitKey"
	label.Text = inst.Name
	label.TextColor3 = Color3.new(1, 1, 1)
	label.BackgroundTransparency = 1
	label.TextStrokeTransparency = 0
	label.TextScaled = false
	label.Parent = text
	if label.Text == "NormalKeyCard" then
		label.TextColor3 = Color3.fromRGB(13, 105, 172)
		label.Text = "Normal KeyCard"
	elseif label.Text == "InnerKeyCard" then
		label.TextColor3 = Color3.fromRGB(107, 50, 124)
		label.Text = "Inner KeyCard"
	elseif label.Text == "RidgeKeyCard" then
		label.TextColor3 = Color3.fromRGB(160, 82, 45)
		label.Text = "Ridge KeyCard"
  end
 table.insert(key, text)
end

local function applykey2(inst)
  local text = Instance.new("BillboardGui")
  text.Name = "NevcitKey"
  text.Adornee = inst
  text.Size = UDim2.new(1, 0, 1, 0)
  text.StudsOffset = Vector3.new(0, 0.4, 0)
  text.AlwaysOnTop = true
  text.Parent = inst
  text.MaxDistance = 200
  local f = Instance.new("BillboardGui")
  f.Name = "NevcitKey1"
  f.Adornee = inst
  f.Size = UDim2.new(1, 0, 1, 0)
  f.StudsOffset = Vector3.new(0, 0, 0)
  f.AlwaysOnTop = true
  f.Parent = inst
  local label = Instance.new("TextLabel", f)
  label.Size = UDim2.new(1, 0, 1, 0)
  label.Position = UDim2.new(0, 0, 0.8, 0)
  label.Name = "NevcitKey"
  label.Text = inst.Name
  label.TextColor3 = Color3.fromRGB(255, 255, 255)
  label.BackgroundTransparency = 1
  label.TextStrokeTransparency = 0
  label.TextScaled = false
  label.ZIndex = 10
  local label1 = Instance.new("TextLabel", text)
  label1.Size = UDim2.new(1, 0, 1, 0)
  label1.Position = UDim2.new(0, 0, -0.8, 0)
  label1.Name = "NevcitKey"
  label1.Text = "Normal KeyCard"
  label1.TextColor3 = Color3.fromRGB(13, 105, 175)
  label1.BackgroundTransparency = 1
  label1.TextStrokeTransparency = 1
  label1.TextScaled = false
  label1.ZIndex = 10
  if label.Text == "InnerKeyCard" then
    local Frame = Instance.new("Frame", f)
    Frame.Size = UDim2.new(1.3, 0, 1.2, 0)
    Frame.BackgroundTransparency = 0.2
    Frame.BackgroundColor3 = Color3.fromRGB(168, 30, 164)
    Frame.ZIndex = 4
    label1.TextColor3 = Color3.fromRGB(107, 50, 134)
    label1.Text = "Inner KeyCard"
  elseif label.Text == "RidgeKeyCard" then
    local Frame = Instance.new("Frame", f)
    Frame.Size = UDim2.new(1.3, 0, 1.2, 0)
    Frame.BackgroundTransparency = 0.2
    Frame.BackgroundColor3 = Color3.fromRGB(139, 69, 19)
    Frame.ZIndex = 4
    label1.TextColor3 = Color3.fromRGB(160, 82, 45)
    label1.Text = "Ridge KeyCard"
  elseif label.Text == "NormalKeyCard" then
    local Frame = Instance.new("Frame", f)
    Frame.Size = UDim2.new(1.3, 0, 1.2, 0)
    Frame.BackgroundColor3 = Color3.fromRGB(18, 115, 184)
    Frame.BackgroundTransparency = 0.2
    Frame.ZIndex = 4
  end
  while wait() do
    task.wait()
    local distance = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - inst.ProxyPart.Position).Magnitude / 3)
    label.Text = distance .. " M"
    if getgenv().BreakLoopKey == true then
      break
    end
  end
end

local function applymos(inst)
	local text = Instance.new("BillboardGui")
	text.Name = "NevcitMons"
	text.Adornee = inst
	text.Size = UDim2.new(0, 50, 0, 50)
	text.StudsOffset = Vector3.new(0, 2, 0)
	text.AlwaysOnTop = true
	text.Parent = inst
 text.MaxDistance = 300
	local label = Instance.new("TextLabel", text)
	label.Size = UDim2.new(1, 0, 1, 0)
	label.Text = inst.Name
	label.TextColor3 = Color3.fromRGB(255, 0, 0)
	label.BackgroundTransparency = 1
	label.TextStrokeTransparency = 0
	label.TextScaled = true
  if label.Text == "RidgeAngler" then
    label.Text = "Angler"
  elseif label.Text == "RidgeBlitz" then
    label.Text = "Blitz"
  elseif label.Text == "RidgeChainsmoker" then
    label.Text = "Chainsmoker"
  elseif label.Text == "RidgePinkie" then
    label.Text = "Pinkie"
  elseif label.Text == "RidgeChainSmoker" then
    label.Text = "Chainsmoker"
  elseif label.Text == "RidgeFroger" then
    label.Text = "Froger"
  elseif label.Text == "TheMulti-Monster" then
    label.Text = "A-60"
  end
	table.insert(monster, text)
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
	label.TextColor3 = Color3.fromRGB(255, 0, 0)
	label.BackgroundTransparency = 1
	label.TextStrokeTransparency = 0
	label.TextScaled = false
	label.Parent = text
  local f = Instance.new("BillboardGui")
  f.Name = "NevcitTrickster1"
  f.Adornee = inst
  f.Size = UDim2.new(1, 0, 1, 0)
  f.StudsOffset = Vector3.new(0, -0.5, 0)
  f.AlwaysOnTop = true
  f.Parent = inst
  local Frame = Instance.new("Frame", f)
  Frame.Size = UDim2.new(1, 0, 1, 0)
  Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
  Frame.BackgroundTransparency = 0.2
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
  inst = inst:IsA("Model") and inst or inst:FindFirstAncestorOfClass("Model") or inst
  
  local Esp = Instance.new("Folder", inst)
  Esp.Name = "NevcitNormalDoor"
  local bg = Instance.new("BillboardGui", Esp)
  bg.Adornee = inst
  bg.Size = UDim2.fromOffset(150, 25)
  bg.Enabled = true
  bg.AlwaysOnTop = true
  bg.ResetOnSpawn = false
  local label = Instance.new("TextLabel", bg)
  label.Size = UDim2.fromScale(1,1)
  label.Text = "Door"
  label.TextColor3 = Color3.fromRGB(255, 255, 255) 
  label.BackgroundTransparency = 1
  label.TextStrokeTransparency = 0
  label.TextScaled = true
  if inst:FindFirstChild("NevcitNormalDoor") then
    local ESPFolder = inst.NevcitNormalDoor
    local Highlight = Instance.new("Highlight")
    Highlight.Adornee = inst
    Highlight.Parent = ESPFolder
    Highlight.Archivable = true  
    Highlight.Name = "NevcitNormalDoor"
    Highlight.Enabled = true
    Highlight.OutlineColor = Color3.fromRGB(0, 255, 0)
    Highlight.FillColor = Color3.fromRGB(0, 255, 0)
    Highlight.FillTransparency = 0.7
    Highlight.OutlineTransparency = 0  
  end
end

local Window = Fluent:CreateWindow({
    Title = "GOA Hub",
    SubTitle = "by Nevcit",
    TabWidth = 80,
    Size = UDim2.fromOffset(400, 350),
    Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

local Options = Fluent.Options

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),
    esp = Window:AddTab({ Title = "ESP", Icon = "eye" }),
    Config = Window:AddTab({ Title = "Config", Icon = "settings" }),
    Credit = Window:AddTab({ Title = "Credit", Icon = "bookmark" })
}

------------------------ MAIN TAB --------------------------

local Input = Tabs.Main:AddInput("Input", {
    Title = "WalkSpeed",
    Description = "",
    Default = "16",
    Placeholder = "Type here",
    Numeric = true, -- Only allows numbers
    Finished = false, -- Only calls callback when you press enter
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end
})

Tabs.Main:AddButton({
    Title = "Remove Electric Water",
    Description = "",
    Callback = function()
      for _, v in ipairs(workspace.Rooms:GetDescendants()) do
        if v.Name == "DamageParts" and v:IsA("Folder") then
          v:Destroy()
        end
        if v.Name == "BlockPart" and v:IsA("Part") then
          v:Destroy()
        end
      end
    end
})

Tabs.Main:AddButton({
    Title = "Remove Turret",
    Description = "",
    Callback = function()
      for _, v in ipairs (workspace.Rooms:GetDescendants()) do
        if v.Name == "TurretSpawn" or v.Name == "TurretSpawn1" or v.Name == "TurretSpawn2" or v.Name == "TurretSpawn3" or v.Name == "TurretSpawn4" then
          v:Destroy()
        end
      end
    end
})

local Toggle = Tabs.Main:AddToggle("Auto Remove Electric Water", 
{
    Title = "Auto Remove Electric Water", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        getgenv().BreakLoopElectric = false
        while wait(1) do
          for _, v in pairs(workspace.Rooms:GetDescendants()) do
            if v.Name == "DamageParts" and v:IsA("Folder") then
              v:Destroy()
            end
            if v.Name == "BlockPart" and v:IsA("Part") then
              v:Destroy()
            end
          end
          if getgenv().BreakLoopElectric == true then
            break
          end
        end
      end
      if state == false then
        getgenv().BreakLoopElectric = true
      end
    end 
})

local Toggle = Tabs.Main:AddToggle("Auto Remove Turret", 
{
    Title = "Auto Remove Turret", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        getgenv().BreakLoopTurret = false
        while wait(1) do
          for _, v in pairs (workspace.Rooms:GetDescendants()) do
            if v.Name == "TurretSpawn" or v.Name == "TurretSpawn1" or v.Name == "TurretSpawn2" or v.Name == "TurretSpawn3" or v.Name == "TurretSpawn4" then
              v:Destroy()
            end
          end
          if getgenv().BreakLoopTurret == true then
            break
          end
        end
      end
      if state == false then
        getgenv().BreakLoopTurret = true
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
                if v.Name == "5Currency" or v.Name == "10Currency" or v.Name == "15Currency" or v.Name == "25Currency" or v.Name == "50Currency" or v.Name == "100Currency" or v.Name == "200Currency" or v.Name == "500Currency" or v.Name == "InnerKeyCard" or v.Name == "RidgeKeyCard" or v.Name == "NormalKeyCard" then
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
    Title = "Auto Loot V2 ", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        autoloot = game:GetService("ProximityPromptService").PromptShown:Connect(function(prompt)
          for _, v in ipairs(workspace.Rooms:GetDescendants()) do
            if v:IsA("MeshPart") then
              if v.Name == "HighLight" or v.Name == "Door" then
                local distanced = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                if distanced <= 9 then
                  fireproximityprompt(v.ProximityPrompt)
                end
              end
            end
          end
          for _, v in ipairs(workspace.Rooms:GetDescendants()) do
            if v:IsA("Model") then
              if v.Name == "5Currency" or v.Name == "10Currency" or v.Name == "15Currency" or v.Name == "25Currency" or v.Name == "50Currency" or v.Name == "100Currency" or v.Name == "200Currency" or v.Name == "500Currency" or v.Name == "InnerKeyCard" or v.Name == "RidgeKeyCard" or v.Name == "NormalKeyCard" then
                local distance = (v.ProxyPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                local prox = v.ProxyPart.ProximityPrompt
                if distance <= 9 then
                  fireproximityprompt(v.ProxyPart.ProximityPrompt)
                  task.wait()
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
      end
      if state == false then
        autoloot:Disconnect()
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
          if inst.Name == "Pandemonium" and ins:IsA("Part") then
            local pandemonium = game.Players.LocalPlayer.PlayerGui.Main.PandemoniumMiniGame.Background.Frame
            while wait() do
              task.wait(0.2)
              pandemonium.circle.Position = pandemonium.middle.Position
              if inst == nil or inst.Destroying then
                break
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
          fireproximityprompt(prompt)
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
        notify = game:GetService("Workspace").ChildAdded:Connect(function(inst)
          if inst:IsA("Part") and inst.Name == "Angler" or inst.Name == "Pinkie" or inst.Name == "Chainsmoker" or inst.Name == "Blitz" or inst.Name == "Froger" or inst.Name == "Pandemonium" then
            Fluent:Notify({
              Title = "Monster Has Spawned",
              Content = "Monster : " .. inst.Name,
              SubContent = "", -- Optional
              Duration = 5 -- Set to nil to make the notification not disappear
            })
          elseif inst:IsA("Part") and inst.Name == "RidgeAngler" then
            Fluent:Notify({
              Title = "Monster Has Spawned",
              Content = "Monster : Angler" ,
              SubContent = "", -- Optional
              Duration = 5 -- Set to nil to make the notification not disappear
            })
          elseif inst:IsA("Part") and inst.Name == "RidgeChainsmoker" then
            Fluent:Notify({
              Title = "Monster Has Spawned",
              Content = "Monster : Chainsomker" ,
              SubContent = "", -- Optional
              Duration = 5 -- Set to nil to make the notification not disappear
            })
          elseif inst:IsA("Part") and inst.Name == "RidgeChainSmoker" then
            Fluent:Notify({
              Title = "Monster Has Spawned",
              Content = "Monster : Chainsmoker" ,
              SubContent = "", -- Optional
              Duration = 5 -- Set to nil to make the notification not disappear
            })
          elseif inst:IsA("Part") and inst.Name == "RidgeBlitz" then
            Fluent:Notify({
              Title = "Monster Has Spawned",
              Content = "Monster : Blitz" ,
              SubContent = "", -- Optional
              Duration = 5 -- Set to nil to make the notification not disappear
            })
          elseif inst:IsA("Part") and inst.Name == "RidgeFroger" then
            Fluent:Notify({
              Title = "Monster Has Spawned",
              Content = "Monster : Froger" ,
              SubContent = "", -- Optional
              Duration = 5 -- Set to nil to make the notification not disappear
            })
          elseif inst:IsA("Part") and inst.Name == "RidgePinkie" then
            Fluent:Notify({
              Title = "Monster Has Spawned",
              Content = "Monster : Pinkie" ,
              SubContent = "", -- Optional
              Duration = 5 -- Set to nil to make the notification not disappear
            })
          elseif inst:IsA("Part") and inst.Name == "TheMulti-Monster" then
            Fluent:Notify({
              Title = "Monster Has Spawned",
              Content = "Monster : A-60" ,
              SubContent = "", -- Optional
              Duration = 5 -- Set to nil to make the notification not disappear
            })
          end
        end)
        notify2 = workspace.Monsters.ChildAdded:Connect(function(inst)
          if inst.Name == "WallDweller" then
            Fluent:Notify({
              Title = "Monster Has Spawned",
              Content = "Monster : Wall Dweller",
              SubContent = "", -- Optional
              Duration = 5 -- Set to nil to make the notification not disappear
            })
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

local Toggle = Tabs.Main:AddToggle("Avoid Monster V1", 
{
    Title = "Avoid Monster V1", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        local p = Instance.new("Part")
        p.Size = Vector3.new(1, 1, 1)
        p.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 150, 0)
        p.Name = "NevcitPart"
        p.Transparency = 1
        p.Anchored = true  
        p.Parent = workspace
        avoid = workspace.ChildAdded:Connect(function(v)
          getgenv().BreakLoopAvoid = false
          if v.Name == "Angler" or v.Name == "Pinkie" or v.Name == "Chainsmoker" or v.Name == "Blitz" or v.Name == "Froger" or v.Name == "Pandemonium" or v.Name == "RidgeAngler" or v.Name == "RidgePinkie" or v.Name == "RidgeChainsmoker" or v.Name == "RidgeBlitz" or v.Name == "RidgeFroger" then
            local oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            task.spawn(function()
              while wait() do
                task.wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.NevcitPart.CFrame
                if v == nil then
                  break
                end
              end
            end)
            v.Destroying:Wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldpos
            for _, v in ipairs(workspace:GetChildren()) do
              if v.Name == "NevcitPart" and v.ClassName == "Part" then
                v:Destroy()              
              end
            end
          end
        end)
      end
      if state == false then
        avoid:Disconnect()
      end
  end
})

local Toggle = Tabs.Main:AddToggle("Avoid Monster V2", 
{
    Title = "Avoid Monster V2", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        avoid = workspace.ChildAdded:Connect(function(v)
          getgenv().BreakLoopAvoid = false
          if v.Name == "Angler" or v.Name == "Pinkie" or v.Name == "Chainsmoker" or v.Name == "Blitz" or v.Name == "Froger" or v.Name == "Pandemonium" or v.Name == "RidgeAngler" or v.Name == "RidgePinkie" or v.Name == "RidgeChainsmoker" or v.Name == "RidgeBlitz" or v.Name == "RidgeFroger" then
            local p = Instance.new("Part")
            p.Size = Vector3.new(1, 1, 1)
            p.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 150, 0)
            p.Name = "NevcitPart"
            p.Transparency = 1
            p.Anchored = true  
            p.Parent = workspace
            local oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            task.spawn(function()
              while wait() do
                task.wait(0.1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.NevcitPart.CFrame
                if v == nil then
                  break
                end
              end
            end)
            v.Destroying:Wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldpos
            for _, v in ipairs(workspace:GetChildren()) do
              if v.Name == "NevcitPart" and v.ClassName == "Part" then
                v:Destroy()              
              end
            end
          end
        end)
      end
      if state == false then
        avoid:Disconnect()
      end
  end
})

---------------------- ESP TAB -------------------------------

----------------- ESP V1

local esp1 = Tabs.esp:AddSection("ESP V1")
esp1:AddParagraph({
    Title = "Recomended For Low Device"
})

local Toggle = esp1:AddToggle("ESP Item", 
{
    Title = "ESP Item", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
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
              applyitem(inst)
            elseif inst.ClassName == "Model" and inst.Name == "BigFlashBeacon" then
              wait()
              applyitem(inst)
            elseif inst.ClassName == "Model" and inst.Name == "Flashlight" then
              wait()
              applyitem(inst)
            elseif inst.ClassName == "Model" and inst.Name == "Medkit" then
              wait()
              applyitem(inst)
            elseif inst.ClassName == "Model" and inst.Name == "Lantern" then
              wait()
              applyitem(inst)
            elseif inst.ClassName == "Model" and inst.Name == "SmallLantern" then
              wait()
              applyitem(inst)
            elseif inst.ClassName == "Model" and inst.Name == "DefaultBattery1" then
              wait()
              applyitem(inst)
            elseif inst.ClassName == "Model" and inst.Name == "DefaultBattery2" then
              wait()
              applyitem(inst)
            elseif inst.ClassName == "Model" and inst.Name == "DefaultBattery3" then
              wait()
              applyitem(inst)
            elseif inst.ClassName == "Model" and inst.Name == "RoomsBattery" then
              wait()
              applyitem(inst)
            elseif inst.ClassName == "Model" and inst.Name == "AltBattery1" then
              wait()
              applyitem(inst)
            elseif inst.ClassName == "Model" and inst.Name == "AltBattery2" then
              wait()
              applyitem(inst)
            elseif inst.ClassName == "Model" and inst.Name == "AltBattery3" then
              wait()
              applyitem(inst)
            elseif inst.ClassName == "Model" and inst.Name == "CodeBreacher" then
              wait()
              applyitem(inst)
            elseif inst.ClassName == "Model" and inst.Name == "WindupLight" then
              wait()
              applyitem(inst)
            elseif inst.ClassName == "Model" and inst.Name == "Blacklight" then
              wait()
              applyitem(inst)
            elseif inst.ClassName == "Model" and inst.Name == "ToyRemote" then
              wait()
              applyitem(inst)
            elseif inst.ClassName == "Model" and inst.Name == "Gummylight" then
              wait()
              applyitem(inst)
            end
          end)
        end)
        coroutine.resume(tem)
        for _, v in pairs(workspace.Rooms:GetDescendants()) do
          if v.ClassName == "Model" and v.Name == "FlashBeacon" then
           wait()
            applyitem(v)
          elseif v.ClassName == "Model" and v.Name == "BigFlashBeacon" then
            wait()
            applyitem(v)
          elseif v.ClassName == "Model" and v.Name == "Flashlight" then
            wait()
            applyitem(v)
          elseif v.ClassName == "Model" and v.Name == "Medkit" then
            wait()
            applyitem(v)
          elseif v.ClassName == "Model" and v.Name == "Latern" then
            wait()
            applyitem(v)
          elseif v.ClassName == "Model" and v.Name == "DefaultBattery1" then
            wait()
            applyitem(v)
          elseif v.ClassName == "Model" and v.Name == "DefaultBattery2" then
           wait()
            applyitem(v)
          elseif v.ClassName == "Model" and v.Name == "DefaultBattery3" then
            wait()
            applyitem(v)
          elseif v.ClassName == "Model" and v.Name == "RoomsBattery" then
            wait()
            applyitem(v)
          elseif v.ClassName == "Model" and v.Name == "AltBattery1" then
            wait()
            applyitem(v)
          elseif v.ClassName == "Model" and v.Name == "AltBattery2" then
            wait()
            applyitem(v)
          elseif v.ClassName == "Model" and v.Name == "AltBattery3" then
            wait()
            applyitem(v)
          elseif v.ClassName == "Model" and v.Name == "CodeBreacher" then
            wait()
            applyitem(v)
          elseif v.ClassName == "Model" and v.Name == "WindupLight" then
            wait()
            applyitem(v)
          elseif v.ClassName == "Model" and v.Name == "Blacklight" then
            wait()
            applyitem(v)
          elseif v.ClassName == "Model" and v.Name == "ToyRemote" then
            wait()
            applyitem(v)
          elseif v.ClassName == "Model" and v.Name == "Gummylight" then
            wait()
            applyitem(v)
          end
        end
      end
      if state == false then
        destroyitem:Disconnect()
        wait()
        item:Disconnect()
        for _, v in ipairs(workspace.Rooms:GetDescendants()) do
          if v.Name == "NevcitItem" then
            v:Destroy()
          end
        end
      end
  end
})

local Toggle = esp1:AddToggle("ESP Currency/Money", 
{
    Title = "ESP Currency/Money", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        destroymoney = workspace.Rooms.ChildAdded:Connect(function()
          for _, v in ipairs(workspace.Rooms:GetDescendants()) do
            if v.Name == "NevcitCurrency" then
              v:Destroy()
            end
          end
        end)
        local cur = coroutine.create(function()
          money = workspace.Rooms.DescendantAdded:Connect(function(inst)
            if inst.ClassName == "Model" and inst.Name == "5Currency" then
              wait()
              applyCurrency(inst)
            elseif inst.ClassName == "Model" and inst.Name == "10Currency" then
              wait()
              applyCurrency(inst)
            elseif inst.ClassName == "Model" and inst.Name == "15Currency" then
              wait()
              applyCurrency(inst)
            elseif inst.ClassName == "Model" and inst.Name == "25Currency" then
              wait()
              applyCurrency(inst)
            elseif inst.ClassName == "Model" and inst.Name == "50Currency" then
              wait()
              applyCurrency(inst)
            elseif inst.ClassName == "Model" and inst.Name == "100Currency" then
              wait()
              applyCurrency(inst)
            elseif inst.ClassName == "Model" and inst.Name == "200Currency" then
              wait()
              applyCurrency(inst)
            elseif inst.ClassName == "Model" and inst.Name == "500Currency" then
              wait()
              applyCurrency(inst)
            end
          end)
        end)
        coroutine.resume(cur)
        for _, v in pairs(workspace.Rooms:GetDescendants()) do
          if v.ClassName == "Model" and v.Name == "5Currency" then
            wait()
            applyCurrency(v)
          elseif v.ClassName == "Model" and v.Name == "10Currency" then
            wait()
            applyCurrency(v)
          elseif v.ClassName == "Model" and v.Name == "15Currency" then
            wait()
            applyCurrency(v)
          elseif v.ClassName == "Model" and v.Name == "25Currency" then
            wait()
            applyCurrency(v)
          elseif v.ClassName == "Model" and v.Name == "50Currency" then
            wait()
            applyCurrency(v)
          elseif v.ClassName == "Model" and v.Name == "100Currency" then
            wait()
            applyCurrency(v)
          elseif v.ClassName == "Model" and v.Name == "200Currency" then
            wait()
            applyCurrency(v)
          elseif v.ClassName == "Model" and v.Name == "500Currency" then
            wait()
            applyCurrency(v)
          end
        end
      end
      if state == false then
        destroymoney:Disconnect()
        wait()
        money:Disconnect()
        for _, v in ipairs(workspace.Rooms:GetDescendants()) do
          if v.Name == "NevcitCurrency" then
            v:Destroy()
          end
        end
      end
  end
})

local Toggle = esp1:AddToggle("ESP Monster Locker", 
{
    Title = "ESP Monster Locker", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        locker = workspace.DescendantAdded:Connect(function(inst)
          if inst.Name == "MonsterLocker" then
            applylocker(inst)
          end
        end)
      end
      if state == false then
        locker:Disconnect()
        for _, v in ipairs(workspace.Rooms:GetDescendants()) do
          if v.Name == "NevcitLocker" then
            v:Destroy()
          end
        end
      end
  end
})

local Toggle = esp1:AddToggle("ESP Monster", 
{
    Title = "ESP Monster", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        monster = workspace.ChildAdded:Connect(function(inst)
          if inst.Name == "Angler" or inst.Name == "Chainsmoker" or inst.Name == "Blitz" or inst.Name == "Pinkie" or inst.Name == "Froger" or inst.Name == "Pandemonium" or inst.Name == "RidgeAngler" or inst.Name == "RidgeChainsmoker" or inst.Name == "RidgeBlitz" or inst.Name == "RidgeFroger" or inst.Name == "RidgeChainSmoker" or inst.Name == "RidgePinkie" then
            applymos(inst)           
          end
        end)
        monster2 = workspace.Monsters.ChildAdded:Connect(function(inst)
          if inst.Name == "WallDweller" then
            applymos(inst)
          end
        end)
      end
      if state == false then
        monster:Disconnect()
        wait()
        monster2:Disconnect()
        for _, v in ipairs(workspace.Rooms:GetDescendants()) do
          if v.Name == "NevcitMons" then
            v:Destroy()
          end
        end
      end
    end
})

local Toggle = esp1:AddToggle("ESP Fake Door", 
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

local Toggle = esp1:AddToggle("ESP Door", 
{
    Title = "ESP Door", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        destroy = workspace.Rooms.ChildAdded:Connect(function()
          for _, v in ipairs(workspace.Rooms:GetDescendants()) do
            if v.Name == "NevcitNormalDoor" or v.Name == "NevcitNormalDoor1" then
              v:Destroy()
            end
          end
        end)
        real = workspace.Rooms.DescendantAdded:Connect(function(inst)
          if inst:IsA("Model") and inst.Name == "NormalDoor" or inst.Name == "BigDoor" then
            if inst:GetAttribute("ProgressDoor") ~= nil then
              applynormaldoor1(inst:FindFirstChild("Door") or inst)
            end
          end
        end)
      end
      if state == false then
        destroy:Disconnect()
        wait()
        real:Disconnect()
        wait()
        for _, v in ipairs(workspace.Rooms:GetDescendants()) do
          if v.Name == "NevcitNormalDoor" or v.Name == "NevcitNormalDoor1" then
            v:Destroy()
          end
        end
      end
  end
})

local Toggle = esp1:AddToggle("ESP Keycard", 
{
    Title = "ESP Keycard", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        local keycor = coroutine.create(function()
          keycard = game:GetService("Workspace").Rooms.DescendantAdded:Connect(function(inst)
            if inst:IsA("Model") and inst.Name == "NormalKeyCard" then
              applykey(inst)
            elseif inst:IsA("Model") and inst.Name == "InnerKeyCard" then
              applykey(inst)
            elseif inst:IsA("Model") and inst.Name == "RidgeKeyCard" then
              applykey(inst)
            end
          end)
        end)
        coroutine.resume(keycor)
        for _, v in ipairs(workspace.Rooms:GetDescendants()) do
          if v.ClassName == "Model" and v:GetAttribute("InteractionType") == "KeyCard" then
            applykey(v)
          end
          if v.ClassName == "Model" and v:GetAttribute("InteractionType") == "InnerKeyCard" then
            applykey(v)
          end
        end
      end
      if state == false then
        keycard:Disconnect()
        for _, v in ipairs(workspace.Rooms:GetDescendants()) do
          if v.Name == "NevcitKey" then
            v:Destroy()
          end
        end
      end
	end
})

local Toggle = esp1:AddToggle("ESP Broken Cables", 
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

local Toggle = esp1:AddToggle("ESP Broken Generator", 
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

------------------- ESP V2

local esp = Tabs.esp:AddSection("ESP V2")
esp:AddParagraph({
    Title = "Not Recomended For Low Device"
})

local Toggle = esp:AddToggle("ESP Monster Locker (Laggy)", 
{
    Title = "ESP Monster Locker", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        destroylocker = workspace.Rooms.ChildAdded:Connect(function()
          for _, v in ipairs(workspace.Rooms:GetDescendants()) do
            if v.Name == "NevcitLocker" then
              v:Destroy()
            end
          end
        end)
        locker = workspace.DescendantAdded:Connect(function(inst)
          task.wait(0.3)
          if inst.Name == "MonsterLocker" then
            applylocker(inst)
          end
        end)
      end
      if state == false then
        destroylocker:Disconnect()
        wait()
        locker:Disconnect()
        for _, v in ipairs(workspace.Rooms:GetDescendants()) do
          if v.Name == "NevcitLocker" then
            v:Destroy()
          end
        end
      end
  end
})

local Toggle = esp:AddToggle("ESP Fake Door (Laggy)", 
{
    Title = "ESP Fake Door", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        destroytrickster = workspace.Rooms.ChildAdded:Connect(function()
          for _, v in ipairs(workspace.Rooms:GetDescendants()) do
            if v.Name == "NevcitTrickster" then
              v:Destroy()
            end
          end
        end)
        fake = workspace.Rooms.DescendantAdded:Connect(function(inst)
          task.wait(0.2)
          if inst.Name == "TricksterDoor" then
            applytrickster(inst)
          end
        end)
      end
      if state == false then
        destroytrickster:Disconnect()
        wait()
        fake:Disconnect()
        for _, v in ipairs(workspace.Rooms:GetDescendants()) do
          if v.Name == "NevcitTrickster" then
            v:Destroy()
          end
        end
      end
  end
})

local Toggle = esp:AddToggle("ESP Door (Laggy)", 
{
    Title = "ESP Door", 
    Description = "Normal Door",
    Default = false,
    Callback = function(state)
      if state == true then
        destroy = workspace.Rooms.ChildAdded:Connect(function()
          for _, v in ipairs(workspace.Rooms:GetDescendants()) do
            if v.Name == "NevcitNormalDoor" then
              v:Destroy()
            end
          end
        end)
        real = workspace.Rooms.DescendantAdded:Connect(function(inst)
          task.wait(0.1)
          if inst:IsA("Model") and inst.Name == "NormalDoor" then
            if inst:GetAttribute("ProgressDoor") ~= nil then
              applynormaldoor(inst)
            end
          end
          if  inst:IsA("Model") and inst.Name == "BigDoor" then
            if inst:GetAttribute("ProgressDoor") ~= nil then
              applybigdoor(inst)
            end
          end
        end)
      end
      if state == false then
        destroy:Disconnect()
        wait()
        real:Disconnect()
        wait()
        for _, v in ipairs(workspace.Rooms:GetDescendants()) do
          if v.Name == "NevcitNormalDoor" then
            v:Destroy()
          end
        end
      end
  end
})

local Toggle = esp:AddToggle("ESP Keycard (Laggy)", 
{
    Title = "ESP Keycard", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        getgenv().BreakLoopKey = false
        keycard = workspace.Rooms.DescendantAdded:Connect(function(inst)
          if inst.ClassName == "Model" and inst.Name == "NormalKeyCard" then
              applykey2(inst)
          elseif inst.ClassName == "Model" and inst.Name == "InnerKeyCard" then
              applykey2(inst)
          elseif inst.ClassName == "Model" and inst.Name == "RidgeKeycard" then
              applykey2(inst)
          end
        end)
        for _, v in ipairs(workspace.Rooms:GetDescendants()) do
          if v.ClassName == "Model" and v.Name == "NormalKeyCard" then
              applykey2(v)
          elseif v.ClassName == "Model" and v.Name == "InnerKeyCard" then
              applykey2(v)
          elseif v.ClassName == "Model" and v.Name == "RidgeKeycard" then
              applykey2(v)
          end
        end
      end
      if state == false then
        keycard:Disconnect()
        wait()
        getgenv().BreakLoopKey = true
        for _, v in ipairs(workspace.Rooms:GetDescendants()) do
          if v.Name == "NevcitKey" or v.Name == "NevcitKey1" then
            v:Destroy()
          end
        end
      end
	end
})

----------------------- CONFIG TAB ----------------------

local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

InterfaceManager:SetFolder("GOAHUB")
SaveManager:SetFolder("GOAHUB/Pressure")

InterfaceManager:BuildInterfaceSection(Tabs.Config)
SaveManager:BuildConfigSection(Tabs.Config)

Fluent:Notify({
    Title = "Read This",
    Content = "Subscribe my channel (Nevcit) for support me",
    Duration = 10
})

--------------------------- CREDIT TAB ------------------------

Tabs.Credit:AddButton({
    Title = "Youtube Link",
    Description = "SUBCRIBE",
    Callback = function()
        setclipboard("https://youtube.com/@nevcit?si=EigVQPRXpFztFKAb")
    end
})

Tabs.Credit:AddButton({
    Title = "Comment On This Video If You Want",
    Description = "Request New Feature Or Improve A Feature",
    Callback = function()
        setclipboard("https://youtu.be/bwcK-aZNsFQ?si=OuVLm_ymSeQJ22zh")
    end
})

------------------ GUI CLOSE & OPEN --------------------

for _, gui in ipairs(game:GetService("CoreGui"):GetChildren()) do
  if gui.Name == "Nevcit" then
    gui:Destroy()
  end
end

local minimize = game:GetService("CoreGui").ScreenGui:GetChildren()[2]
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