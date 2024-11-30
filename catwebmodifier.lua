local event = game:GetService("Players").LocalPlayer:FindFirstChild("PlayerScripts"):FindFirstChild("main"):FindFirstChild("website"):FindFirstChild("webrenderer"):FindFirstChild("linkNotice")
local redirecttext = game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui"):FindFirstChild("main"):FindFirstChild("UI"):FindFirstChild("redirect"):FindFirstChild("TextLabel")
redirecttext.RichText = true
local function FireEvent(args)
    event:Fire(unpack(args))
end
FireEvent({
    [1] = '<font color="#FF0">CatWebModifier loading</font>';
})
local CatWebModifier = {
    label = {},
    presets = {
        server = "Debugger/Breakpoints/server.png";
        server2x = "Debugger/Breakpoints/server@2x.png";
        client = "Debugger/Breakpoints/client.png";
        client2x = "Debugger/Breakpoints/client@2x.png";
    }
}
local DangerCatwebModifier = {label = {}}
local presets = {
    server = "Debugger/Breakpoints/server.png";
    server2x = "Debugger/Breakpoints/server@2x.png";
    client = "Debugger/Breakpoints/client.png";
    client2x = "Debugger/Breakpoints/client@2x.png";
}
local PlayerGui = game.Players.LocalPlayer.PlayerGui
local function FormatAsset(id, rbxasset)
    local formattedasset = ""
    if rbxasset then
        formattedasset = "rbxasset://textures/" .. id
    else
        formattedasset = "rbxassetid://" .. id
    end
    return formattedasset;
end
local function NewInstance(instancename)
    local instance = Instance.new(instancename)
    return instance
end
local function SetProps(instance, props)
    for i,v in pairs(props) do
        instance[i] = v
    end
    return instance
end
local function V2(x, y)
    local vector = Vector2.new(x, y)
    return vector
end
FireEvent({
    [1] = '<font color="#FF0">CatWebModifier: creating elements</font>';
})
local presetbutton = SetProps(NewInstance("TextButton"), {
    Name = "presetbutton",
    Text = "Test <test>",
    TextXAlignment = "Left",
    Size = UDim2.new(1, 0, 0, 30),
    BackgroundColor3 = Color3.new(0.0901961, 0.0980392, 0.121569),
    TextSize = 16,
    Font = Enum.Font.SourceSans,
    TextColor3 = Color3.new(1, 1, 1)
})
local UIPadding = SetProps(NewInstance("UIPadding"), {
    PaddingLeft = UDim.new(0, 36),
    Parent = presetbutton
})
local UICorner = SetProps(NewInstance("UICorner"), {
    CornerRadius = UDim.new(0, 6),
    Parent = presetbutton
})
local presetimage = SetProps(NewInstance("ImageLabel"), {
    Name = "presetimage",
    BackgroundTransparency = 1,
    AnchorPoint = V2(1, 0.5),
    Size = UDim2.new(0, 20, 0, 20),
    Position = UDim2.new(0, -8, 0.5, 0),
    Parent = presetbutton
})
local presethelpbutton = SetProps(NewInstance("TextButton"), {
    Name = "presethelpbutton",
    BackgroundTransparency = 1,
    Position = UDim2.new(1, 0, 0, 0),
    Size = UDim2.new(0, 60, 1, 0),
    AnchorPoint = Vector2.new(1, 0),
    Text = "",
    Parent = presetbutton
})
local presethelpimage = SetProps(NewInstance("ImageLabel"), {
    AnchorPoint = V2(0.5, 0.5),
    Name = "presethelpimage",
    BackgroundTransparency = 1,
    Image = FormatAsset("3926305904", false),
    ImageRectOffset = V2(924, 164),
    ImageRectSize = V2(36, 36),
    ImageTransparency = 0.3,
    Size = UDim2.new(0, 14, 0, 14),
    Position = UDim2.new(0.5, 0, 0.5, 0),
    Parent = presethelpbutton
})
local presetlabel = SetProps(NewInstance("Frame"), {
    Name = "presetlabel",
    AnchorPoint = V2(0, 0.5),
    Position = UDim2.new(0, 10, 0.5, 0),
    BackgroundTransparency = 1,
    Size = UDim2.new(1, 0, 0, 24)
})
local presetlabelframe2 = SetProps(NewInstance("Frame"), {
    Name = "presetlabelframe2",
    BackgroundTransparency = 0.9,
    BackgroundColor3 = Color3.new(1, 1, 1),
    Size = UDim2.new(1, 0, 0, 1),
    Position = UDim2.new(0, 0, 1, -1),
    Parent = presetlabel
})
local presetlabeltext = SetProps(NewInstance("TextLabel"), {
    Name = "presetlabeltext",
    Size = UDim2.new(1, 0, 0, 24),
    Font = Enum.Font.SourceSans,
    TextSize = 14,
    BackgroundTransparency = 1,
    TextXAlignment = "Left",
    Position = UDim2.new(0, 10, 0, 0),
    TextWrapped = true,
    TextTruncate = "AtEnd",
    TextColor3 = Color3.new(1, 1, 1),
    TextTransparency = 0.1,
    Parent = presetlabel
})
FireEvent({
    [1] = '<font color="#FF0">CatWebModifier: creating functions</font>';
})
function CatWebModifier.label.new(text)
    local holder = PlayerGui.main.UI:GetChildren()
    for i,v in pairs(holder) do
        print("i: " .. tostring(i))
        print("v: " .. tostring(v))
        if v:GetAttribute("webcontent") == true then
            print("success")
            if v:FindFirstChild("modals") then
                for ii,vv in pairs(v.modals:GetChildren()) do
                    local container = vv:WaitForChild("container")
                    local clone = presetlabel:Clone()
                    clone["presetlabeltext"].Text = text
                    clone.Parent = container
                end
            end
        end
    end
end
function CatWebModifier.new(ButtonConfig)
    ButtonConfig.Text = ButtonConfig.Text or ""
    ButtonConfig.Icon = ButtonConfig.Icon or ""
    FireEvent({
        [1] = '<font color="#FF0">CatWebModifier: creating button with args: <br/>Text =' .. ButtonConfig.Text ..' <br/>Icon = ' .. ButtonConfig.Icon .. '  ('.. FormatAsset(ButtonConfig.Icon) .. ') <br/>RBXAsset = ' .. ButtonConfig.RBXAsset' </font>';
    })
    ButtonConfig.RBXAsset = ButtonConfig.RBXAsset or false
    local holder = PlayerGui.main.UI:GetChildren()
    for i,v in pairs(holder) do
        if v:GetAttribute("webcontent") then
            if v:FindFirstChild("modals") then
                for ii,vv in pairs(v.modals:GetChildren()) do
                    local container = vv:WaitForChild("container")
                    local clone = presetbutton:Clone()
                    clone.Text = ButtonConfig.Text
                    clone["presetimage"].Image = FormatAsset(ButtonConfig.Icon, ButtonConfig.RBXAsset)
                    clone.Parent = container
                end
            end
        end
		FireEvent({
				[1] = '<font color="#0F0">CatWebModifier: Created</font>'
		})
		task.spawn(function()
    task.wait(2)
    FireEvent({})
			end)
end)
FireEvent({
    [1] = '<font color="#0F0">CatWebModifier loaded successfully</font>';
})
task.spawn(function()
    task.wait(2)
    FireEvent({})
end)
return CatWebModifier
