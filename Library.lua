local Library = {}
local UIS = game:GetService("UserInputService")

function Library:CreateWindow(name)
	local PluronID = Instance.new("ScreenGui")
	local DragPart = Instance.new("Frame")
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Area = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local Panels = Instance.new("Folder")
	local Exit = Instance.new("TextButton")
	local UICorner_7 = Instance.new("UICorner")
	local Minimize = Instance.new("TextButton")
	local UICorner_8 = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	local Pattern = Instance.new("ImageLabel")
	local UICorner_9 = Instance.new("UICorner")
	local TabFrame = Instance.new("ScrollingFrame")

	--Properties:

	PluronID.Name = "Pluron, ID: "..name
	PluronID.Parent = game:GetService("CoreGui")
	PluronID.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	DragPart.Name = "DragPart"
	DragPart.Parent = PluronID
	DragPart.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	DragPart.BackgroundTransparency = 1.000
	DragPart.BorderSizePixel = 0
	DragPart.Position = UDim2.new(0.380307704, 0, 0.211111113, 0)
	DragPart.Size = UDim2.new(0, 383, 0, 40)
	DragPart.Active = true

	-- DRAG

	local UIS = game:GetService("UserInputService")
    function dragify(Frame)
	dragToggle = nil
	dragSpeed = 0.15
	dragInput = nil
	dragStart = nil
	dragPos = nil
	function updateInput(input)
		Delta = input.Position - dragStart
		Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
	end
	Frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
			dragToggle = true
			dragStart = input.Position
			startPos = Frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	Frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input == dragInput and dragToggle then
			updateInput(input)
		end
	end)
end
dragify(DragPart)


	-- DRAG

	Main.Name = "Main"
	Main.Parent = DragPart
	Main.BackgroundColor3 = Color3.fromRGB(34, 38, 56)
	Main.Position = UDim2.new(-0.000664561987, 0, -0.00165486336, 0)
	Main.Size = UDim2.new(0, 383, 0, 467)

	UICorner.CornerRadius = UDim.new(0, 15)
	UICorner.Parent = Main

	Area.Name = "Area"
	Area.Parent = Main
	Area.BackgroundColor3 = Color3.fromRGB(72, 91, 125)
	Area.BorderSizePixel = 0
	Area.Position = UDim2.new(0.0208877288, 0, 0.0877944306, 0)
	Area.Size = UDim2.new(0, 367, 0, 417)

	UICorner_2.CornerRadius = UDim.new(0, 15)
	UICorner_2.Parent = Area

	Panels.Name = "Panels"
	Panels.Parent = Area

	TabFrame.Name = "TabFrame"
	TabFrame.Parent = Area
	TabFrame.Active = true
	TabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabFrame.BackgroundTransparency = 1.000
	TabFrame.BorderSizePixel = 0
	TabFrame.Position = UDim2.new(0.0150000136, 0, 0, 0)
	TabFrame.Size = UDim2.new(0, 355, 0, 34)
	TabFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
	TabFrame.ScrollBarThickness = 2

	Exit.Name = "Exit"
	Exit.Parent = Main
	Exit.BackgroundColor3 = Color3.fromRGB(255, 133, 133)
	Exit.Position = UDim2.new(0.926892936, 0, 0.0278372578, 0)
	Exit.Size = UDim2.new(0, 14, 0, 14)
	Exit.Font = Enum.Font.SourceSans
	Exit.Text = ""
	Exit.TextColor3 = Color3.fromRGB(0, 0, 0)
	Exit.TextSize = 14.000
	Exit.MouseButton1Click:Connect(function()
		DragPart.Parent:Destroy()
	end)

	UICorner_7.CornerRadius = UDim.new(1, 0)
	UICorner_7.Parent = Exit

	Minimize.Name = "Minimize"
	Minimize.Parent = Main
	Minimize.BackgroundColor3 = Color3.fromRGB(255, 246, 120)
	Minimize.Position = UDim2.new(0.869451702, 0, 0.0278372578, 0)
	Minimize.Size = UDim2.new(0, 14, 0, 14)
	Minimize.Font = Enum.Font.SourceSans
	Minimize.Text = ""
	Minimize.TextColor3 = Color3.fromRGB(0, 0, 0)
	Minimize.TextSize = 14.000
	Minimize.MouseButton1Click:Connect(function()
		DragPart.Visible = false
		game:GetService('StarterGui'):SetCore("SendNotification",{
			Title = name;
			Text = "Your Gui visibility has been set to false, if you want it to come back click 'RightAlt on your keyboard'";
			Duration = 5
		})
		UIS.InputBegan:Connect(function(i)
			if DragPart.Visible == false then
				if i.KeyCode == Enum.KeyCode.RightAlt then
					DragPart.Visible = true
				end
			end
		end)
	end)

	UICorner_8.CornerRadius = UDim.new(1, 0)
	UICorner_8.Parent = Minimize

	Title.Name = "Title"
	Title.Parent = Main
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderSizePixel = 0
	Title.Size = UDim2.new(0, 383, 0, 41)
	Title.Font = Enum.Font.GothamBlack
	Title.Text = name or "PLURON | Made by Tenshin"
	Title.TextColor3 = Color3.fromRGB(175, 175, 175)
	Title.TextSize = 14.000

	Pattern.Name = "Pattern"
	Pattern.Parent = Main
	Pattern.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Pattern.BackgroundTransparency = 1.000
	Pattern.Position = UDim2.new(0, 0, -0.0010706638, 0)
	Pattern.Size = UDim2.new(0, 382, 0, 467)
	Pattern.ZIndex = 0
	Pattern.Image = "rbxassetid://2151741365"
	Pattern.ImageTransparency = 0.600
	Pattern.ScaleType = Enum.ScaleType.Tile
	Pattern.SliceCenter = Rect.new(0, 256, 0, 256)
	Pattern.TileSize = UDim2.new(0, 250, 0, 250)

	UICorner_9.CornerRadius = UDim.new(0, 15)
	UICorner_9.Parent = Pattern

	local TabCreation = {}

	function TabCreation:CreateTab(name)
		local Panel = Instance.new("Frame")
		local UICorner_3 = Instance.new("UICorner")
		local ScrollingFrame = Instance.new("ScrollingFrame")
		local UIListLayout = Instance.new("UIListLayout")
		local TabButton = Instance.new("TextButton")
		local UICorner_6 = Instance.new("UICorner")
		local UIListLayout_2 = Instance.new("UIListLayout")

		Panel.Name = name.." Panel"
		Panel.Parent = Panels
		Panel.BackgroundColor3 = Color3.fromRGB(48, 61, 84)
		Panel.BorderSizePixel = 0
		Panel.Position = UDim2.new(0.0149999997, 0, 0.0850000009, 0)
		Panel.Size = UDim2.new(0, 355, 0, 375)

		UICorner_3.CornerRadius = UDim.new(0, 15)
		UICorner_3.Parent = Panel

		ScrollingFrame.Parent = Panel
		ScrollingFrame.Active = true
		ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ScrollingFrame.BackgroundTransparency = 1.000
		ScrollingFrame.BorderSizePixel = 0
		ScrollingFrame.Position = UDim2.new(0.0206527486, 0, 0.037333332, 0)
		ScrollingFrame.Size = UDim2.new(0, 339, 0, 355)
		ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
		ScrollingFrame.ScrollBarThickness = 7

		UIListLayout.Parent = ScrollingFrame
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 15)

		TabButton.Name = name.. "Tab"
		TabButton.Parent = TabFrame
		TabButton.BackgroundColor3 = Color3.fromRGB(48, 61, 84)
		TabButton.Position = UDim2.new(0, 0, 0.205882356, 0)
		TabButton.Size = UDim2.new(0, 71, 0, 20)
		TabButton.Font = Enum.Font.GothamBold
		TabButton.Text = name or "Tab"
		TabButton.TextColor3 = Color3.fromRGB(175, 175, 175)
		TabButton.TextSize = 11.000

		UICorner_6.CornerRadius = UDim.new(1, 0)
		UICorner_6.Parent = TabButton

		UIListLayout_2.Parent = TabFrame
		UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center
		UIListLayout_2.Padding = UDim.new(0, 5)

		TabButton.MouseButton1Click:Connect(function()
			for _,v in next, Panels:GetChildren() do
				v.Visible = false
			end
			Panel.Visible = true
		end)

		local Components = {}

		function Components:CreateButton(name, callback)
			local Button = Instance.new("TextButton")
			local UICorner_4 = Instance.new("UICorner")
			local ButtonText = Instance.new("TextLabel")
			local callback = callback or function() end

			Button.Name = "Button"
			Button.Parent = ScrollingFrame
			Button.BackgroundColor3 = Color3.fromRGB(72, 91, 125)
			Button.Position = UDim2.new(0.0262921639, 0, -0.0428107083, 0)
			Button.Size = UDim2.new(0, 331, 0, 50)
			Button.Font = Enum.Font.SourceSans
			Button.Text = ""
			Button.TextColor3 = Color3.fromRGB(0, 0, 0)
			Button.TextSize = 14.000

			UICorner_4.CornerRadius = UDim.new(0, 15)
			UICorner_4.Parent = Button

			ButtonText.Name = "ButtonText"
			ButtonText.Parent = Button
			ButtonText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ButtonText.BackgroundTransparency = 1.000
			ButtonText.BorderSizePixel = 0
			ButtonText.Position = UDim2.new(0.0604229607, 0, 0, 0)
			ButtonText.Size = UDim2.new(0, 200, 0, 50)
			ButtonText.Font = Enum.Font.GothamBlack
			ButtonText.Text = name.." | BUTTON"
			ButtonText.TextColor3 = Color3.fromRGB(175, 175, 175)
			ButtonText.TextSize = 11.000
			ButtonText.TextXAlignment = Enum.TextXAlignment.Left

			Button.MouseButton1Click:Connect(function()
				pcall(callback)
			end)
		end
		function Components:CreateLabel(name)
			local Label = Instance.new("TextLabel")
			local UICorner_5 = Instance.new("UICorner")
			local LabelText = Instance.new("TextLabel")

			Label.Name = "Label"
			Label.Parent = ScrollingFrame
			Label.BackgroundColor3 = Color3.fromRGB(72, 91, 125)
			Label.Position = UDim2.new(0.01179941, 0, 0.183098584, 0)
			Label.Size = UDim2.new(0, 331, 0, 50)
			Label.Font = Enum.Font.SourceSans
			Label.Text = ""
			Label.TextColor3 = Color3.fromRGB(0, 0, 0)
			Label.TextSize = 14.000

			UICorner_5.CornerRadius = UDim.new(0, 15)
			UICorner_5.Parent = Label

			LabelText.Name = "LabelText"
			LabelText.Parent = Label
			LabelText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			LabelText.BackgroundTransparency = 1.000
			LabelText.BorderSizePixel = 0
			LabelText.Position = UDim2.new(0.0604229607, 0, 0, 0)
			LabelText.Size = UDim2.new(0, 200, 0, 50)
			LabelText.Font = Enum.Font.GothamBlack
			LabelText.Text = name.." | LABEL"
			LabelText.TextColor3 = Color3.fromRGB(175, 175, 175)
			LabelText.TextSize = 11.000
			LabelText.TextXAlignment = Enum.TextXAlignment.Left
		end
		return Components;
	end
	return TabCreation;
end
