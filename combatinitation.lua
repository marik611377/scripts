local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Combat Initation Script (v2.1.2)",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

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

local Tab = Window:CreateTab("Fun Stuffz", 0)

local Tab = Tab:CreateSection("Sword")
Tab:CreateParagraph({Name = "Sword", Content = "Parry go BRRR"})

-- Button for Modded Sword
Tab:CreateToggle({
	Name = "Modded Sword",
	Default = false,
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
Tab:CreateToggle({
	Name = "Modded Firebrand",
	Default = false,
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
Tab:CreateToggle({
	Name = "Modded Katana",
	Default = false,
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

local Tab = Tab:CreateSection("Slingshot")
Tab:CreateParagraph({Name = "Slingshot", Content = "Spammy!"})

-- Button for Modded Slingshot
Tab:CreateToggle({
	Name = "Modded Slingshot",
	Default = false,
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
Tab:CreateToggle({
	Name = "Modded Flamethrower",
	Default = false,
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

local Tab = Tab:CreateSection("Paintball Gun")
Tab:CreateParagraph({Name = "Paintball Gun", Content = "Ah, yes! The good ol' ranged guns!"})

-- Button for Modded Paintball Gun
Tab:CreateToggle({
	Name = "Modded Paintball Gun",
	Default = false,
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
Tab:CreateToggle({
	Name = "Modded BB Gun",
	Default = false,
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
Tab:CreateToggle({
	Name = "Modded Freeze Ray (Always Charged)",
	Default = false,
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
Tab:CreateToggle({
	Name = "Modded Freeze Ray (Hold to Charge)",
	Default = false,
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

local Tab = Tab:CreateSection("Superball")
Tab:CreateParagraph({Name = "Superball", Content = "Bounce."})

-- Button for Modded Ninja Stars
Tab:CreateToggle({
	Name = "Modded Ninja Stars",
	Default = false,
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
Tab:CreateToggle({
	Name = "Modded Bazooka",
	Default = false,
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

local Tab = Tab:CreateSection("Timebomb")
Tab:CreateParagraph({Name = "Timebomb", Content = "Chat is this real?"})

-- Button for Modded Subspace Tripmine
Tab:CreateToggle({
	Name = "Modded Subspace Tripmine",
	Default = false,
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
Tab:CreateToggle({
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

local Tab = Tab:CreateSection("Trowel")
Tab:CreateParagraph({Name = "Trowel", Content = "Hey look guys! I'm a Builder Man!"})

-- Toggle for Frozen Wrench
Tab:CreateToggle({
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
local Tab2 = Window:CreateTab("Hats", 0)

-- Button for Electric Punk
Tab2:CreateButton({
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

Tab2:CreateInput({
	Name = "Melee Range (5 = +500%)",
	CurrentValue = "5",
	RemoveTextAfterFocusLost = false,
	Flag = "meleerangevalue",
	Callback = function(Value)
		OrionLib.Flags["meleerangevalue"] = { Value = Value }
	end	  
})

Tab2:CreateInput({
	Name = "Pogo Range (5 = +500%)",
	Default = "5",
	RemoveTextAfterFocusLost = false,
	Flag = "pogorangevalue",
	Callback = function(Value)
		OrionLib.Flags["pogorangevalue"] = { Value = Value }
	end	  
})

Tab2:CreateButton({
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
local Tab3 = Window:CreateTab("Character")

-- Button for Infinite Dashes
Tab3:CreateButton({
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
Tab3:CreateInput({
	Name = "Utility Boost Value",
	CurrentValue = "2",
	RemoveTextAfterFocusLost = false,
	Flag = "utilityboostvalue",
	Callback = function(Value)
		OrionLib.Flags["utilityboostvalue"] = { Value = Value }
	end
})

Tab3:CreateButton({
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
local Tab4 = Window:MakeTab("Information", 0)
Tab4:CreateParagraph({Name = "v2.1.2", Content = "Updated for"})
Tab4:CreateParagraph({Name = "v1.4 ALPHA", Content = "Current version"})
Tab4:CreateParagraph({Name = "marik611277", Content = "Made by"})
Tab4:CreateParagraph({Name = "Synapse X Remake", Content = "Created firstly in"})
Tab4:CreateParagraph({Name = "Non-GUI script", Content = "Inspired by"})
Tab4:CreateParagraph({Name = "discord.gg/HmP63uHfWq", Content = "Synapse X Remake Discord"})

OrionLib:Init()
