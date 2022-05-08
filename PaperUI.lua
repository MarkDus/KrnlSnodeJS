local UserInputService = game:GetService("UserInputService")
local library = {}

if game:GetService("CoreGui"):FindFirstChild("ManiUI") then
	game:GetService("CoreGui"):FindFirstChild("ManiUI"):Destroy()
end

function library:CreateWindow()
	local MainUI = Instance.new("ScreenGui")
	local Background = Instance.new("Frame")
	
	local umbraShadow = Instance.new("ImageLabel")
	local penumbraShadow = Instance.new("ImageLabel")
	
	local ambientShadow = Instance.new("ImageLabel")
	local Foreground = Instance.new("Frame")

	local UIListLayout = Instance.new("UIListLayout")
	local TopBar = Instance.new("Frame")
	local UIListLayout_2 = Instance.new("UIListLayout")
	
	MainUI.Name = "MainUI"
	MainUI.Parent = game:GetService("CoreGui")
	
	Background.Name = "Background"
	Background.Parent = MainUI
	Background.BackgroundTransparency = 1.000
	Background.Position = UDim2.new(0.5, 0, 0.5, 0)
	Background.AnchorPoint = Vector2.new(.5,.5)
	Background.Size = UDim2.new(0, 576, 0, 389)
	
	
	
	umbraShadow.Name = "umbraShadow"
	umbraShadow.Parent = Background
	umbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	umbraShadow.BackgroundTransparency = 1.000
	umbraShadow.Position = UDim2.new(0.5, 0, 0.5, 6)
	umbraShadow.Size = UDim2.new(1, 10, 1, 10)
	umbraShadow.Image = "rbxassetid://1316045217"
	umbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	umbraShadow.ImageTransparency = 0.860
	umbraShadow.ScaleType = Enum.ScaleType.Slice
	umbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)
	
	penumbraShadow.Name = "penumbraShadow"
	penumbraShadow.Parent = Background
	penumbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	penumbraShadow.BackgroundTransparency = 1.000
	penumbraShadow.Position = UDim2.new(0.5, 0, 0.5, 6)
	penumbraShadow.Size = UDim2.new(1, 10, 1, 10)
	penumbraShadow.Image = "rbxassetid://1316045217"
	penumbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	penumbraShadow.ImageTransparency = 0.880
	penumbraShadow.ScaleType = Enum.ScaleType.Slice
	penumbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)

	ambientShadow.Name = "ambientShadow"
	ambientShadow.Parent = Background
	ambientShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	ambientShadow.BackgroundTransparency = 1.000
	ambientShadow.Position = UDim2.new(0.5, 0, 0.5, 6)
	ambientShadow.Size = UDim2.new(1, 10, 1, 10)
	ambientShadow.Image = "rbxassetid://1316045217"
	ambientShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	ambientShadow.ImageTransparency = 0.880
	ambientShadow.ScaleType = Enum.ScaleType.Slice
	ambientShadow.SliceCenter = Rect.new(10, 10, 118, 118)
	
	Foreground.Name = "Foreground"
	Foreground.Parent = Background
	Foreground.BackgroundColor3 = Color3.fromRGB(235, 235, 216)
	Foreground.BorderSizePixel = 0
	Foreground.Size = UDim2.new(0, 576, 0, 389)
	
	UIListLayout.Parent = Foreground
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0.100000001, 0)

	TopBar.Name = "TopBar"
	TopBar.Parent = Background
	TopBar.BackgroundColor3 = Color3.fromRGB(235, 235, 216)
	TopBar.BackgroundTransparency = 1.000
	TopBar.BorderSizePixel = 0
	TopBar.Size = UDim2.new(0, 576, 0, 46)
	TopBar.ZIndex = 2
	
	UIListLayout_2.Parent = TopBar
	UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Bottom
	
	

	for i = 1, 10 do
		local Line = Instance.new("Frame")
		Line.Name = "Line"
		Line.Parent = Foreground
		Line.BackgroundColor3 = Color3.fromRGB(132, 218, 235)
		Line.BorderSizePixel = 0
		Line.Size = UDim2.new(0, 576, 0, 4)
	end
	
	return Background
end

function library:CreateSectionParent(Parent, SelectionName)
	local Sections = Instance.new("Frame")
	local Main_2 = Instance.new("Frame")
	local UIListLayout_4 = Instance.new("UIListLayout")
	
	Main_2.Name = "Main"
	Main_2.Parent = Parent
	Main_2.BackgroundColor3 = Color3.fromRGB(235, 235, 216)
	Main_2.BackgroundTransparency = 1.000
	Main_2.BorderSizePixel = 0
	Main_2.Size = UDim2.new(0, 576, 0, 389)
	Main_2.ZIndex = 2
	
	Sections.Name = "Sections"
	Sections.Parent = Main_2
	Sections.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Sections.BackgroundTransparency = 1.000
	Sections.Size = UDim2.new(1, 0, 1, 0)
	
	UIListLayout_4.Parent = Sections
	UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_4.Padding = UDim.new(0, 55)
	
	local UIPadding = Instance.new("UIPadding")
	UIPadding.Parent = Sections
	UIPadding.PaddingTop = UDim.new(0, 60)
	
	return Sections
end

function library:AddTab(UI, Name, TabName)
	local Main = Instance.new("TextButton")
	
	Main.Name = Name
	Main.Parent = UI.TopBar
	Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Main.BackgroundTransparency = 1.000
	Main.Position = UDim2.new(0.326388896, 0, 0.0972393006, 0)
	Main.Size = UDim2.new(0, 200, 0, 38)
	Main.ZIndex = 2
	Main.Font = Enum.Font.PatrickHand
	Main.Text = Name
	Main.TextColor3 = Color3.fromRGB(87, 96, 97)
	Main.TextScaled = true
	Main.TextSize = 14.000
	Main.TextWrapped = true
	
	return library:CreateSectionParent(Main, TabName)
end

function library:CreateSection(Parent, Name)
	local SectionName = Instance.new("TextLabel")
	local TopBar_2 = Instance.new("Frame")
	local UIListLayout_3 = Instance.new("UIListLayout")
	
	SectionName.Name = Name
	SectionName.Parent = Parent
	SectionName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SectionName.BackgroundTransparency = 1.000
	SectionName.Position = UDim2.new(0.408580035, 0, 0.143958867, 0)
	SectionName.Size = UDim2.new(0, 105, 0, 29)
	SectionName.ZIndex = 2
	SectionName.Font = Enum.Font.PatrickHand
	SectionName.Text = Name
	SectionName.TextColor3 = Color3.fromRGB(231, 76, 60)
	SectionName.TextScaled = true
	SectionName.TextSize = 14.000
	SectionName.TextWrapped = true
	
	TopBar_2.Name = "TopBar"
	TopBar_2.Parent = SectionName
	TopBar_2.AnchorPoint = Vector2.new(0.5, 0.5)
	TopBar_2.BackgroundColor3 = Color3.fromRGB(235, 235, 216)
	TopBar_2.BackgroundTransparency = 1.000
	TopBar_2.BorderSizePixel = 0
	TopBar_2.Position = UDim2.new(0.5, 0, 1.69655216, 0)
	TopBar_2.Size = UDim2.new(0, 576, 0, 38)
	TopBar_2.ZIndex = 2
	
	UIListLayout_3.Parent = TopBar_2
	UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Bottom
	
	return TopBar_2
end

function library:CreateButton(Parent, Name, Callback)
	Callback = Callback or function () end

	local TextButton = Instance.new("TextButton")
	TextButton.Parent = Parent
	TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.BackgroundTransparency = 1.000
	TextButton.Position = UDim2.new(0.378472179, 0, 0.231362462, 0)
	TextButton.Size = UDim2.new(0, 138, 0, 38)
	TextButton.ZIndex = 2
	TextButton.RichText = true
	TextButton.Font = Enum.Font.PatrickHand
	TextButton.Text = Name
	TextButton.TextColor3 = Color3.fromRGB(87, 96, 97)
	TextButton.TextScaled = true
	TextButton.TextSize = 14.000
	TextButton.TextWrapped = true

	TextButton.MouseButton1Click:Connect(Callback)

	return TextButton
end

return library
