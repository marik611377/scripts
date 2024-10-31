local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Combat Initation Script (v2.1.2)", HidePremium = false, SaveConfig = true, ConfigFolder = "CombatInitationConfig"})

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
Section1:AddToggle({
	Name = "Modded Sword",
	Default = false,
	Save = true,
	Flag = "Sword",
	Callback = function(Value)
		while Value do
			task.wait(0.5)
			modifyToolAttributes("Sword", {
				LungeRate = 0,
				Swingrate = 0,
				OffhandSwingRate = 0
			})
		end
	end
})

-- Button for Modded Firebrand
Section1:AddToggle({
	Name = "Modded Firebrand",
	Default = false,
	Save = true,
	Flag = "Firebrand",
	Callback = function()
		while Value do
			task.wait(0.5)
		    modifyToolAttributes("Firebrand", {
			    LungeRate = 0,
			    Swingrate = 0,
			    OffhandSwingRate = 0,
			    Windup = 0
		    })
		end
	end
})

-- Button for Modded Katana
Section1:AddToggle({
	Name = "Modded Katana",
	Default = false,
	Save = true,
	Flag = "Katana",
	Callback = function(Value)
		while Value do
			task.wait(0.5)
		    modifyToolAttributes("Katana", {
			    LungeRate = 0,
			    Swingrate = 0,
			    OffhandSwingRate = 0
		    })
		end
	end
})

local Section2 = Tab:AddSection({ Name = "Slingshot" })
Section2:AddParagraph("Slingshot", "Spammy!")

-- Button for Modded Slingshot
Section2:AddToggle({
	Name = "Modded Slingshot",
	Default = false,
	Save = true,
	Flag = "Slingshot",
	Callback = function()
		while Value do
			task.wait(0.5)
		    modifyToolAttributes("Slingshot", {
			    Capacity = 10000,
			    ChargeRate = 0,
			    Firerate = 0,
			    Spread = 0,
			    ProjectileSpeed = 2250
		    })
		end
	end
})

-- Button for Modded Flamethrower
Section2:AddToggle({
	Name = "Modded Flamethrower",
	Default = false,
	Save = true,
	Flag = "Flamethrower",
	Callback = function(Value)
        while Value do
			task.wait(0.5)
		    modifyToolAttributes("Flamethrower", {
			    Cooldown = 0
		    })
        end
	end
})

local Section3 = Tab:AddSection({ Name = "Paintball Gun" })
Section3:AddParagraph("Paintball Gun", "Ah, yes! The good ol' ranged guns!")

-- Button for Modded Paintball Gun
Section3:AddToggle({
	Name = "Modded Paintball Gun",
	Default = false,
	Save = true,
	Flag = "Paintball_Gun",
	Callback = function()
        while Value do
			task.wait(0.5)
		    modifyToolAttributes("Paintball Gun", {
			    Firerate = 0,
			    ProjectileSpeed = 2250
		    })
        end
	end
})

-- Button for Modded BB Gun
Section3:AddToggle({
	Name = "Modded BB Gun",
	Default = false,
	Save = true,
	Flag = "BB_Gun",
	Callback = function(Value)
        while Value do
			task.wait(0.5)
		    modifyToolAttributes("BB Gun", {
			    Firerate = 0,
			    MinShots = 2,
			    MaxShots = math.huge -- Use `math.huge` for infinite value
		    })
        end
	end
})

-- Button for Modded Freeze Ray
Section3:AddToggle({
	Name = "Modded Freeze Ray (Always Charged)",
	Default = false,
	Save = true,
	Flag = "Freeze_Ray",
	Callback = function()
        while Value do
			task.wait(0.5)
		    modifyToolAttributes("Freeze Ray", {
			    Firerate = 0,
			    ProjectileSpeed = 2250,
			    ChargeTime = 0
		    })
        end
	end
})
Section3:AddToggle({
	Name = "Modded Freeze Ray (Hold to Charge)",
	Default = false,
	Save = true,
	Flag = "Freeze_RayCharge",
	Callback = function(Value)
        while Value do
			task.wait(0.5)
		    modifyToolAttributes("Freeze Ray", {
			    Firerate = 0,
			    ProjectileSpeed = 2250,
		    })
        end
	end
})

local Section4 = Tab:AddSection({ Name = "Superball" })
Section4:AddParagraph("Superball", "Bounce.")

-- Button for Modded Ninja Stars
Section4:AddToggle({
	Name = "Modded Ninja Stars",
	Default = false,
	Save = true,
	Flag = "Ninja_Stars",
	Callback = function(Value)
        while Value do
			task.wait(0.5)
		    modifyToolAttributes("Ninja Stars", {
			    ThrowRate = 0,
			    Capacity = 10000000,
			    ChargeRate = 0
		    })
        end
	end
})

-- Button for Modded Bazooka
Section4:AddToggle({
	Name = "Modded Bazooka",
	Default = false,
	Save = true,
	Flag = "Bazooka",
	Callback = function(Value)
        while Value do
			task.wait(0.5)
		    modifyToolAttributes("Bazooka", {
			    ReloadTick = 0,
			    Capacity = 100,
			    PassiveReloadTick = 0
		    })
        end
	end
})

local Section5 = Tab:AddSection({ Name = "Timebomb" })
Section5:AddParagraph("Timebomb", "Chat is this real?")

-- Button for Modded Subspace Tripmine
Section5:AddToggle({
	Name = "Modded Subspace Tripmine",
	Default = false,
	Save = true,
	Flag = "Subspace_Tripmine",
	Callback = function(Value)
        while Value do
			task.wait(0.5)
		    modifyToolAttributes("Subspace Tripmine", {
			    Cooldown = 0
		    })
        end
	end
})

-- Button for Modded Explosive Pinata
Section5:AddToggle({
	Name = "Modded Explosive Pinata",
	Default = false,
	Save = true,
	Flag = "Explosive_Pinata",
	Callback = function(Value)
        while Value do
			task.wait(0.5)
		    modifyToolAttributes("Explosive Pinata", {
			    Cooldown = 0
		    })
        end
	end
})

local Section6 = Tab:AddSection({ Name = "Trowel" })

-- Toggle for Frozen Wrench
Section6:AddToggle({
	Name = "Frozen Wrench",
	Default = false,
	Save = true,
	Flag = "Wrench",
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
	Name = "Electric Punk (Lighting Chance)",
	Callback = function()
		local accessoryEffects = game.Players.LocalPlayer.Backpack.Parent:FindFirstChild("AccessoryEffects")
		if accessoryEffects then
			accessoryEffects:SetAttribute("Lightning_Chance", 100)
		else
			print("AccessoryEffects not found.")
		end
	end
})

Tab2:AddTextbox({
	Name = "Melee Range (5 = +500%)",
	Default = "5",
	TextDisappear = false,
	Flag = "meleerangevalue",
	Callback = function(Value)
		OrionLib.Flags["meleerangevalue"] = { Value = Value }
	end	  
})

Tab2:AddTextbox({
	Name = "Pogo Range (5 = +500%)",
	Default = "5",
	TextDisappear = false,
	Flag = "pogorangevalue",
	Callback = function(Value)
		OrionLib.Flags["pogorangevalue"] = { Value = Value }
	end	  
})

Tab2:AddButton({
	Name = "Bandit/Stage Prop (Melee Range & Pogo Range)",
	Callback = function()
		local accessoryEffects = game.Players.LocalPlayer.Backpack.Parent:FindFirstChild("AccessoryEffects")
		if accessoryEffects then
			accessoryEffects:SetAttribute("Melee_Range", OrionLib.Flags["meleerangevalue"].Value)
			accessoryEffects:SetAttribute("Pogo_Range", OrionLib.Flags["pogorangevalue"].Value)
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
Tab4:AddParagraph("v2.1.2", "Updated for")
Tab4:AddParagraph("v1.4 ALPHA", "Current version")
Tab4:AddParagraph("marik611277", "Made by")
Tab4:AddParagraph("Synapse X Remake", "Created firstly in")
Tab4:AddParagraph("Non-GUI script", "Inspired by")
Tab4:AddParagraph("discord.gg/HmP63uHfWq", "Synapse X Remake Discord")

OrionLib:Init()
