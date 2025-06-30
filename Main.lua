loadstring(game:HttpGet("https://raw.githubusercontent.com/evelynnscripts/Evelynn-Hub-V9/refs/heads/main/Helpers/v317.lua",true))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/evelynnscripts/Evelynn-Hub-V9/refs/heads/main/Helpers/v782.lua",true))()
-- Settings
_G.TeamCheckHitbox = true
_G.TeamCheckESP = true
_G.HitboxEnabled = false
_G.AutoKill = false
_G.WalkSpeedEnabled = false
_G.CharacterESP = false
_G.WalkSpeedValue = 16
_G.HeadSize = 2
-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local CoreGui = game:GetService("CoreGui")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Evelynn Hub V9",
   Icon = 0,
   LoadingTitle = "Evelynn Hub V9",
   LoadingSubtitle = "Loading...",
   ShowText = "Evelynn Hub",
   Theme = "Ocean",
   ToggleUIKeybind = "p",
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "Version v9"
   }
})
-- Tabs
local v1 = Window:CreateTab("Main", 4483362458)
local v2 = Window:CreateTab("Esp", 4483362458)
local v3 = Window:CreateTab("Autofarm (beta)", 4483362458)
local v4 = Window:CreateTab("Credits", 4483362458)
-- Kill All + Equip Gun Helper
local function killall()
    for _, v in pairs(Players:GetPlayers()) do
        if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("LowerTorso") then
            spawn(function()
                pcall(function()
                    local target = v.Character.LowerTorso
                    local pos1 = Vector3.new(-186.466, 49.75, math.random(-49, 49))
                    local pos2 = Vector3.new(-254.478, 68.999, math.random(-49, 49))
                    local pos3 = Vector3.new(-222.702, 60.865, math.random(-49, 49))
                    ReplicatedStorage.Remotes.Shoot:FireServer(pos1, pos2, target, pos3)
                end)
            end)
        end
    end
end
local function equipgun()
    for _, tool in ipairs(LocalPlayer.Backpack:GetChildren()) do
        if tool:FindFirstChild("Fire") then
            LocalPlayer.Character.Humanoid:EquipTool(tool)
            break
        end
    end
end
-- TOGGLES + BUTTONS + SLIDERS FOR 'Main' TAB
v1:CreateToggle({
    Name = "Enable Hitbox Expander",
    CurrentValue = _G.HitboxEnabled,
    Flag = "HitboxToggle",
    Callback = function(Value)
        _G.HitboxEnabled = Value
        if not Value then
            for _, player in pairs(Players:GetPlayers()) do
                if player ~= LocalPlayer then
                    local char = player.Character
                    local hrp = char and char:FindFirstChild("HumanoidRootPart")
                    if hrp then
                        hrp.Size = Vector3.new(2, 2, 1)
                        if hrp:FindFirstChild("ESPBox") then
                            hrp.ESPBox:Destroy()
                        end
                    end
                end
            end
        end
    end
})
v1:CreateToggle({
    Name = "Enable Walkspeed changer",
    CurrentValue = _G.WalkSpeedEnabled,
    Flag = "WalkSpeedToggle",
    Callback = function(Value)
        _G.WalkSpeedEnabled = Value
        if not Value and Humanoid then
            Humanoid.WalkSpeed = 16
        end
    end
})
v1:CreateSlider({
    Name = "Hitbox Size",
    Range = {1, 100},
    Increment = 1,
    Suffix = "Size",
    CurrentValue = _G.HeadSize,
    Flag = "HitboxSize",
    Callback = function(Value)
        _G.HeadSize = Value
    end
})
v1:CreateSlider({
    Name = "Walkspeed",
    Range = {1, 100},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = _G.WalkSpeedValue,
    Flag = "WalkSpeedValue",
    Callback = function(Value)
        _G.WalkSpeedValue = Value
    end
})
v1:CreateButton({
    Name = "Reboot the Script",
    Callback = function()
        if Rayfield and Rayfield.Destroy then
            pcall(function()
                Rayfield:Destroy()
            end)
         end
        task.wait(1)
        loadstring(game:HttpGet("https://evelynnscripts123.netlify.app/Evelynn-Hub/Private.lua", true))()
    end
})
-- TOGGLES + BUTTONS + SLIDERS FOR 'Esp' TAB
v2:CreateToggle({
    Name = "Esp Charms",
    CurrentValue = _G.CharacterESP,
    Flag = "CharacterESPToggle",
    Callback = function(Value)
        _G.CharacterESP = Value
    end
})
v2:CreateToggle({
       Name = "Esp Team check",
    CurrentValue = _G.TeamCheckESP,
    Flag = "TeamCheckESPToggle",
    Callback = function(Value)
        _G.TeamCheckESP = Value
    end
})
v2:CreateToggle({
    Name = "Hitbox Team check",
    CurrentValue = _G.TeamCheckHitbox,
    Flag = "TeamCheckHitboxToggle",
    Callback = function(Value)
        _G.TeamCheckHitbox = Value
    end
})
-- TOGGLES + BUTTONS + SLIDERS FOR 'Autofarm' TAB
v3:CreateButton({
    Name = "Teleport to 1v1 (Dont use while in match)",
    Callback = function()
        local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        local hrp = character:FindFirstChild("HumanoidRootPart")
        if hrp then
            hrp.CFrame = CFrame.new(32, -114, 57)
        end
    end
})
v3:CreateToggle({
    Name = "Auto Equip Gun",
    CurrentValue = _G.AutoEquipGun or false,
    Flag = "AutoEquipGun",
    Callback = function(Value)
        _G.AutoEquipGun = Value
    end
})
v3:CreateButton({
    Name = "Kill All Players Once",
    Callback = function()
        equipgun()
        task.wait(0.5)
        killall()
    end
})
v3:CreateToggle({
    Name = "Loop Kill All Players",
    CurrentValue = false,
    Flag = "LoopKillAll",
    Callback = function(Value)
        _G.AutoKill = Value
    end
})
-- TOGGLES + BUTTONS + SLIDERS FOR 'Credits' TAB
v4:CreateButton({
   Name = "discord.gg/w7D4W4j27j",
   Callback = function()
   setclipboard("https://discord.gg/w7D4W4j27j")
   print("discord.gg/w7D4W4j27j")
   end,
})
v4:CreateButton({
    Name = "Copy Discord Link",
    Callback = function()
        if setclipboard then
            setclipboard("https://discord.gg/w7D4W4j27j")
        else
            print("discord.gg/w7D4W4j27j")
        end
    end
})
v4:CreateButton({
   Name = "By @EvelynnScripts on Youtube",
   Callback = function()
   print('Made By @EvelynnScripts on Youtube')
   end,
})
-- Utilities, Automation Looping, Anti-AFK, and Beta Auto-Debugging Tools --
local espFolder = CoreGui:FindFirstChild("EVE_CharacterESP") or Instance.new("Folder", CoreGui)
espFolder.Name = "EVE_CharacterESP"
local function updateHighlight(player)
    if player == LocalPlayer then return end
    if _G.TeamCheckESP and player.Team == LocalPlayer.Team then
        local old = espFolder:FindFirstChild(player.Name)
        if old then old:Destroy() end
        return
    end
    local character = player.Character
    if not character then return end
    local highlight = espFolder:FindFirstChild(player.Name)
    if not highlight then
        highlight = Instance.new("Highlight")
        highlight.Name = player.Name
        highlight.FillColor = Color3.fromRGB(0, 255, 100)
        highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
        highlight.FillTransparency = 0.6
        highlight.OutlineTransparency = 0.4
        highlight.Adornee = character
        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        highlight.Parent = espFolder
    else
        highlight.Adornee = character
    end
end
Players.PlayerRemoving:Connect(function(player)
    local esp = espFolder:FindFirstChild(player.Name)
    if esp then esp:Destroy() end
end)
spawn(function()
    while task.wait(1) do
        if _G.CharacterESP then
            for _, player in pairs(Players:GetPlayers()) do
                updateHighlight(player)
            end
        else
            for _, v in ipairs(espFolder:GetChildren()) do
                v:Destroy()
            end
        end
    end
end)
RunService.RenderStepped:Connect(function()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            local character = player.Character
            local humanoid = character and character:FindFirstChild("Humanoid")
            local hrp = character and character:FindFirstChild("HumanoidRootPart")
            if hrp and humanoid then
                local shouldApplyHitbox =
                    _G.HitboxEnabled and (not _G.TeamCheckHitbox or player.Team ~= LocalPlayer.Team)
                if shouldApplyHitbox then
                    hrp.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                    if not hrp:FindFirstChild("ESPBox") then
                        local esp = Instance.new("BoxHandleAdornment")
                        esp.Name = "ESPBox"
                        esp.Adornee = hrp
                        esp.AlwaysOnTop = true
                        esp.ZIndex = 10
                        esp.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                        esp.Color3 = Color3.fromRGB(255, 0, 0)
                        esp.Transparency = 0.75
                        esp.Parent = hrp
                    else
                        hrp.ESPBox.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                    end
                else
                    if hrp:FindFirstChild("ESPBox") then
                        hrp.ESPBox:Destroy()
                    end
                    hrp.Size = Vector3.new(2, 2, 1)
                end
            end
        end
    end
end)
spawn(function()
    while task.wait(1) do
        if Humanoid then
            if _G.WalkSpeedEnabled then
                Humanoid.WalkSpeed = _G.WalkSpeedValue
            elseif Humanoid.WalkSpeed ~= 16 then
                Humanoid.WalkSpeed = 16
            end
        end
    end
end)
spawn(function()
    while task.wait(0.5) do
        if _G.AutoKill then
            equipgun()
            killall()
        end
    end
end)
spawn(function()
    while task.wait(1) do
        if _G.AutoEquipGun and not _G.AutoKill then
            for _, tool in ipairs(LocalPlayer.Backpack:GetChildren()) do
                if tool:FindFirstChild("Fire") then
                    LocalPlayer.Character.Humanoid:EquipTool(tool)
                    break
                end
            end
        end
    end
end)
local VirtualUser = game:GetService("VirtualUser")
Players.LocalPlayer.Idled:Connect(function()
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)
LocalPlayer.CharacterAdded:Connect(function(char)
    Character = char
    Humanoid = char:WaitForChild("Humanoid")
    if _G.WalkSpeedEnabled then
        Humanoid.WalkSpeed = _G.WalkSpeedValue
    end
    if _G.CharacterESP then
        updateHighlight(LocalPlayer)
    end
end)
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        if _G.CharacterESP then
            task.delay(1, function()
                updateHighlight(player)
            end)
        end
    end)
end)
