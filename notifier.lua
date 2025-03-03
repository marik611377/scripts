local gui = Instance.new("ScreenGui")
gui.Parent = game:WaitForChild("CoreGui")
gui.Name = "Notifier"

local ts = game:GetService("TweenService")
local ti = TweenInfo.new(0.7)
local ti2 = TweenInfo.new(1)

local function random(length)
    local chars = "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    local final = ""
    for i = 1, length do
        local randomIndex = math.random(1, #chars)
        final = final .. string.sub(chars, randomIndex, randomIndex)
    end
    return final
end

local notifier = {}
local order = {}

local function Update()
    for i,v in pairs(order) do
        print(25 * (i - 1))
        ts:Create(gui[v], ti2, {Position = UDim2.new(0, 0, 0, 25 * (i - 1))}):Play()
    end
end

function notifier.new(text: string, duration: number, color: Color3, textcolor: Color3)
    local id = random(10)
    local notify = Instance.new("TextLabel")
    text = text or "nil"
    duration = duration or 3
    color = color or Color3.new(1, 1, 1)
    textcolor = textcolor or Color3.new(0, 0, 0)
    notify.Size = UDim2.new(1, 0, 0, 25)
    notify.BackgroundColor3 = color
    notify.TextColor3 = textcolor
    notify.Text = text
    notify.TextSize = 20
    notify.AutomaticSize = Enum.AutomaticSize.Y
    notify.Font = Enum.Font.Roboto
    notify.BorderSizePixel = 0
    notify.Name = id
    notify.Parent = gui
    table.insert(order, id)
    Update()
    task.spawn(function()
        task.wait(duration)
        local tween = ts:Create(notify, ti, {
            BackgroundTransparency = 1,
            TextTransparency = 1
        }) 
        tween:Play()
        tween.Completed:Connect(function()
            notify.Parent = nil
            for i,v in pairs(order) do
                if v == id then
                    table.remove(order, i)
                end
            end
            Update()
        end)
    end)
end

function notifier.delete()
    gui:Destory()
end

return notifier
