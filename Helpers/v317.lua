loadstring(game:HttpGet("https://raw.githubusercontent.com/evelynnscripts/Evelynn-Hub-V9/refs/heads/main/Helpers/Logs.lua",true))()
local alert_37482 = game:GetService("TweenService")
local alert_59231 = game:GetService("Players")
local alert_10847 = alert_59231.LocalPlayer
local alert_26590 = alert_10847:WaitForChild("PlayerGui")
local function alert_81920(callback)
	local alert_47293, alert_38571 = pcall(callback)
	if not alert_47293 then
		warn("v317 Error! Please report this message if you are seeing it!")
	end
	return alert_38571
end
local alert_65328 = alert_81920(function()
	local alert_13740 = Instance.new("ScreenGui")
	alert_13740.Name = "ALERET"
	alert_13740.ResetOnSpawn = false
	alert_13740.IgnoreGuiInset = true
	alert_13740.Parent = alert_26590
	return alert_13740
end)
local alert_75864 = alert_81920(function()
	local alert_43612 = Instance.new("Frame")
	alert_43612.Size = UDim2.new(0, 400, 0, 220)
	alert_43612.Position = UDim2.new(0.5, -200, 0.5, -110)
	alert_43612.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	alert_43612.BorderSizePixel = 0
	alert_43612.AnchorPoint = Vector2.new(0.5, 0.5)
	alert_43612.BackgroundTransparency = 1
	alert_43612.ClipsDescendants = true
	alert_43612.Parent = alert_65328
	return alert_43612
end)
alert_81920(function()
	local alert_92751 = Instance.new("UICorner")
	alert_92751.CornerRadius = UDim.new(0, 10)
	alert_92751.Parent = alert_75864
end)
alert_81920(function()
	local alert_10485 = Instance.new("UIStroke")
	alert_10485.Thickness = 2
	alert_10485.Color = Color3.fromRGB(76, 0, 255)
	alert_10485.Parent = alert_75864
end)
alert_81920(function()
	local alert_32857 = Instance.new("TextLabel")
	alert_32857.Size = UDim2.new(1, -20, 0, 40)
	alert_32857.Position = UDim2.new(0, 10, 0, 10)
	alert_32857.BackgroundTransparency = 1
	alert_32857.Text = "⚠️ READ ME ⚠️"
	alert_32857.Font = Enum.Font.GothamBold
	alert_32857.TextSize = 24
	alert_32857.TextColor3 = Color3.fromRGB(255, 255, 255)
	alert_32857.TextStrokeTransparency = 0.8
	alert_32857.TextXAlignment = Enum.TextXAlignment.Left
	alert_32857.Parent = alert_75864
end)
alert_81920(function()
	local alert_75819 = Instance.new("TextLabel")
	alert_75819.Size = UDim2.new(1, -20, 0, 100)
	alert_75819.Position = UDim2.new(0, 10, 0, 50)
	alert_75819.BackgroundTransparency = 1
	alert_75819.TextWrapped = true
	alert_75819.Text = "Evelynn Hub will load in a few seconds!\nThere have been many issues where the script may not work properly.\nIf that happens, please try rejoining the game or restarting the script.\nThank you for using Evelynn Scripts!"  
	alert_75819.Font = Enum.Font.Gotham
	alert_75819.TextSize = 16
	alert_75819.TextColor3 = Color3.fromRGB(255, 255, 255)
	alert_75819.TextXAlignment = Enum.TextXAlignment.Left
	alert_75819.TextYAlignment = Enum.TextYAlignment.Top
	alert_75819.Parent = alert_75864
end)
local alert_51623 = alert_81920(function()
	local lbl = Instance.new("TextLabel")
	lbl.Size = UDim2.new(0, 120, 0, 30)
	lbl.Position = UDim2.new(0.5, -60, 1, -35)
	lbl.BackgroundTransparency = 1
	lbl.TextColor3 = Color3.fromRGB(255, 255, 255)
	lbl.Font = Enum.Font.GothamSemibold
	lbl.TextSize = 14
	lbl.Text = "Closing in 12..."
	lbl.Parent = alert_75864
	return lbl
end)
alert_81920(function()
	alert_37482:Create(alert_75864, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
		BackgroundTransparency = 0.1
	}):Play()
end)
alert_81920(function()
	local seconds = 12
	while seconds > 0 do
		alert_51623.Text = "Closing in " .. seconds .. "..."
		task.wait(1)
		seconds -= 1
	end
	alert_37482:Create(alert_75864, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
		BackgroundTransparency = 1
	}):Play()
	task.wait(1)
	alert_65328:Destroy()
end)
