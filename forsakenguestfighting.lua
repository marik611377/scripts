local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Forsaken Guest Fighting",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   ShowText = "Rayfield", -- for mobile users to unhide Rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from emitting warnings when the script has a version mismatch with the interface.

   -- ScriptID = "sid_xxxxxxxxxxxx", -- Your Script ID from developer.sirius.menu — enables analytics, managed keys, and script hosting

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include Discord.gg/. E.g. Discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the Discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique, as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that the system will accept, can be RAW file links (pastebin, github, etc.) or simple strings ("hello", "key22")
   }
})

local Main = Window:CreateTab("Main")

local username = game.Players.LocalPlayer.Name
local LivePlayers = workspace.Players.LivePlayers

local WalkSpeed = 12
local SprintSpeed = 26
local Stamina = 100
local MaxStamina = 100

Main:CreateInput({
   Name = "Walk Speed",
   CurrentValue = "",
   PlaceholderText = "12",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
    WalkSpeed = tonumber(Text) or 12
   end,
})
Main:CreateButton({
   Name = "Set Walk Speed",
   Callback = function()
    LivePlayers[username]:SetAttribute("WalkSpeed", WalkSpeed)
   end,
})
Main:CreateInput({
   Name = "Sprint Speed",
   CurrentValue = "",
   PlaceholderText = "26",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
    SprintSpeed = tonumber(Text) or 26
   end,
})
Main:CreateButton({
   Name = "Set Sprint Speed",
   Callback = function()
    LivePlayers[username]:SetAttribute("SprintSpeed", SprintSpeed)
   end,
})
Main:CreateInput({
   Name = "Stamina",
   CurrentValue = "",
   PlaceholderText = "100",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
    Stamina = tonumber(Text) or 100
   end,
})
Main:CreateButton({
   Name = "Set Stamina",
   Callback = function()
    LivePlayers[username]:SetAttribute("Stamina", Stamina)
   end,
})
Main:CreateButton({
   Name = "Set Stamina to Max",
   Callback = function()
    LivePlayers[username]:SetAttribute("Stamina", LivePlayers[username]:GetAttribute("MaxStamina"))
   end,
})
Main:CreateInput({
   Name = "Max Stamina",
   CurrentValue = "",
   PlaceholderText = "100",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
    MaxStamina = tonumber(Text) or 100
   end,
})
Main:CreateButton({
   Name = "Set Max Stamina",
   Callback = function()
    LivePlayers[username]:SetAttribute("MaxStamina", MaxStamina)
   end,
})

local Buffs = Window:CreateTab("Buffs")

local canAlwaysSprint = false
local removeSlowedStatus
local removeDirectMoveSlowdown = false
local removePacifiedSlowdown = false
local removeBlockSlowdown = false
local removeChargeSlowdown = false
local removePunchSlowdown = false
local removeBeheadSlowdown = false
local removeGashingWoundSlowdown = false
local removeRagingPaceSlowdown = false
local removeVoidRushSlowdown = false
local removeNovaSlowdown = false
local removeObservantSlowdown = false
local removeMedkitSlowdown = false
local removeBloxyColaSlowdown = false
local removeShootSlowdown = false
local removeCrouchSlowdown = false
local removeDodgeSlowdown = false
local removeStabSlowdown = false
local removeSlashSlowdown = false

Buffs:CreateSection("General")
Buffs:CreateLabel("WARNING: Forces remove-slowdown on some moves/is blatant")
Buffs:CreateToggle({
   Name = "Can Always Sprint",
   CurrentValue = false,
   Callback = function(Value)
    canAlwaysSprint = Value
   end,
})
Buffs:CreateToggle({
   Name = "Remove Slowness Effect",
   CurrentValue = false,
   Callback = function(Value)
    removeSlowedStatus = Value
   end,
})
Buffs:CreateToggle({
   Name = "Remove Directional Movement Slowdown",
   CurrentValue = false,
   Callback = function(Value)
    removeDirectMoveSlowdown = Value
   end,
})
Buffs:CreateToggle({
   Name = "Remove Pacified Slowdown",
   CurrentValue = false,
   Callback = function(Value)
    removePacifiedSlowdown = Value
   end,
})
Buffs:CreateSection("Guest")
Buffs:CreateToggle({
   Name = "Remove Block Slowdown",
   CurrentValue = false,
   Callback = function(Value)
    removeBlockSlowdown = Value
   end,
})
Buffs:CreateToggle({
   Name = "Remove Charge Slowdown",
   CurrentValue = false,
   Callback = function(Value)
    removeChargeSlowdown = Value
   end,
})
Buffs:CreateToggle({
   Name = "Remove Punch Slowdown",
   CurrentValue = false,
   Callback = function(Value)
    removePunchSlowdown = Value
   end,
})
Buffs:CreateSection("Slasher")
Buffs:CreateToggle({
   Name = "Remove Behead Slowdown",
   CurrentValue = false,
   Callback = function(Value)
    removeBeheadSlowdown = Value
   end,
})
Buffs:CreateToggle({
   Name = "Remove Gashing Wound Slowdown",
   CurrentValue = false,
   Callback = function(Value)
    removeGashingWoundSlowdown = Value
   end,
})
Buffs:CreateToggle({
   Name = "Remove Raging Pace Slowdown",
   CurrentValue = false,
   Callback = function(Value)
    removeRagingPaceSlowdown = Value
   end,
})
Buffs:CreateSection("Noli")
Buffs:CreateToggle({
   Name = "Remove Void Rush Slowdown",
   CurrentValue = false,
   Callback = function(Value)
    removeVoidRushSlowdown = Value
   end,
})
Buffs:CreateToggle({
   Name = "Remove Nova Slowdown",
   CurrentValue = false,
   Callback = function(Value)
    removeNovaSlowdown = Value
   end,
})
Buffs:CreateToggle({
   Name = "Remove Observant Slowdown",
   CurrentValue = false,
   Callback = function(Value)
    removeObservantSlowdown = Value
   end,
})
Buffs:CreateSection("Items")
Buffs:CreateToggle({
   Name = "Remove Medkit Slowdown",
   CurrentValue = false,
   Callback = function(Value)
    removeMedkitSlowdown = Value
   end,
})
Buffs:CreateToggle({
   Name = "Remove Bloxy Cola Slowdown",
   CurrentValue = false,
   Callback = function(Value)
    removeBloxyColaSlowdown = Value
   end,
})
Buffs:CreateSection("Other Abilities")
Buffs:CreateToggle({
   Name = "Remove Shoot Slowdown",
   CurrentValue = false,
   Callback = function(Value)
    removeShootSlowdown = Value
   end,
})
Buffs:CreateToggle({
   Name = "Remove Crouch Slowdown",
   CurrentValue = false,
   Callback = function(Value)
    removeCrouchSlowdown = Value
   end,
})
Buffs:CreateToggle({
   Name = "Remove Dodge Slowdown",
   CurrentValue = false,
   Callback = function(Value)
    removeDodgeSlowdown = Value
   end,
})
Buffs:CreateToggle({
   Name = "Remove Stab Slowdown",
   CurrentValue = false,
   Callback = function(Value)
    removeStabSlowdown = Value
   end,
})
Buffs:CreateToggle({
   Name = "Remove Slash Slowdown",
   CurrentValue = false,
   Callback = function(Value)
    removeSlashSlowdown = Value
   end,
})

local ESP = Window:CreateTab("ESP")
ESP:CreateButton({
   Name = "Highlight all Items",
   Callback = function()
    for i,v in pairs(workspace.DroppedItems:GetChildren()) do
        if v:FindFirstChild("Highlight") == not nil then
            v.Highlight:Destroy()
        end
        local Highlight = Instance.new("Highlight")
        if v.Name == "Medkit" then
            Highlight.FillColor = Color3.fromRGB(0, 255, 0)
            Highlight.OutlineColor = Color3.fromRGB(0, 255, 0)
        end
        if v.Name == "Bloxy Cola" then
            Highlight.FillColor = Color3.fromRGB(255, 133, 0)
            Highlight.OutlineColor = Color3.fromRGB(255, 133, 0)
        end
        Highlight.Parent = v
    end
   end,
})

ESP:CreateLabel("Medkit: Green, Bloxy Cola: Orange")

ESP:CreateButton({
   Name = "Highlight all Players",
   Callback = function()
    for i,v in pairs(LivePlayers:GetChildren()) do
        if v:FindFirstChild("Highlight") == not nil then
            v.Highlight:Destroy()
        end
        if v:FindFirstChild("CoolSurvivorHighlight") == not nil then
            v.CoolSurvivorHighlight:Destroy()
        end
        task.wait(0.1)
        local Highlight = Instance.new("Highlight")
        Highlight.FillTransparency = 0.75
        Highlight.OutlineTransparency = 0.25
        Highlight.FillColor = Color3.fromRGB(255, 133, 0)
        Highlight.OutlineColor = Color3.fromRGB(255, 133, 0)
        if v:GetAttribute("Team") == "KillerSurvivors" then
            Highlight.FillColor = Color3.fromRGB(255, 255, 0)
            Highlight.OutlineColor = Color3.fromRGB(255, 255, 0)
        end
        if v:GetAttribute("Team") == "Killers" then
            Highlight.FillColor3 = Color3.fromRGB(255, 0, 0)
            Highlight.OutlineColor3 = Color3.fromRGB(255, 0, 0)
        end
        Highlight.Parent = v
    end
   end,
})
ESP:CreateLabel("Survivors: Yellow, Killers: Red, Non-Team: Orange")

local NotPanic = true
local Panic = Window:CreateTab("Panic")
Panic:CreateButton({
   Name = "Destroy Rayfield",
   Callback = function()
    NotPanic = false
    Rayfield:Destroy()
   end,
})

local function FindDelete(name)
   if LivePlayers:FindFirstChild(username):FindFirstChild("SpeedMultipliers"):FindFirstChild(name) then
      LivePlayers:FindFirstChild(username):FindFirstChild("SpeedMultipliers"):FindFirstChild(name):Destroy()
   end
end
local function FindReplace(name, value)
   if LivePlayers:FindFirstChild(username):FindFirstChild("SpeedMultipliers"):FindFirstChild(name) then
      if LivePlayers:FindFirstChild(username):FindFirstChild("SpeedMultipliers"):FindFirstChild(name).Value < 1 then
         LivePlayers:FindFirstChild(username):FindFirstChild("SpeedMultipliers"):FindFirstChild(name).Value = value
      end
   end
end
local function ChangeAttr(name, value)
   LivePlayers:FindFirstChild(username):SetAttribute(name, value)
end

while NotPanic do
    task.wait(0.01)
    if LivePlayers:WaitForChild(username):WaitForChild("Humanoid").Health == 0 then
      game.Players.LocalPlayer.CharacterAdded:Wait()
    end
    -- General
    if canAlwaysSprint then
        ChangeAttr("CannotSprint", nil)
        FindDelete("Punch")
    end
    if removeSlowedStatus then
        FindReplace("SlowedStatus", 1)
    end
    if removeDirectMoveSlowdown then
        FindReplace("DirectionalMovement", 1)
    end
    if removePacifiedSlowdown then
        FindReplace("Pacified", 1)
    end
    -- Guest
    if removeBlockSlowdown then
        FindReplace("Block", 1)
    end
    if removeChargeSlowdown then
        FindReplace("ChargeNerf", 1)
        FindReplace("ChargeEndLagSpeed", 1)
    end
    if removePunchSlowdown then
        FindReplace("Punch", 1)
    end
    -- Slasher
    if removeBeheadSlowdown then
        FindReplace("BeheadAbility", 1)
    end
    if removeGashingWoundSlowdown then
        FindReplace("GashingWound", 1)
    end
    if removeRagingPaceSlowdown then
        FindReplace("ENRAGED", 1)
    end
    -- Noli
    if removeVoidRushSlowdown then
        FindReplace("VoidRushCharging", 1)
        FindReplace("VoidRushEndlag", 1)
    end
    if removeNovaSlowdown then
        FindReplace("NovaWindupSlowness", 1)
    end
    if removeObservantSlowdown then
        FindReplace("NoliObserving", 1)
    end
    -- Items
    if removeMedkitSlowdown then
        FindReplace("Medkit", 1)
    end
    if removeBloxyColaSlowdown then
        FindReplace("BloxyColaItem", 1)
    end
    -- Other Abilities
    if removeShootSlowdown then
        FindReplace("ShootingGun", 1)
    end
    if removeCrouchSlowdown then
        FindReplace("TwoTimeCrouching", 1)
    end
    if removeDodgeSlowdown then
        FindReplace("Dodge", 1)
    end
    if removeStabSlowdown then
        FindReplace("TwoTimeStab", 1)
    end
    if removeSlashSlowdown then
        FindReplace("SlashSpeed", 1)
    end
end
