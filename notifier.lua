local gui = Instance.new("ScreenGui")
gui.Parent = game:WaitForChild("CoreGui")
gui.Name = "Notifier"

local ts = game:GetService("TweenService")
local ti = TweenInfo.new(0.7)

local notifier = {}

function notifier.new(text: string, duration: number, color: Color3, textcolor: Color3)
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
    notify.Font = Enum.Font.Roboto
    notify.BorderSizePixel = 0
    notify.Parent = gui
    task.spawn(function()
        task.wait(duration)
        local tween = ts:Create(notify, ti, {
            BackgroundTransparency = 1,
            TextTransparency = 1
        }) 
        tween:Play()
        tween.Completed:Connect(function()
            notify.Parent = nil
        end)
    end)
end

function notifier.delete()
    gui:Destory()
end

return notifier
