local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Combat Initation Script (v2.1.1)", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

-- Function to modify tool attributes safely (check both Backpack and equipped tools)
local function modifyToolAttributes(toolName, attributes)
    local player = game.Players.LocalPlayer
    local tool = player.Backpack:FindFirstChild(toolName) or player.Character:FindFirstChild(toolName)

    if tool then
        for attribute, value in pairs(attributes) do
            tool:SetAttribute(attribute, value)
        end
        print(toolName .. " attributes have been set.")
    else
        print(toolName .. " not found in the Backpack or equipped.")
    end
end

local Tab = Window:MakeTab({
	Name = "Fun Stuffz",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section1 = Tab:AddSection({ Name = "Sword" })
Section1:AddParagraph("Sword", "Parry go BRRR")

-- Button for Modded Sword
Section1:AddButton({
	Name = "Modded Sword",
	Callback = function()
		modifyToolAttributes("Sword", {
			LungeRate = 0,
			Swingrate = 0,
			OffhandSwingRate = 0
		})
	end
})

-- Button for Modded Firebrand
Section1:AddButton({
	Name = "Modded Firebrand",
	Callback = function()
		modifyToolAttributes("Firebrand", {
			LungeRate = 0,
			Swingrate = 0,
			OffhandSwingRate = 0,
			Windup = 0
		})
	end
})

-- Button for Modded Katana
Section1:AddButton({
	Name = "Modded Katana",
	Callback = function()
		modifyToolAttributes("Katana", {
			LungeRate = 0,
			Swingrate = 0,
			OffhandSwingRate = 0
		})
	end
})

local Section2 = Tab:AddSection({ Name = "Slingshot" })
Section2:AddParagraph("Slingshot", "Spammy!")

-- Button for Modded Slingshot
Section2:AddButton({
	Name = "Modded Slingshot",
	Callback = function()
		modifyToolAttributes("Slingshot", {
			Capacity = 10000,
			ChargeRate = 0,
			Firerate = 0,
			Spread = 0,
			ProjectileSpeed = 2250
		})
	end
})

-- Button for Modded Flamethrower
Section2:AddButton({
	Name = "Modded Flamethrower",
	Callback = function()
		modifyToolAttributes("Flamethrower", {
			Cooldown = 0
		})
	end
})

local Section3 = Tab:AddSection({ Name = "Paintball Gun" })
Section3:AddParagraph("Paintball Gun", "Ah, yes! The good ol' ranged guns!")

-- Button for Modded Paintball Gun
Section3:AddButton({
	Name = "Modded Paintball Gun",
	Callback = function()
		modifyToolAttributes("Paintball Gun", {
			Firerate = 0,
			ProjectileSpeed = 2250
		})
	end
})

-- Button for Modded BB Gun
Section3:AddButton({
	Name = "Modded BB Gun",
	Callback = function()
		modifyToolAttributes("BB Gun", {
			Firerate = 0,
			MinShots = 2,
			MaxShots = math.huge -- Use `math.huge` for infinite value
		})
	end
})

-- Button for Modded Freeze Ray
Section3:AddButton({
	Name = "Modded Freeze Ray",
	Callback = function()
		modifyToolAttributes("Freeze Ray", {
			Firerate = 0,
			ProjectileSpeed = 2250,
			ChargeTime = 0
		})
	end
})

local Section4 = Tab:AddSection({ Name = "Superball" })
Section4:AddParagraph("Superball", "Bounce.")

-- Button for Modded Ninja Stars
Section4:AddButton({
	Name = "Modded Ninja Stars",
	Callback = function()
		modifyToolAttributes("Ninja Stars", {
			ThrowRate = 0,
			Capacity = 10000000,
			ChargeRate = 0
		})
	end
})

-- Button for Modded Bazooka
Section4:AddButton({
	Name = "Modded Bazooka",
	Callback = function()
		modifyToolAttributes("Bazooka", {
			ReloadTick = 0,
			Capacity = 100,
			PassiveReloadTick = 0
		})
	end
})

local Section5 = Tab:AddSection({ Name = "Timebomb" })
Section5:AddParagraph("Timebomb", "Chat is this real?")

-- Button for Modded Subspace Tripmine
Section5:AddButton({
	Name = "Modded Subspace Tripmine",
	Callback = function()
		modifyToolAttributes("Subspace Tripmine", {
			Cooldown = 0
		})
	end
})

-- Button for Modded Explosive Pinata
Section5:AddButton({
	Name = "Modded Explosive Pinata",
	Callback = function()
		modifyToolAttributes("Explosive Pinata", {
			Cooldown = 0
		})
	end
})

local Section6 = Tab:AddSection({ Name = "Trowel" })

-- Toggle for Frozen Wrench
Section6:AddToggle({
	Name = "Frozen Wrench",
	Default = false,
	Callback = function(Value)
		local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Wrench") or game.Players.LocalPlayer.Character:FindFirstChild("Wrench")
		if tool then
			tool:SetAttribute("TimeScale", Value and 0 or 1)
		else
			print("Wrench not found in the Backpack or equipped.")
		end
	end
})

-- Hats Tab
local Tab2 = Window:MakeTab({
	Name = "Hats",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Button for Electric Punk
Tab2:AddButton({
	Name = "Electric Punk",
	Callback = function()
		local accessoryEffects = game.Players.LocalPlayer.Backpack.Parent:FindFirstChild("AccessoryEffects")
		if accessoryEffects then
			accessoryEffects:SetAttribute("Lightning_Chance", 100)
		else
			print("AccessoryEffects not found.")
		end
	end
})

-- Character Tab
local Tab3 = Window:MakeTab({
	Name = "Character",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Button for Infinite Dashes
Tab3:AddButton({
	Name = "Infinite Dashes",
	Callback = function()
		local character = game.Players.LocalPlayer.Character
		if character then
			character:SetAttribute("DashRegenTime", 0.05)
			character:SetAttribute("DashRegenFury", 0.05)
		else
			print("Character not found.")
		end
	end
})

-- Utility Boost Textbox and Button
Tab3:AddTextbox({
	Name = "Utility Boost Value",
	Default = "2",
	TextDisappear = false,
	Flag = "utilityboostvalue",
	Callback = function(Value)
		OrionLib.Flags["utilityboostvalue"] = { Value = Value }
	end
})

Tab3:AddButton({
	Name = "Utility Boost",
	Callback = function()
		local character = game.Players.LocalPlayer.Character
		if character then
			character:SetAttribute("UtilityBoost", OrionLib.Flags["utilityboostvalue"].Value)
		else
			print("Character not found.")
		end
	end
})

-- Info Tab
local Tab4 = Window:MakeTab({
	Name = "Info",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab4:AddParagraph("v2.1.1", "Updated for")
Tab4:AddParagraph("v1.3 ALPHA", "Current version")
Tab4:AddParagraph("marik611277", "Made by")
Tab4:AddParagraph("Synapse X Remake", "Created firstly in")
Tab4:AddParagraph("Non-GUI script", "Inspired by")
Tab4:AddParagraph("discord.gg/HmP63uHfWq", "Synapse X Remake Discord")

OrionLib:Init()
