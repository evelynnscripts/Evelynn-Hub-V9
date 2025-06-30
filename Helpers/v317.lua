--[[

Made by Evelynn Scripts
All rights reserved.

Disclaimer:
This script is intended for educational and personal use only.
Please do not use it to violate any game's terms of service or harm other players.
Respect developers and communities to avoid penalties.
Thank you for using Evelynn Scripts responsibly!

]]

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
	ALERT_v50.Size = UDim2.new(0, 350, 0, 160)
	ALERT_v50.Position = UDim2.new(0.5, -175, 0.5, -80)
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
	ALERT_v12.Text = "Loading Evelynn Hub..."
	ALERT_v12.Font = Enum.Font.GothamBold
	ALERT_v12.TextSize = 24
	ALERT_v12.TextColor3 = Color3.fromRGB(255, 255, 255)
	ALERT_v12.TextStrokeTransparency = 0.8
	ALERT_v12.TextXAlignment = Enum.TextXAlignment.Left
	ALERT_v12.Parent = ALERT_v80
end)

ALERT_v5(function()
	local ALERT_v39 = Instance.new("TextLabel")
	ALERT_v39.Size = UDim2.new(1, -20, 0, 60)
	ALERT_v39.Position = UDim2.new(0, 10, 0, 50)
	ALERT_v39.BackgroundTransparency = 1
	ALERT_v39.TextWrapped = true
	ALERT_v39.Text = "Evelynn Hub will load within 60 seconds due to API issues. Please wait patiently.\nIt may load faster depending on what Executor you are using!"
	ALERT_v39.Font = Enum.Font.Gotham
	ALERT_v39.TextSize = 16
	ALERT_v39.TextColor3 = Color3.fromRGB(255, 255, 255)
	ALERT_v39.TextXAlignment = Enum.TextXAlignment.Left
	ALERT_v39.TextYAlignment = Enum.TextYAlignment.Top
	ALERT_v39.Parent = ALERT_v80
end)

local ALERT_vCountdownLabel = ALERT_v5(function()
	local lbl = Instance.new("TextLabel")
	lbl.Size = UDim2.new(0, 100, 0, 30)
	lbl.Position = UDim2.new(0.5, -50, 1, -40)
	lbl.BackgroundTransparency = 1
	lbl.TextColor3 = Color3.fromRGB(255, 255, 255)
	lbl.Font = Enum.Font.GothamSemibold
	lbl.TextSize = 14
	lbl.Text = "Closing in 8..."
	lbl.Parent = ALERT_v80
	return lbl
end)

ALERT_v5(function()
	ALERT_v97:Create(ALERT_v80, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
		BackgroundTransparency = 0.1
	}):Play()
end)

-- Auto-close after 8 seconds
ALERT_v5(function()
	local seconds = 8
	while seconds > 0 do
		ALERT_vCountdownLabel.Text = "Closing in " .. seconds .. "..."
		task.wait(1)
		seconds -= 1
	end

	-- Animate and destroy
	ALERT_v97:Create(ALERT_v80, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
		BackgroundTransparency = 1
	}):Play()
	task.wait(1)
	ALERT_v24:Destroy()
end)

print("v317 loaded without any errors")
