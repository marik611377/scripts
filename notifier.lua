local gui = Instance.new("ScreenGui")
gui.Parent = game:WaitForChild("CoreGui")

local ts = game:GetService("TweenService")
local ti = TweenInfo.new(1)

local module = {}

function module.new(text: string, color: Color3, duration: number)
    local notify = Instance.new("TextLabel")
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
