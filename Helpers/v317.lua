-- Updates Log
--loadstring(game:HttpGet("",true))()

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local vv1_1 = math.random(1000, 9999)
local vv2_1 = Instance.new("ScreenGui", game.CoreGui)
vv2_1.Name = "loadingBoiii"
vv2_1.IgnoreGuiInset = true
vv2_1.ResetOnSpawn = false
local vv3_1 = Instance.new("Frame", vv2_1)
vv3_1.Size = UDim2.new(0, 460, 0, 240)
vv3_1.Position = UDim2.new(0.5, -230, 0.5, -120)
vv3_1.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
vv3_1.Active = true
vv3_1.Draggable = true
vv3_1.ZIndex = 5
Instance.new("UICorner", vv3_1).CornerRadius = UDim.new(0, 12)
local vv4_1 = Instance.new("UIStroke", vv3_1)
vv4_1.Color = Color3.fromRGB(0, 255, 255)
vv4_1.Thickness = 2
local vv5_1 = Instance.new("Frame", vv3_1)
vv5_1.Size = UDim2.new(1, -20, 1, -20)
vv5_1.Position = UDim2.new(0, 10, 0, 10)
vv5_1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
vv5_1.ZIndex = 6
Instance.new("UICorner", vv5_1).CornerRadius = UDim.new(0, 10)
Instance.new("UIStroke", vv5_1).Color = Color3.fromRGB(50, 255, 255)
local vv6_1 = Instance.new("UIGradient", vv5_1)
vv6_1.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)),
    ColorSequenceKeypoint.new(0.85, Color3.fromRGB(0, 0, 0)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
}
vv6_1.Rotation = 0
local vv7_1 = Instance.new("TextButton", vv5_1)
vv7_1.Size = UDim2.new(0, 40, 0, 40)
vv7_1.Position = UDim2.new(1, -50, 0, 10)
vv7_1.Text = "✖"
vv7_1.Font = Enum.Font.GothamBold
vv7_1.TextScaled = true
vv7_1.TextColor3 = Color3.fromRGB(0, 255, 255)
vv7_1.BackgroundTransparency = 1
vv7_1.ZIndex = 10
vv7_1.MouseButton1Click:Connect(function()
	vv3_1:Destroy()
end)
local vv8_1 = Instance.new("TextLabel", vv5_1)
vv8_1.Size = UDim2.new(1, -60, 0, 40)
vv8_1.Position = UDim2.new(0, 10, 0, 10)
vv8_1.Text = "Evelynn Hub Loading..."
vv8_1.Font = Enum.Font.GothamBold
vv8_1.TextSize = 24
vv8_1.TextColor3 = Color3.fromRGB(0, 255, 255)
vv8_1.TextXAlignment = Enum.TextXAlignment.Left
vv8_1.BackgroundTransparency = 1
vv8_1.ZIndex = 7
local vv9_1 = Instance.new("TextLabel", vv5_1)
vv9_1.Size = UDim2.new(1, -20, 0, 100)
vv9_1.Position = UDim2.new(0, 10, 0, 60)
vv9_1.TextWrapped = true
vv9_1.Text = "Logging Now Removed!\nJoin our discord for Anti Cheat Bypass!\nLet me know if script gets patched, i will fix it!"
vv9_1.Font = Enum.Font.Gotham
vv9_1.TextSize = 18
vv9_1.TextColor3 = Color3.fromRGB(100, 220, 255)
vv9_1.BackgroundTransparency = 1
vv9_1.TextXAlignment = Enum.TextXAlignment.Left
vv9_1.TextYAlignment = Enum.TextYAlignment.Top
vv9_1.ZIndex = 7
local vv10_1 = Instance.new("TextButton", vv5_1)
vv10_1.Size = UDim2.new(0, 220, 0, 40)
vv10_1.Position = UDim2.new(0.5, -110, 1, -50)
vv10_1.Text = "Copy Discord Link"
vv10_1.Font = Enum.Font.GothamBold
vv10_1.TextSize = 18
vv10_1.TextColor3 = Color3.fromRGB(255, 255, 255)
vv10_1.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
vv10_1.ZIndex = 8
Instance.new("UICorner", vv10_1).CornerRadius = UDim.new(0, 8)
vv10_1.MouseButton1Click:Connect(function()
	if setclipboard then
		setclipboard("https://discord.gg/w7D4W4j27j")
		vv10_1.Text = "Link Copied"
		task.wait(2)
		vv10_1.Text = "Copy Discord Link"
	end
end)
