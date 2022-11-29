local library = {}
local types = {"error", "success", "info"}

function library:CreateNotification(title, body, typeOf)
	if game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("NekoLolis") then
		game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("NekoLolis"):Destroy()
	end
	
	local NekoLolis = Instance.new("ScreenGui")
	local Notification = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local BodyText = Instance.new("TextLabel")
	local TitleText = Instance.new("TextLabel")
	local Images = Instance.new("Folder")
	local errorr = Instance.new("ImageLabel")
	local success = Instance.new("ImageLabel")
	local info = Instance.new("ImageLabel")

	NekoLolis.Name = "NekoLolis"
	NekoLolis.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	NekoLolis.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Notification.Name = "Notification"
	Notification.Parent = NekoLolis
	Notification.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	Notification.BorderSizePixel = 0
	Notification.Position = UDim2.new(1.1, 0,0.778, 0)
	Notification.Size = UDim2.new(0.225181594, 0, 0.168128654, 0)

	UICorner.CornerRadius = UDim.new(0.0500000007, 0)
	UICorner.Parent = Notification

	BodyText.Name = "BodyText"
	BodyText.Parent = Notification
	BodyText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BodyText.BackgroundTransparency = 1.000
	BodyText.Position = UDim2.new(0.031, 0,0.226, 0)
	BodyText.Size = UDim2.new(0.945, 0,0.687, 0)
	BodyText.Font = Enum.Font.SourceSansBold
	BodyText.TextColor3 = Color3.fromRGB(213, 213, 213)
	BodyText.TextSize = 33.000
	BodyText.TextScaled = true
	BodyText.Text = body

	TitleText.Name = "TitleText"
	TitleText.Parent = Notification
	TitleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TitleText.BackgroundTransparency = 1.000
	TitleText.Position = UDim2.new(0.222222224, 0, 0, 0)
	TitleText.Size = UDim2.new(0.541218638, 0, 0.226086959, 0)
	TitleText.Font = Enum.Font.SourceSansBold
	TitleText.TextColor3 = Color3.fromRGB(213, 213, 213)
	TitleText.TextSize = 26.000
	TitleText.TextScaled = true
	TitleText.Text = title

	Images.Name = "Images"
	Images.Parent = Notification

	errorr.Name = "error"
	errorr.Parent = Images
	errorr.BackgroundTransparency = 1.000
	errorr.BorderSizePixel = 0
	errorr.Position = UDim2.new(0.032, 0,0.052, 0)
	errorr.Size = UDim2.new(0.083, 0,0.235, 0)
	errorr.Visible = false
	errorr.Image = "rbxassetid://2777727756"
	errorr.ImageColor3 = Color3.fromRGB(255, 255, 255)
	errorr.ScaleType = Enum.ScaleType.Fit

	success.Name = "success"
	success.Parent = Images
	success.BackgroundTransparency = 1.000
	success.Position = UDim2.new(0.032, 0,0.052, 0)
	success.Size = UDim2.new(0.09, 0,0.174, 0)
	success.Visible = false
	success.Image = "rbxassetid://2790552399"
	success.ScaleType = Enum.ScaleType.Fit

	info.Name = "info"
	info.Parent = Images
	info.BackgroundTransparency = 1.000
	info.Position = UDim2.new(0.028, 0,0.052, 0)
	info.Size = UDim2.new(0.093, 0,0.174, 0)
	info.Visible = false
	info.Image = "rbxassetid://2790676563"
	info.ScaleType = Enum.ScaleType.Fit
	
	if not table.find(types, typeOf) then
		print("Invalid Type For Notification [info, error, success]")
	else
		Images:FindFirstChild(typeOf).Visible = true
		spawn(function()
            	   local frame = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("NekoLolis").Notification
            	   frame:TweenPosition(UDim2.new(0.774, 0,0.778, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 1.5)
            	   wait(5)
            	   frame:TweenPosition(UDim2.new(1.1, 0,0.778, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 1.5)
            	   wait(1.6)
            	   game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("NekoLolis"):Destroy()
		end)
	end
	
	return library
end

return library
