local plr = game.Players.LocalPlayer
local char = plr.Character
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Shovel Spleef",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   ShowText = "Rayfield", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

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
local legitTab = Window:CreateTab("Legit", 4483362458)
local blatantTab = Window:CreateTab("Blatant", 4483362458)
local blatantTabbreakBlocksValue = false
local blatantTabbreakBlocks = blatantTab:CreateToggle({
   Name = "Break Blocks below you",
   CurrentValue = false,
   Flag = "breakBlocks", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   		blatanttabbreakBlocksValue = Value
   		while blatanttabbreakBlocksValue do
   			local layer1 = workspace.CurrentMap.Floors:FindFirstChild("Layer1") or workspace.CurrentMap.Floors:FindFirstChild("Layer 1")
			local layer2 = workspace.CurrentMap.Floors:FindFirstChild("Layer2") or workspace.CurrentMap.Floors:FindFirstChild("Layer 2")
   			local overlapParams = OverlapParams.new()
			overlapParams:AddToFilter(layer1:GetChildren())
			overlapParams:AddToFilter(layer2:GetChildren())
			overlapParams.FilterType = Enum.RaycastFilterType.Include
			local blocks = workspace:GetPartBoundsInBox(char.HumanoidRootPart.CFrame, Vector3.new(20, 20, 20), overlapParams)
			local function Execute(target)
				local args = {
				    [1] = target
				}
			
				game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Client"):WaitForChild("DestroyFloor"):InvokeServer(unpack(args))
			end
			for i = 1,#blocks do
				Execute(blocks[i])
			end
		end
   end,
})
local blatantTabbaseplate = blatantTab:CreateButton({
   Name = "Add baseplate to each floor",
   Callback = function()
   		local layer1 = workspace.CurrentMap.Floors:FindFirstChild("Layer1") or workspace.CurrentMap.Floors:FindFirstChild("Layer 1")
		local layer2 = workspace.CurrentMap.Floors:FindFirstChild("Layer2") or workspace.CurrentMap.Floors:FindFirstChild("Layer 2")
    	local part = Instance.new("Part")
    	part.Size = Vector3.new(2048, 1, 2048)
    	part.Position = layer1:GetBoundingBox().p
    	part.Transparency = 0.95
    	part.Parent = layer1
      	part.Anchored = true
     	local newclone = part:Clone()
      	newclone.Position = layer2:GetBoundingBox().p
      	newclone.Parent = layer2
   end,
})
