local gui = Instance.new("ScreenGui")
gui.Parent = game:WaitForChild("CoreGui")

local ts = game:GetService("TweenService")
local ti = TweenInfo.new(1)

local module = {}

function module.new(text: string, duration: number, color: Color3)
    local notify = Instance.new("TextLabel")
    text = text or "nil"
    duration = duration or 3
    color = color or Color3.new(1, 1, 1)
    notify.Size = UDim2.new(1, 0, 0, 25)
    notify.BackgroundColor3 = color
    notify.Text = text
    notify.TextSize = 25
    notify.Parent = gui
    task.spawn(function()
        task.wait(duration)
        local tween = ts:Create(notify, ti, {
                    BackgroundTransparency = 1
                    TextTransparency = 1
        }) 
        tween:Play()
        tween.Completed:Connect(function()
            notify.Parent = nil
        end)
    end)
end

return module
