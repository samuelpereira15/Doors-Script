-- Key System Script with Round Corners and Dark Mode

-- GUI Setup
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local KeyTextBox = Instance.new("TextBox")
local KeyButton = Instance.new("TextButton")
local InfoLabel = Instance.new("TextLabel")

ScreenGui.Name = "KeySystemGui"
ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui

Frame.Name = "MainFrame"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)  -- Dark Mode
Frame.BorderSizePixel = 0
Frame.Size = UDim2.new(0.4, 0, 0.3, 0)
Frame.Position = UDim2.new(0.3, 0, 0.35, 0)
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.ClipsDescendants = true
Frame.UIStroke.Color = Color3.fromRGB(50, 50, 50)
Frame.UIStroke.Thickness = 2
Frame.BorderRadius = UDim.new(0, 10)  -- Round Corners

KeyTextBox.Name = "KeyTextBox"
KeyTextBox.Parent = Frame
KeyTextBox.BackgroundColor3 = Color3.fromRGB(45, 45, 45)  -- Darker Input Box
KeyTextBox.BorderSizePixel = 0
KeyTextBox.Size = UDim2.new(0.8, 0, 0.3, 0)
KeyTextBox.Position = UDim2.new(0.1, 0, 0.2, 0)
KeyTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyTextBox.PlaceholderText = "Enter key here..."
KeyTextBox.Text = ""
KeyTextBox.BorderRadius = UDim.new(0, 5)

KeyButton.Name = "KeyButton"
KeyButton.Parent = Frame
KeyButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
KeyButton.BorderSizePixel = 0
KeyButton.Size = UDim2.new(0.8, 0, 0.3, 0)
KeyButton.Position = UDim2.new(0.1, 0, 0.6, 0)
KeyButton.Text = "Submit Key"
KeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyButton.BorderRadius = UDim.new(0, 5)

InfoLabel.Name = "InfoLabel"
InfoLabel.Parent = Frame
InfoLabel.BackgroundTransparency = 1
InfoLabel.Size = UDim2.new(1, 0, 0.1, 0)
InfoLabel.Position = UDim2.new(0, 0, 0, 0)
InfoLabel.TextColor3 = Color3.fromRGB(255, 0, 0)  -- Red Text for Error Messages
InfoLabel.Text = ""

-- Key Verification
local validKey = "Miguelqwe170"

local function verifyKey()
    local enteredKey = KeyTextBox.Text
    if enteredKey == validKey then
        InfoLabel.Text = "Key accepted. Loading script..."
        local MainScript = loadstring(game:HttpGet("https://raw.githubusercontent.com/samuelpereira15/Doors-Script/main/main.lua"))()
        MainScript()
        Frame:Destroy()
    else
        InfoLabel.Text = "Invalid key. Please try again."
    end
end

KeyButton.MouseButton1Click:Connect(verifyKey)
