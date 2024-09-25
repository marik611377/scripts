-- Currently updated for v2.1.1
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Combat Initation Script (v2.1.1)", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "Fun Stuffz",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section1 = Tab:AddSection({
	Name = "Sword"
})
Section1:AddParagraph("Sword","Parry go BRRR")
Section1:AddButton({
	Name = "Modded Sword",
	Callback = function()
      			game.Players.LocalPlayer.Backpack.Sword:SetAttribute("LungeRate", 0)
			game.Players.LocalPlayer.Backpack.Sword:SetAttribute("Swingrate", 0)
			game.Players.LocalPlayer.Backpack.Sword:SetAttribute("OffhandSwingRate", 0)
  	end    
})
Section1:AddButton({
	Name = "Modded Firebrand",
	Callback = function()
      			game.Players.LocalPlayer.Backpack.Firebrand:SetAttribute("LungeRate", 0)
			game.Players.LocalPlayer.Backpack.Firebrand:SetAttribute("Swingrate", 0)
			game.Players.LocalPlayer.Backpack.Firebrand:SetAttribute("OffhandSwingRate", 0)
			game.Players.LocalPlayer.Backpack.Firebrand:SetAttribute("Windup", 0)
  	end    
})
Section1:AddButton({
	Name = "Modded Katana",
	Callback = function()
      			game.Players.LocalPlayer.Backpack.Katana:SetAttribute("LungeRate", 0)
			game.Players.LocalPlayer.Backpack.Katana:SetAttribute("Swingrate", 0)
			game.Players.LocalPlayer.Backpack.Katana:SetAttribute("OffhandSwingRate", 0)
  	end    
})
local Section2 = Tab:AddSection({
	Name = "Slingshot"
})
Section2:AddParagraph("Slingshot","Spammy!")
Section2:AddButton({
	Name = "Modded Slingshot",
	Callback = function()
      		game.Players.LocalPlayer.Backpack.Slingshot:SetAttribute("Capacity", 10000)
			game.Players.LocalPlayer.Backpack.Slingshot:SetAttribute("ChargeRate", 0)
			game.Players.LocalPlayer.Backpack.Slingshot:SetAttribute("Firerate", 0)
			game.Players.LocalPlayer.Backpack.Slingshot:SetAttribute("Spread", 0)
			game.Players.LocalPlayer.Backpack.Slingshot:SetAttribute("ProjectileSpeed", 2250)
  	end    
})
Section2:AddButton({
	Name = "Modded Flamethrower",
	Callback = function()
      		game.Players.LocalPlayer.Backpack.Flamethrower:SetAttribute("Cooldown", 0)
  	end    
})
local Section3 = Tab:AddSection({
	Name = "Paintball Gun"
})
Section3:AddParagraph("Paintball Gun","Ah, yes! The good ol' ranged guns!")
Section3:AddButton({
	Name = "Modded Paintball Gun",
	Callback = function()
      		game.Players.LocalPlayer.Backpack["Paintball Gun"]:SetAttribute("Firerate", 0)
			game.Players.LocalPlayer.Backpack["Paintball Gun"]:SetAttribute("ProjectileSpeed", 2250)
  	end    
})
Section3:AddButton({
	Name = "Modded BB Gun",
	Callback = function()
      		game.Players.LocalPlayer.Backpack["BB Gun"]:SetAttribute("Firerate", 0)
			game.Players.LocalPlayer.Backpack["BB Gun"]:SetAttribute("MinShots", 2)
			game.Players.LocalPlayer.Backpack["BB Gun"]:SetAttribute("MaxShots", inf)
  	end    
})
Section3:AddButton({
	Name = "Modded Freeze Ray",
	Callback = function()
      		game.Players.LocalPlayer.Backpack["Freeze Ray"]:SetAttribute("Firerate", 0)
			game.Players.LocalPlayer.Backpack["Freeze Ray"]:SetAttribute("ProjectileSpeed", 2250)
			game.Players.LocalPlayer.Backpack["Freeze Ray"]:SetAttribute("ChargeTime", 0)
  	end    
})
local Section4 = Tab:AddSection({
	Name = "Superball"
})
Section4:AddParagraph("Superball","Bounce.")
Section4:AddButton({
	Name = "Modded Ninja Stars",
	Callback = function()
      		game.Players.LocalPlayer.Backpack["Ninja Stars"]:SetAttribute("ThrowRate", 0)
			game.Players.LocalPlayer.Backpack["Ninja Stars"]:SetAttribute("Capacity", 10000000)
			game.Players.LocalPlayer.Backpack["Ninja Stars"]:SetAttribute("ChargeRate", 0)
  	end    
})
Section4:AddParagraph("Rocket Launcher","I will explode you into oblivion!")
Section4:AddButton({
	Name = "Modded Bazooka",
	Callback = function()
      		game.Players.LocalPlayer.Backpack.Bazooka:SetAttribute("ReloadTick", 0)
			game.Players.LocalPlayer.Backpack.Bazooka:SetAttribute("Capacity", 100)
			game.Players.LocalPlayer.Backpack.Bazooka:SetAttribute("PassiveReloadTick", 0)
  	end    
})
local Section5 = Tab:AddSection({
	Name = "Timebomb"
})
Section5:AddParagraph("Timebomb","Chat is this real?")
Section5:AddParagraph("ALERT","Not everything in this category works. Expect buttons to be removed.")
Section5:AddButton({
	Name = "Modded Subspace Tripmine",
	Callback = function()
      		game.Players.LocalPlayer.Backpack["Subspace Tripmine"]:SetAttribute("Cooldown", 0)
  	end    
})
Section5:AddButton({
	Name = "Modded Explosive Pinata",
	Callback = function()
      		game.Players.LocalPlayer.Backpack["Explosive Pinata"]:SetAttribute("Cooldown", 0)
  	end    
})
local Section6 = Tab:AddSection({
	Name = "Trowel"
})
Section6:AddToggle({
	Name = "Frozen Wrench",
	Default = false,
	Callback = function(Value)
		if Value == true then
			game.Players.LocalPlayer.Backpack.Wrench:SetAttribute("TimeScale", 0)
		end
		if Value == false then
			game.Players.LocalPlayer.Backpack.Wrench:SetAttribute("TimeScale", 1)
		end
	end    
})
local Tab2 = Window:MakeTab({
	Name = "Hats",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab2:AddButton({
	Name = "Electric Punk",
	Callback = function()
      		game.Players.LocalPlayer.Backpack.Parent.AccessoryEffects:SetAttribute("Lightning_Chance", 100)
  	end    
})
local Tab3 = Window:MakeTab({
	Name = "Character",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab3:AddButton({
	Name = "Infinite Dashes",
	Callback = function()
      		game.Players.LocalPlayer.Character:SetAttribute("DashRegenTime", 0.05)
			game.Players.LocalPlayer.Character:SetAttribute("DashRegenFury", 0.05)
  	end    
})
Tab3:AddTextbox({
	Name = "Utility Boost Value",
	Default = "2",
	TextDisappear = false,
	Flag = "utilityboostvalue",
	Callback = function(Value)

	end 
})
Tab3:AddButton({
	Name = "Utility Boost",
	Callback = function()
		game.Players.LocalPlayer.Character:SetAttribute("UtilityBoost", OrionLib.Flags["utilityboostvalue"].Value)
  	end    
})
local Tab4 = Window:MakeTab({
	Name = "Info",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab4:AddParagraph("v2.1.1","Updated for")
Tab4:AddParagraph("v1.1 ALPHA","Current version")
Tab4:AddParagraph("marik611277","Made by")
Tab4:AddParagraph("Synapse X Remake","Created firstly in")
Tab4:AddParagraph("Non-GUI script","Inspired by")
Tab4:AddParagraph("discord.gg/HmP63uHfWq","Synapse X Remake Discord")
OrionLib:Init()
