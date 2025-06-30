local ALERT_v97 = game:GetService("TweenService")
local ALERT_v42 = game:GetService("Players")
local ALERT_v18 = ALERT_v42.LocalPlayer
local ALERT_v61 = ALERT_v18:WaitForChild("PlayerGui")

local function ALERT_v5(callback)
	local ALERT_v33, ALERT_v7 = pcall(callback)
	if not ALERT_v33 then
		warn("v317 Error! Please report this message if you are seeing it!")
	end
	return ALERT_v7
end

local ALERT_v24 = ALERT_v5(function()
	local ALERT_v35 = Instance.new("ScreenGui")
	ALERT_v35.Name = "ALERET"
	ALERT_v35.ResetOnSpawn = false
	ALERT_v35.IgnoreGuiInset = true
	ALERT_v35.Parent = ALERT_v61
	return ALERT_v35
end)

local ALERT_v80 = ALERT_v5(function()
	local ALERT_v50 = Instance.new("Frame")
	ALERT_v50.Size = UDim2.new(0, 400, 0, 220)
	ALERT_v50.Position = UDim2.new(0.5, -200, 0.5, -110)
	ALERT_v50.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	ALERT_v50.BorderSizePixel = 0
	ALERT_v50.AnchorPoint = Vector2.new(0.5, 0.5)
	ALERT_v50.BackgroundTransparency = 1
	ALERT_v50.ClipsDescendants = true
	ALERT_v50.Parent = ALERT_v24
	return ALERT_v50
end)

ALERT_v5(function()
	local ALERT_v96 = Instance.new("UICorner")
	ALERT_v96.CornerRadius = UDim.new(0, 10)
	ALERT_v96.Parent = ALERT_v80
end)

ALERT_v5(function()
	local ALERT_v14 = Instance.new("UIStroke")
	ALERT_v14.Thickness = 2
	ALERT_v14.Color = Color3.fromRGB(76, 0, 255)
	ALERT_v14.Parent = ALERT_v80
end)

ALERT_v5(function()
	local ALERT_v12 = Instance.new("TextLabel")
	ALERT_v12.Size = UDim2.new(1, -20, 0, 40)
	ALERT_v12.Position = UDim2.new(0, 10, 0, 10)
	ALERT_v12.BackgroundTransparency = 1
	ALERT_v12.Text = "⚠️ READ ME ⚠️"
	ALERT_v12.Font = Enum.Font.GothamBold
	ALERT_v12.TextSize = 24
	ALERT_v12.TextColor3 = Color3.fromRGB(255, 255, 255)
	ALERT_v12.TextStrokeTransparency = 0.8
	ALERT_v12.TextXAlignment = Enum.TextXAlignment.Left
	ALERT_v12.Parent = ALERT_v80
end)

ALERT_v5(function()
	local ALERT_v39 = Instance.new("TextLabel")
	ALERT_v39.Size = UDim2.new(1, -20, 0, 100)
	ALERT_v39.Position = UDim2.new(0, 10, 0, 50)
	ALERT_v39.BackgroundTransparency = 1
	ALERT_v39.TextWrapped = true
	ALERT_v39.Text = "Evelynn Hub will load in a few seconds!\nThere have been many issues where the script may not work properly.\nIf that happens, please try rejoining the game or restarting the script.\nThank you for using Evelynn Scripts!"
	ALERT_v39.Font = Enum.Font.Gotham
	ALERT_v39.TextSize = 16
	ALERT_v39.TextColor3 = Color3.fromRGB(255, 255, 255)
	ALERT_v39.TextXAlignment = Enum.TextXAlignment.Left
	ALERT_v39.TextYAlignment = Enum.TextYAlignment.Top
	ALERT_v39.Parent = ALERT_v80
end)

local ALERT_vCountdownLabel = ALERT_v5(function()
	local lbl = Instance.new("TextLabel")
	lbl.Size = UDim2.new(0, 120, 0, 30)
	lbl.Position = UDim2.new(0.5, -60, 1, -35)
	lbl.BackgroundTransparency = 1
	lbl.TextColor3 = Color3.fromRGB(255, 255, 255)
	lbl.Font = Enum.Font.GothamSemibold
	lbl.TextSize = 14
	lbl.Text = "Closing in 12..."
	lbl.Parent = ALERT_v80
	return lbl
end)

ALERT_v5(function()
	ALERT_v97:Create(ALERT_v80, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
		BackgroundTransparency = 0.1
	}):Play()
end)

ALERT_v5(function()
	local seconds = 12
	while seconds > 0 do
		ALERT_vCountdownLabel.Text = "Closing in " .. seconds .. "..."
		task.wait(1)
		seconds -= 1
	end
	ALERT_v97:Create(ALERT_v80, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
		BackgroundTransparency = 1
	}):Play()
	task.wait(1)
	ALERT_v24:Destroy()
end)

print("v317 loaded without any errors")
