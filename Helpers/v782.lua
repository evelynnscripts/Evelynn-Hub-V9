--[[

Made by Evelynn Scripts
All rights reserved.

Disclaimer:
This script is intended for educational and personal use only.
Please do not use it to violate any game's terms of service or harm other players.
Respect developers and communities to avoid penalties.
Thank you for using Evelynn Scripts responsibly!

]]
local v12349 = game:GetService("Players")
local v23420 = game:GetService("ReplicatedStorage")
local v24365 = game:GetService("RunService")
local v23453 = game:GetService("TweenService")

local v21323 = v12349.LocalPlayer

local v26785 = v23420:FindFirstChild("Shoot") or Instance.new("RemoteEvent")

local function v23422()
	local v23442 = {}
	for _, v27897 in ipairs(v12349:GetPlayers()) do
		if v27897 ~= v21323 and v27897.Character then
			table.insert(v23442, v27897)
		end
	end
	return v23442
end

local function v24646(v45645)
	for _, v34564 in ipairs(v45645) do
		local v45646 = v34564.Character
		if v45646 then
			local v32342 = v45646:FindFirstChild("Humanoid")
			local v34323 = v45646:FindFirstChild("Head")
			if v32342 and v34323 then
				local v34234 = {
					["Player"] = v34564,
					["Damage"] = math.huge,
					["Effect"] = "KillEffect"
				}
				local v34235 = tostring(math.random(100000, 999999)) .. "_ex"
				local v34236 = v34234
			end
		end
	end
end

local function v32342()
	local v32433 = v21323:FindFirstChild("Hitbox")
	if v32433 then
		v32433:Destroy()
	end
end

local function v32344()
	v32342()
	local v42432 = v23422()
	v24646(v42432)
end

v32344()
