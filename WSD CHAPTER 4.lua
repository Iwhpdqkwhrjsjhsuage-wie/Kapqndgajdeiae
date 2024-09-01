for _, gui in ipairs(game:GetService("CoreGui"):GetChildren()) do
    if gui.Name == "ScreenGui" then
      gui:Destroy()
    end
end

getgenv().Active = false
getgenv().BreakLoopAutoDrink = false
getgenv().BreakLoopAutoEat = false
getgenv().BreakLoopAutoFillGenerator = false
getgenv().BreakLoop = false
getgenv().BreakLoopGate = false
getgenv().BreakLoopWindow = false
getgenv().Quest = nil
local rootpart = game.Players.LocalPlayer.Character.HumanoidRootPart
local instant
local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nevcit/Pressure/main/Fluent"))()

local Window = Fluent:CreateWindow({
    Title = "GOA Hub",
    SubTitle = "by Nevcit",
    TabWidth = 80,
    Size = UDim2.fromOffset(400, 350),
    Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

-- Fluent provides Lucide Icons, they are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),
    Config = Window:AddTab({ Title = "Config", Icon = "settings" }),
    Credit = Window:AddTab({ Title = "Credit", Icon = "bookmark" })
}
----- Local Function

local function opengate()
  rootpart.CFrame = CFrame.new(173.225174, 66.8669205, -108.927185, 0.0355409384, 5.60209479e-08, -0.99936825, 4.13594314e-08, 1, 5.75272416e-08, 0.99936825, -4.33778737e-08, 0.0355409384)
  for i, v in pairs(workspace.Gate1:GetChildren()) do
    if v.Name == "s" and v:IsA("Part") or v:IsA("MeshPart") and v.Anchored == true then
      while wait() do
        workspace.Players.tremordevil.Hammer.Use:FireServer()
        workspace.Players.tremordevil.Hammer.Use:FireServer()
        workspace.Players.tremordevil.Hammer.Use:FireServer()
        if v.Anchored == false or getgenv().BreakLoopGate == true then
          break
        end
      end
    end
  end
end

local function eat()
  getgenv().Active = true
  local old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  rootpart.CFrame = CFrame.new(160.213379, 192.0858, 116.197739, -0.181649685, 4.62826533e-09, -0.98336333, 2.58541855e-09, 1, 4.22898072e-09, 0.98336333, -1.77421289e-09, -0.181649685)
  task.wait(0.1)
  fireproximityprompt(workspace.Foodies.FridgeNoodles.Primary.ProximityPrompt)
  task.wait(0.2)
  fireproximityprompt(workspace.Foodies.Stove.Primary.ProximityPrompt)
  task.wait(0.2)
  game:GetService("VirtualUser"):ClickButton1(Vector2.new(9e9, 9e9))
  task.wait(0.1)
  rootpart.CFrame = old
  getgenv().Active = false
end

local function drink()
  getgenv().Active = true
  local old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  rootpart.CFrame = CFrame.new(160.213379, 192.0858, 116.197739, -0.181649685, 4.62826533e-09, -0.98336333, 2.58541855e-09, 1, 4.22898072e-09, 0.98336333, -1.77421289e-09, -0.181649685)
  task.wait(0.2)
  if game.Players.LocalPlayer.Backpack["Drinking Glass"] == nil then
    fireproximityprompt(workspace.Foodies["Shelf with Drinks"].Primary.ProximityPrompt)
    task.wait(0.2)
    fireproximityprompt(workspace.Foodies.WaterDispenser.Primary.ProximityPrompt)
    task.wait(0.2)
    game:GetService("VirtualUser"):ClickButton1(Vector2.new(9e9, 9e9))
    task.wait(0.1)
    rootpart.CFrame = old
  end
  if game.Players.LocalPlayer.Backpack["Drinking Glass"] ~= nil then
    fireproximityprompt(workspace.Foodies.WaterDispenser.Primary.ProximityPrompt)
    task.wait(0.2)
    game:GetService("VirtualUser"):ClickButton1(Vector2.new(9e9, 9e9))
    task.wait(0.1)
    rootpart.CFrame = old
  end
  getgenv().Active = false
end

local function generator()
  getgenv().Active = true
  local old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  rootpart.CFrame = CFrame.new(160.213379, 192.0858, 116.197739, -0.181649685, 4.62826533e-09, -0.98336333, 2.58541855e-09, 1, 4.22898072e-09, 0.98336333, -1.77421289e-09, -0.181649685)
  task.wait(0.2)
  for i, v in pairs(workspace:GetChildren()) do
    if v:FindFirstChild("Primary") and v.Name == "GasCan" and v:IsA("Model") then
      fireproximityprompt(v:FindFirstChild("Primary").ProximityPrompt)
    end
  end
  task.wait(0.2)
  fireproximityprompt(workspace.Generator.Button.ProximityPrompt)
  task.wait(0.2)
  root.CFrame = old
  getgenv().Active = false
end

local function repairwindow()
  for i, v in pairs(workspace.Windows:GetDescendants()) do
    if v:IsA("Part") or v:IsA("MeshPart") and v.Name == "Window" then
      if v:FindFirstChild("ProximityPrompt") ~= nil then
        rootpart.CFrame = v.CFrame
        task.wait(0.2)
        fireproximityprompt(v:FindFirstChild("ProximityPrompt"))
      end
    end
  end
end

local function Esp()
  getgenv().BreakLoop = false
  for i, v in pairs(workspace.Game:GetChildren()) do
    if v:IsA("Model") and v.Name == "PossesedMom" or v.Name == "Mom" then
      local BillboardGui = Instance.new("BillboardGui", v:FindFirstChild("Head"))
      local TextLabel = Instance.new("TextLabel", BillboardGui)
      BillboardGui.Adornee = v:FindFirstChild("Head")
      BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
      BillboardGui.Active = true
      BillboardGui.AlwaysOnTop = true
      BillboardGui.LightInfluence = 1000
      BillboardGui.Size = UDim2.new(0, 100, 0, 150)
      BillboardGui.Name = "ESP"
      TextLabel.Parent = BillboardGui
      TextLabel.Size = UDim2.fromScale(1, 1)
      TextLabel.TextSize = 20
      TextLabel.BackgroundColor3 = Color3.new(255, 255, 255)
      TextLabel.BackgroundTransparency = 1
      TextLabel.Position = UDim2.new(0, 0, 0, -20)
      TextLabel.Font = Enum.Font.SourceSans
      TextLabel.Text = "MOM"
      TextLabel.TextColor3 = Color3.new(1, 1, 1)
      TextLabel.TextScaled = false
      TextLabel.TextWrapped = false
    end
end 
  for i, v in pairs(workspace.Game:GetChildren()) do
    if v.ClassName == "Model" and v.Name == "PossesedMom" or v.Name == "Mom" then
      local Highlight = Instance.new("Highlight", v)
      Highlight.Archivable = true
      Highlight.Adornee = v
      Highlight.Name = "Nevcit"
      Highlight.Enabled = true
      Highlight.FillColor = Color3.new(255, 0, 0)
      Highlight.FillTransparency = 0.3
      Highlight.OutlineColor = Color3.new(255, 255, 255)
      Highlight.OutlineTransparency = 0.2
    end
  end
  for _, dd in pairs(workspace.Game:GetChildren()) do
      if dd.Name == "PossesedMom" or dd.Name == "Mom" and dd.ClassName == "Model" then
        while wait() do
          task.wait(0.2)
          local distance = math.floor((dd.Head.Position - game.Players.LocalPlayer.Character.Head.Position).Magnitude / 3)
          dd.Head:FindFirstChild("ESP").TextLabel.Text = distance .. " M"
          if getgenv().BreakLoop == true then 
            break
          end
        end
      end
  end
end

local function destroyesp()
  for i,v in pairs(workspace.Game:GetDescendants()) do
    if v.ClassName == "BillboardGui" and v.Name == "ESP" then
      v:Destroy()
    end
  end
  for i,v in pairs(workspace.Game:GetDescendants()) do
    if v.ClassName == "Highlight" then
      v:Destroy()
    end
  end
end

---- Chapter 4

local Input = Tabs.Main:AddInput("WalkSpeed", {
    Title = "WalkSpeed",
    Description = "",
    Default = "9",
    Placeholder = "Type Here!",
    Numeric = true, -- Only allows numbers
    Finished = false, -- Only calls callback when you press enter
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end
})

Tabs.Main:AddButton({
    Title = "Full Bright",
    Description = "",
    Callback = function()
        game:GetService("Lighting").Brightness = 5
        game:GetService("Lighting").FogColor = Color3.new(1, 1, 1)
        game:GetService("Lighting").Ambient = Color3.new(1, 1, 1)
    end
})

Tabs.Main:AddButton({
    Title = "No FOG",
    Description = "",
    Callback = function()
        game:GetService("Lighting").GlobalShadows = false
        game:GetService("Lighting").Atmosphere:Destroy()
    end
})

Tabs.Main:AddButton({
    Title = "Open Gate",
    Description = "",
    Callback = function()
      for i, v in pairs(workspace.Gate1:GetChildren()) do
        if v:IsA("Part") or v:IsA("MeshPart") then
          v.Anchored = false
        end
      end
    end
})

Tabs.Main:AddButton({
    Title = "Repair Broken Window",
    Description = "",
    Callback = function()
      repairwindow()
    end
})

local Dropdown = Tabs.Main:AddDropdown("Do", {
    Title = "Do",
    Description = "",
    Values = {"Drink Water Glass", "Eat Noodle", "Fill Generator"},
    Multi = false,
    Default = nil,
    Callback = function(Value)
        getgenv().Quest = Value
        if getgenv().Quest == "Drink Water Glass" then
            drink()
        elseif getgenv().Quest == "Eat Noodle" then
            eat()
        elseif getgenv().Quest == "Fill Generator" then
            generator()
        end
    end
})

local Toggle = Tabs.Main:AddToggle("Instant Interact", 
{
    Title = "Open Gate (Spamming Click)", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        getgenv().BreakLoopGate = false
        opengate()
      end
      if state == false then
        getgenv().BreakLoopGate = true
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

local Toggle = Tabs.Main:AddToggle("Auto Repair Broken Window", 
{
    Title = "Auto Repair Broken Window", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        getgenv().BreakLoopWindow = false
        while wait() do
          task.wait(0.3)
          repairwindow()
          if getgenv().BreakLoopWindow == true then
            break
          end
        end
      end        
      if state == false then
        getgenv().BreakLoopWindow = true
      end
    end 
})

local Toggle = Tabs.Main:AddToggle("ESP Dad", 
{
    Title = "ESP Mom", 
    Description = "",
    Default = false,
    Callback = function(state)
        if state == true then
          getgenv().BreakLoop = false
            Fluent:Notify({
                Title = "Read",
                Content = "If ESP Dissapear, Turn Off and Turn On The Toogle Again",
                SubContent = "", -- Optional
                Duration = 3 -- Set to nil to make the notification not disappear
            })
            Esp()
        end
        if state == false then
            getgenv().BreakLoop = true
            destroyesp()
        end
    end 
})

local Toggle = Tabs.Main:AddToggle("Auto Drink", 
{
    Title = "Auto Drink (BETA)", 
    Description = "",
    Default = false,
    Callback = function(state)
        if state == true then
          while wait() do
            task.wait(0.4)
            if getgenv().Active == false and game.Players.LocalPlayer.Thirst.Value <= 50 then
              drink()
            end
            if getgenv().BreakLoopAutoDrink == true then
              break
            end
          end
        end
        if state == false then
            getgenv().BreakLoopAutoDrink = true
        end
    end 
})

local Toggle = Tabs.Main:AddToggle("Auto Eat", 
{
    Title = "Auto Eat (BETA)", 
    Description = "",
    Default = false,
    Callback = function(state)
        if state == true then
          while wait() do
            task.wait(0.5)
            if getgenv().Active == false and game.Players.LocalPlayer.Hunger.Value <= 50 then
              eat()
            end
            if getgenv().BreakLoopAutoEat == true then
              break
            end
          end
        end
        if state == false then
            getgenv().BreakLoopAutoEat = true
        end
    end 
})

local Toggle = Tabs.Main:AddToggle("Auto Fill Generator", 
{
    Title = "Auto Fill Generator (BETA)", 
    Description = "",
    Default = false,
    Callback = function(state)
        if state == true then
          while wait() do
            task.wait(0.3)
            if getgenv().Active == false and workspace.Generator.Bar.Value <= 10 then
              generator()
            end
            if getgenv().BreakLoopAutoFillGenerator == true then
              break
            end
          end
        end
        if state == false then
            getgenv().BreakLoopAutoFillGenerator = true
        end
    end 
})

----------------------- CONFIG TAB ----------------------

local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

InterfaceManager:SetFolder("GOAHUB")
SaveManager:SetFolder("GOAHUB/Weird-Strict-Dad")

InterfaceManager:BuildInterfaceSection(Tabs.Config)
SaveManager:BuildConfigSection(Tabs.Config)

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