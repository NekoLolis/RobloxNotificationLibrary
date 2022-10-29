local library = {}
local TS = game:GetService("TweenService")
local tweeninfo = TweenInfo.new(1.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
local tweeninfo2 = TweenInfo.new(1.5, Enum.EasingStyle.Linear, Enum.EasingDirection.In)

function animateOpenClose()
	local frame = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("NekoLolis").Notification
	TS:Create(frame, 1.5, {Position = UDim2.new(0.774, 0,0.778, 0)}):Play()
	wait(5)
	TS:Create(frame, 1.5, {Position = UDim2.new(1.1, 0,0.778, 0)}):Play()
	game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("NekoLolis"):Destroy()
end

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
	Notification.Position = UDim2.new(0.774011314, 0, 0.777777791, 0)
	Notification.Size = UDim2.new(0.225181594, 0, 0.168128654, 0)

	UICorner.CornerRadius = UDim.new(0.0500000007, 0)
	UICorner.Parent = Notification

	BodyText.Name = "BodyText"
	BodyText.Parent = Notification
	BodyText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BodyText.BackgroundTransparency = 1.000
	BodyText.Position = UDim2.new(0.268817216, 0, 0.356521726, 0)
	BodyText.Size = UDim2.new(0.45161289, 0, 0.278260857, 0)
	BodyText.Font = Enum.Font.SourceSansBold
	BodyText.TextColor3 = Color3.fromRGB(213, 213, 213)
	BodyText.TextSize = 33.000

	TitleText.Name = "TitleText"
	TitleText.Parent = Notification
	TitleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TitleText.BackgroundTransparency = 1.000
	TitleText.Position = UDim2.new(0.222222224, 0, 0, 0)
	TitleText.Size = UDim2.new(0.541218638, 0, 0.226086959, 0)
	TitleText.Font = Enum.Font.SourceSansBold
	TitleText.TextColor3 = Color3.fromRGB(213, 213, 213)
	TitleText.TextSize = 26.000

	Images.Name = "Images"
	Images.Parent = Notification

	errorr.Name = "error"
	errorr.Parent = Images
	errorr.BackgroundTransparency = 1.000
	errorr.BorderSizePixel = 0
	errorr.Position = UDim2.new(0.0322580636, 0, 0.0517241396, 0)
	errorr.Size = UDim2.new(0.129032254, 0, 0.313043475, 0)
	errorr.Visible = false
	errorr.Image = "rbxassetid://2777727756"
	errorr.ImageColor3 = Color3.fromRGB(255, 2, 6)
	errorr.ScaleType = Enum.ScaleType.Fit

	success.Name = "success"
	success.Parent = Images
	success.BackgroundTransparency = 1.000
	success.Position = UDim2.new(0.0320000015, 0, 0.0520000011, 0)
	success.Size = UDim2.new(0.129032254, 0, 0.313043475, 0)
	success.Visible = false
	success.Image = "rbxassetid://2790552399"
	success.ScaleType = Enum.ScaleType.Fit

	info.Name = "info"
	info.Parent = Images
	info.BackgroundTransparency = 1.000
	info.Position = UDim2.new(0.0320000015, 0, 0.0520000011, 0)
	info.Size = UDim2.new(0.129032254, 0, 0.313043475, 0)
	info.Visible = false
	info.Image = "rbxassetid://2790676563"
	info.ScaleType = Enum.ScaleType.Fit
	
	if typeOf == "error" then
		errorr.Transparency = 0
	else
		if typeOf == "info" then
			info.Transparency = 0
		else
			if typeOf == "success" then
				success.Transparency = 0
			end
		end
	end
	
	animateOpenClose()
	
	return library
end

return library
