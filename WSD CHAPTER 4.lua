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
----- Local Function

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

local Toggle = Tabs.Main:AddToggle("ESP Dad", 
{
    Title = "ESP Dad", 
    Description = "",
    Default = false,
    Callback = function(state)
        if state == true then
          getgenv().BreakLoop = false
            Fluent:Notify({
                Title = "Read",
                Content = "If ESP Dissapear, Turn Off and Turn On The Toogle Again",
                SubContent = "", -- Optional
                Duration = 5 -- Set to nil to make the notification not disappear
            })
            Esp()
        end
        if state == false then
            getgenv().BreakLoop = true
            destroyesp()
        end
    end 
})

---- misc

----------------- Credit -----------------

local credit = WSD:MakeTab({
	Name = "Credit",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

credit:AddButton({
	Name = "Youtube Link",
	Callback = function()
	  setclipboard("https://www.youtube.com/@Nevcit")
	  OrionLib:MakeNotification({
	  Name = "NOTIFICATIONS",
  	Content = "SUBSCRIBE",
	  Image = "rbxassetid://4483345998",
	  Time = 5
   })
	end
})


OrionLib:MakeNotification({
	  Name = "NOTIFICATIONS",
  	Content = "THE SCRIPT SUCCSESSFULLY LOAD",
	  Image = "rbxassetid://4483345998",
	  Time = 5
   })

----------------- TOOGLE UI -----------------

OrionLib:Init()

for _, gui in ipairs(game:GetService("CoreGui"):GetChildren()) do
  if gui.Name == "patrickGui" then
    gui:Destroy()
  end
end

local frame = game:GetService("CoreGui").Orion:GetChildren()[2]
local gui = Instance.new("ScreenGui")
gui.Name = "patrickGui"
gui.Parent = game.CoreGui
local TextButton = Instance.new("TextButton")
-- Text
TextButton.Text = "Close"
TextButton.TextSize = 0
-- Color
TextButton.TextColor3 = Color3.new(1, 1, 1)
TextButton.BackgroundColor3 = Color3.new(0, 1, 1)
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




