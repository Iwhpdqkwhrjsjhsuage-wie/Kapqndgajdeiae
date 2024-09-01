for _, gui in ipairs(game:GetService("CoreGui"):GetChildren()) do
    if gui.Name == "ScreenGui" then
      gui:Destroy()
    end
end

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

--- getgenv()

getgenv().BreakLoop = false
getgenv().Minimaze = false
getgenv().Tp = nil
getgenv().Quest = nil
getgenv().Questch2 = nil

--------- LOCAL FUNCTION CHAPTER 3

local function autostore()
  while wait() do
    local plyr = game.Players.LocalPlayer.Character.HumanoidRootPart
    for i, v in pairs(workspace.House:GetDescendants()) do
      if v:FindFirstChild("GasCan") ~= nil and v.Name == "GasCans" then
        if workspace.Game.Baggage["Gas Cans"].Value ~= 13 then
          plyr.CFrame = CFrame.new(-123.511528, 5.25002241, 27.6424961, -0.00102992344, -1.04728656e-07, 0.999999464, 2.09537383e-08, 1, 1.04750292e-07, -0.999999464, 2.10616111e-08, -0.00102992344)
          task.wait(0.2)
          fireproximityprompt(workspace.House.Spares["Shelf with Drinks"].Primary.ProximityPrompt)
          task.wait(0.3)
          for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do      
            if v.Name == "Drinking Glass" then
              game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            end 
          end
          task.wait(0.3)
          fireproximityprompt(workspace.House.Spares.WaterDispenser.Primary.ProximityPrompt)
          task.wait(0.3)
          plyr.CFrame = CFrame.new(-117.895195, 5.25002289, 18.4790497, 0.999891222, -4.78544626e-09, 0.0147491079, 4.7203863e-09, 1, 4.44592496e-09, -0.0147491079, -4.37581971e-09, 0.999891222)
          task.wait(0.1)
          fireproximityprompt(workspace.House.Rooms.Kitchen.FridgeNoodles.Primary.ProximityPrompt)
          task.wait(0.3)
          for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.Name == "Raw Noodle" then
              game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            end
          end
          task.wait(0.3)
          fireproximityprompt(workspace.House.Rooms.Kitchen.Stove.Primary.ProximityPrompt)
          task.wait(0.1)
          plyr.CFrame = CFrame.new(-156.347107, 5.25002193, 43.3183899, 0.0322994292, 1.25283828e-08, 0.999478221, -4.00183957e-08, 1, -1.12416769e-08, -0.999478221, -3.96344149e-08, 0.0322994292)
          task.wait(0.2)
          for i,v in pairs(game:GetService("Workspace").House.GasCans:GetDescendants()) do
            if v.ClassName == "ProximityPrompt" then
              fireproximityprompt(v)
            end
          end
          task.wait(0.2)
          for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.Name == "gas can" then
              game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
              game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
              game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            end
          end
          task.wait(0.2)
          plyr.CFrame = CFrame.new(-113.479828, 5.25002289, 64.3934937, 0.0127779888, 2.98009102e-08, -0.999918342, -4.61760514e-08, 1, 2.92132576e-08, 0.999918342, 4.57989948e-08, 0.0127779888)
          task.wait(0.2)
          fireproximityprompt(workspace.Game.Baggage.Store)
          task.wait(0.2)
          for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.Name == "Cooked Noodle" then
              game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            end
          end
          task.wait(0.2)
          fireproximityprompt(workspace.Game.Baggage.Store)
          task.wait(0.2)
          for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.Name == "Glass of Water" then
              game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            end
          end
          task.wait(0.2)
          fireproximityprompt(workspace.Game.Baggage.Store)
          task.wait(0.1)
        end
      end
      if v:FindFirstChild("GasCan") ~= nil and v.Name == "GasCans" then
        if workspace.Game.Baggage["Gas Cans"].Value == 13 then
          plyr.CFrame = CFrame.new(-123.511528, 5.25002241, 27.6424961, -0.00102992344, -1.04728656e-07, 0.999999464, 2.09537383e-08, 1, 1.04750292e-07, -0.999999464, 2.10616111e-08, -0.00102992344)
          task.wait(0.2)
          fireproximityprompt(workspace.House.Spares["Shelf with Drinks"].Primary.ProximityPrompt)
          task.wait(0.3)
          for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.Name == "Drinking Glass" then
              game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            end
          end
          task.wait(0.3)
          fireproximityprompt(workspace.House.Spares.WaterDispenser.Primary.ProximityPrompt)
          task.wait(0.3)
          plyr.CFrame = CFrame.new(-117.895195, 5.25002289, 18.4790497, 0.999891222, -4.78544626e-09, 0.0147491079, 4.7203863e-09, 1, 4.44592496e-09, -0.0147491079, -4.37581971e-09, 0.999891222)
          task.wait(0.1)
          fireproximityprompt(workspace.House.Rooms.Kitchen.FridgeNoodles.Primary.ProximityPrompt)
          task.wait(0.3)
          for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.Name == "Raw Noodle" then
              game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
              game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            end
          end
          task.wait(0.3)
          fireproximityprompt(workspace.House.Rooms.Kitchen.Stove.Primary.ProximityPrompt)
          task.wait(0.1)
          for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.Name == "Cooked Noodle" then
              game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
              game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            end
          end
          task.wait(0.2)
          plyr.CFrame = CFrame.new(-113.479828, 5.25002289, 64.3934937, 0.0127779888, 2.98009102e-08, -0.999918342, -4.61760514e-08, 1, 2.92132576e-08, 0.999918342, 4.57989948e-08, 0.0127779888)
          task.wait(0.2)
          fireproximityprompt(workspace.Game.Baggage.Store)
          task.wait(0.2)
          for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.Name == "Glass of Water" then
              game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
              game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            end
          end
          task.wait(0.2)
          fireproximityprompt(workspace.Game.Baggage.Store)
          task.wait(0.1)
        end
      end
    end
    if getgenv().BreakLoop == true then
      break
    end
  end
end

local function AutoKillXeno()
  getgenv().BreakLoop = false
  while task.wait(0.80) do
    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
      if v:FindFirstChild("Humanoid") and v.Name == "Xeno" and v.ClassName == "Model" then
        v.Humanoid.Health = 1
        task.wait(0.2)
        v.Humanoid.Health = 0
      end
    end
    if getgenv().BreakLoop == true then
      break
    end
end
end

--------- LOCAL FUNCTION ALL CHAPTER

local function destroyesp()
  for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if v.ClassName == "BillboardGui" and v.Name == "ESP" then
      v:Destroy()
    end
  end
  for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if v.ClassName == "Highlight" then
      v:Destroy()
    end
  end
end

local function BreakLoop()
  getgenv().BreakLoop = true
end

----------------- CHAPTER 3 -----------------

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

local Toggle = Tabs.Main:AddToggle("Auto Store", 
{
    Title = "Auto Store", 
    Description = "",
    Default = false,
    Callback = function(state)
      if state == true then
        getgenv().BreakLoop = false
        autostore()
      end
      if state == false then
        getgenv().BreakLoop = true
        BreakLoop()
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
  SubContent = "",  
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

----------------- TOOGLE UI -----------------


for _, gui in ipairs(game:GetService("CoreGui"):GetChildren()) do
  if gui.Name == "patrickGui" then
    gui:Destroy()
  end
end

local frame = game:GetService("CoreGui").ScreenGui:GetChildren()[2]
local gui = Instance.new("ScreenGui")
gui.Name = "patrickGui"
gui.Parent = game.CoreGui
local TextButton = Instance.new("TextButton")
-- Text
TextButton.Text = "Close"
TextButton.TextSize = 0
-- Color
TextButton.TextColor3 = Color3.new(1, 1, 1)
TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton.BorderColor3 = Color3.new(1, 1, 1)
-- thickness
TextButton.BorderSizePixel = 0
-- Text Code
TextButton.Font = Enum.Font.Code
-- Size
TextButton.Size = UDim2.new(0.1, 0, 0.09, 0)
-- Posisition
TextButton.Position = UDim2.new(0, 0, 0.4, 0)
TextButton.Parent = gui
TextButton.Draggable = true
local tl = Instance.new("TextLabel")
tl.Parent = TextButton
tl.BackgroundColor3 = Color3.new(255, 255, 255)
tl.BorderColor3 = Color3.new(255, 255, 255)
tl.BorderSizePixel = 0
tl.Size = UDim2.new(0.5, 50, 1, 1)
tl.Visible = true
tl.ZIndex = 1
tl.Text = "Close"
tl.TextColor3 = Color3.new(0, 0, 0)
tl.TextSize = 24
tl.TextStrokeColor3 = Color3.new(0, 0, 0)
tl.TextWrapped = true
TextButton.MouseButton1Click:Connect (function()
  if frame.Visible == true then
    frame.Visible = false
  elseif frame.Visible == false then
    frame.Visible = true
  end
end)

while wait() do
  if frame.Visible == true then
    tl.Text = "Close"
  elseif frame.Visible == false then
    tl.Text = "Open"
  end
end
