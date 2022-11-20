local lib = {}
local tweenService = game:GetService("TweenService")
local uis = game:GetService("UserInputService")

function lib:CreateWindow(name)
	local PluronID = Instance.new("ScreenGui")
	local DragPart = Instance.new("Frame")
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Area = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local Panels = Instance.new("Folder")
	local TabFrame = Instance.new("ScrollingFrame")
	local TabButton = Instance.new("TextButton")
	local UICorner_14 = Instance.new("UICorner")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local Exit = Instance.new("TextButton")
	local UICorner_15 = Instance.new("UICorner")
	local Minimize = Instance.new("TextButton")
	local UICorner_16 = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	local Pattern = Instance.new("ImageLabel")
	local UICorner_17 = Instance.new("UICorner")

	--Properties:

	PluronID.Name = "Pluron, ID: "..name
	PluronID.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	PluronID.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	DragPart.Name = "DragPart"
	DragPart.Parent = PluronID
	DragPart.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	DragPart.BackgroundTransparency = 1.000
	DragPart.BorderSizePixel = 0
	DragPart.Position = UDim2.new(0.380307704, 0, 0.211111113, 0)
	DragPart.Size = UDim2.new(0, 383, 0, 40)

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
	TabFrame.ChildAdded:Connect(function()
		TabFrame.CanvasSize = UDim2.new(0,UIListLayout_2.AbsoluteContentSize.X + 10,0,0)
	end)

	UIListLayout_2.Parent = TabFrame
	UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout_2.Padding = UDim.new(0, 5)

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
		PluronID:Destroy()
	end)

	UICorner_15.CornerRadius = UDim.new(1, 0)
	UICorner_15.Parent = Exit

	Minimize.Name = "Minimize"
	Minimize.Parent = Main
	Minimize.BackgroundColor3 = Color3.fromRGB(255, 246, 120)
	Minimize.Position = UDim2.new(0.869451702, 0, 0.0278372578, 0)
	Minimize.Size = UDim2.new(0, 14, 0, 14)
	Minimize.Font = Enum.Font.SourceSans
	Minimize.Text = ""
	Minimize.TextColor3 = Color3.fromRGB(0, 0, 0)
	Minimize.TextSize = 14.000
	_G.flag = false
	local back = pcall(function(option)
		if option == "Show Again" then
			_G.flag = false
		else
			_G.flag = true
		end
	end) 
	Minimize.MouseButton1Click:Connect(function()
		if _G.flag == false then
			_G.flag = true
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = name or "Pluron";
				Text = "Your Ui has been minimized, click 'RightAlt' to make it appear again.";
				Callback = back,
				Duration = 3e9,
				Button1 = "Show Again",
				Button2 = "Dont Show Again"
			})
		end
		PluronID.Enabled = false
		
		uis.InputBegan:Connect(function(i)
			if PluronID.Enabled == false then
				if i.KeyCode == Enum.KeyCode.RightAlt then
					PluronID.Enabled = true
				end
			end
		end)
	end)

	UICorner_16.CornerRadius = UDim.new(1, 0)
	UICorner_16.Parent = Minimize

	Title.Name = "Title"
	Title.Parent = Main
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderSizePixel = 0
	Title.Size = UDim2.new(0, 383, 0, 41)
	Title.Font = Enum.Font.GothamBlack
	Title.Text = name or "Pluron | By Tenshin"
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

	UICorner_17.CornerRadius = UDim.new(0, 15)
	UICorner_17.Parent = Pattern
	
	local libTabs = {}
	
	function libTabs:CreateTab(name)
		local Panel = Instance.new("Frame")
		local UICorner_3 = Instance.new("UICorner")
		local ScrollingFrame = Instance.new("ScrollingFrame")
		local UIListLayout = Instance.new("UIListLayout")
		
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
		ScrollingFrame.ChildAdded:Connect(function()
			ScrollingFrame.CanvasSize = UDim2.new(0,0,0, UIListLayout.AbsoluteContentSize.Y + 10)
		end)
		
		TabButton.Name = name.." Tab"
		TabButton.Parent = TabFrame
		TabButton.BackgroundColor3 = Color3.fromRGB(48, 61, 84)
		TabButton.Position = UDim2.new(0, 0, 0.205882356, 0)
		TabButton.Size = UDim2.new(0, 71, 0, 20)
		TabButton.Font = Enum.Font.GothamBold
		TabButton.Text = name or "Tab"
		TabButton.TextColor3 = Color3.fromRGB(175, 175, 175)
		TabButton.TextSize = 11.000
		TabButton.TextWrapped = true

		UICorner_14.CornerRadius = UDim.new(1, 0)
		UICorner_14.Parent = TabButton
		
		UIListLayout.Parent = ScrollingFrame
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 15)
		
		TabButton.MouseButton1Click:Connect(function()
			for _,v in next, Panels:GetChildren() do
				v.Visible = false
			end
			Panel.Visible = true
		end)
		
		local contents = {}
		
		function contents:CreateButton(name, callback)
			local callback = callback or function() end
			local Button = Instance.new("TextButton")
			local UICorner_4 = Instance.new("UICorner")
			local ButtonText = Instance.new("TextLabel")
			local mouse = Instance.new("ImageButton")
			
			Button.Name = name.." Button"
			Button.Parent = ScrollingFrame
			Button.BackgroundColor3 = Color3.fromRGB(72, 91, 125)
			Button.Position = UDim2.new(0.0292420164, 0, -0.0540783145, 0)
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
			ButtonText.Position = UDim2.new(0.126888216, 0, -0.0199999996, 0)
			ButtonText.Size = UDim2.new(0, 276, 0, 50)
			ButtonText.Font = Enum.Font.GothamBlack
			ButtonText.Text = name
			ButtonText.TextColor3 = Color3.fromRGB(175, 175, 175)
			ButtonText.TextSize = 13.000
			ButtonText.TextXAlignment = Enum.TextXAlignment.Left

			mouse.Name = "mouse"
			mouse.Parent = Button
			mouse.BackgroundTransparency = 1.000
			mouse.Position = UDim2.new(0.0317220688, 0, 0.24000001, 0)
			mouse.Size = UDim2.new(0, 25, 0, 25)
			mouse.ZIndex = 2
			mouse.Image = "rbxassetid://3926305904"
			mouse.ImageColor3 = Color3.fromRGB(203, 203, 203)
			mouse.ImageRectOffset = Vector2.new(204, 964)
			mouse.ImageRectSize = Vector2.new(36, 36)
			
			Button.MouseButton1Click:Connect(function()
				pcall(callback)
			end)
			Button.MouseEnter:Connect(function()
				local t = tweenService:Create(UICorner_4, 
					TweenInfo.new(.1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), 
					{CornerRadius = UDim.new(1,0)}
				)
				t:Play()
			end)
			Button.MouseLeave:Connect(function()
				local t = tweenService:Create(UICorner_4, 
					TweenInfo.new(.1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), 
					{CornerRadius = UDim.new(0,15)}
				)
				t:Play()
			end)
		end
		
		function contents:CreateLabel(name)
			local Label = Instance.new("TextLabel")
			local UICorner_5 = Instance.new("UICorner")
			local LabelTxt = Instance.new("TextLabel")
			local text_fields = Instance.new("ImageButton")
			
			Label.Name = name.." Label"
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

			LabelTxt.Name = "LabelTxt"
			LabelTxt.Parent = Label
			LabelTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			LabelTxt.BackgroundTransparency = 1.000
			LabelTxt.BorderSizePixel = 0
			LabelTxt.Position = UDim2.new(0.126888216, 0, -0.0199999996, 0)
			LabelTxt.Size = UDim2.new(0, 276, 0, 50)
			LabelTxt.Font = Enum.Font.GothamBlack
			LabelTxt.TextColor3 = Color3.fromRGB(175, 175, 175)
			LabelTxt.TextSize = 13.000
			LabelTxt.TextXAlignment = Enum.TextXAlignment.Left
            LabelTxt.Text = name or "Label"

			text_fields.Name = "text_fields"
			text_fields.Parent = Label
			text_fields.BackgroundTransparency = 1.000
			text_fields.LayoutOrder = 7
			text_fields.Position = UDim2.new(0.0327431858, 0, 0.216049388, 0)
			text_fields.Size = UDim2.new(0, 25, 0, 25)
			text_fields.ZIndex = 2
			text_fields.Image = "rbxassetid://3926305904"
			text_fields.ImageColor3 = Color3.fromRGB(203, 203, 203)
			text_fields.ImageRectOffset = Vector2.new(244, 164)
			text_fields.ImageRectSize = Vector2.new(36, 36)
		end
		function contents:CreateInput(name, subtext, callback)
			local callback = callback or function() end
			local TxtBox = Instance.new("TextLabel")
			local UICorner_9 = Instance.new("UICorner")
			local BoxTxt = Instance.new("TextLabel")
			local edit = Instance.new("ImageButton")
			local Input = Instance.new("TextBox")
			local UICorner_10 = Instance.new("UICorner")
			
			TxtBox.Name = name.." TxtBox"
			TxtBox.Parent = ScrollingFrame
			TxtBox.BackgroundColor3 = Color3.fromRGB(72, 91, 125)
			TxtBox.Position = UDim2.new(0.01179941, 0, 0.183098584, 0)
			TxtBox.Size = UDim2.new(0, 331, 0, 50)
			TxtBox.Font = Enum.Font.SourceSans
			TxtBox.Text = ""
			TxtBox.TextColor3 = Color3.fromRGB(0, 0, 0)
			TxtBox.TextSize = 14.000

			UICorner_9.CornerRadius = UDim.new(0, 15)
			UICorner_9.Parent = TxtBox

			BoxTxt.Name = "BoxTxt"
			BoxTxt.Parent = TxtBox
			BoxTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			BoxTxt.BackgroundTransparency = 1.000
			BoxTxt.BorderSizePixel = 0
			BoxTxt.Position = UDim2.new(0.126888216, 0, -0.0199999996, 0)
			BoxTxt.Size = UDim2.new(0, 276, 0, 50)
			BoxTxt.Font = Enum.Font.GothamBlack
			BoxTxt.Text = name or "TextBox"
			BoxTxt.TextColor3 = Color3.fromRGB(175, 175, 175)
			BoxTxt.TextSize = 13.000
			BoxTxt.TextXAlignment = Enum.TextXAlignment.Left

			edit.Name = "edit"
			edit.Parent = TxtBox
			edit.BackgroundTransparency = 1.000
			edit.LayoutOrder = 4
			edit.Position = UDim2.new(0.0317220688, 0, 0.24000001, 0)
			edit.Size = UDim2.new(0, 25, 0, 25)
			edit.ZIndex = 2
			edit.Image = "rbxassetid://3926305904"
			edit.ImageColor3 = Color3.fromRGB(175, 175, 175)
			edit.ImageRectOffset = Vector2.new(924, 364)
			edit.ImageRectSize = Vector2.new(36, 36)

			Input.Name = "Input"
			Input.Parent = TxtBox
			Input.BackgroundColor3 = Color3.fromRGB(48, 61, 84)
			Input.Position = UDim2.new(0.595166147, 0, 0.239999995, 0)
			Input.Size = UDim2.new(0, 125, 0, 24)
			Input.Font = Enum.Font.GothamBlack
			Input.PlaceholderColor3 = Color3.fromRGB(175, 175, 175)
			Input.PlaceholderText = subtext or "Input"
			Input.Text = ""
			Input.TextColor3 = Color3.fromRGB(175, 175, 175)
			Input.TextSize = 14.000

			UICorner_10.CornerRadius = UDim.new(0, 15)
			UICorner_10.Parent = Input
			
			Input.Focused:Connect(function()
				tweenService:Create(Input, TweenInfo.new(.2,Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Size = UDim2.new()})
			end)
			
			Input.FocusLost:Connect(function()
				txt = Input.Text
				pcall(function()
					callback(txt)
				end)
			end)
		end
		function contents:CreateToggle(name, bool, callback)
			local callback = callback or function() end
			local Toggle = Instance.new("TextLabel")
			local UICorner_11 = Instance.new("UICorner")
			local _1 = Instance.new("ImageButton")
			local _2 = Instance.new("ImageButton")
			local ToggleTxt = Instance.new("TextLabel")
			local ToggleButton = Instance.new("TextButton")
			local UICorner_12 = Instance.new("UICorner")
			local Circle = Instance.new("TextLabel")
			local UICorner_13 = Instance.new("UICorner")
			bool = bool or false
			
			Toggle.Name = "Toggle"
			Toggle.Parent = ScrollingFrame
			Toggle.BackgroundColor3 = Color3.fromRGB(72, 91, 125)
			Toggle.Position = UDim2.new(0.01179941, 0, 0.183098584, 0)
			Toggle.Size = UDim2.new(0, 331, 0, 50)
			Toggle.Font = Enum.Font.SourceSans
			Toggle.Text = ""
			Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
			Toggle.TextSize = 14.000

			UICorner_11.CornerRadius = UDim.new(0, 15)
			UICorner_11.Parent = Toggle

			_1.Name = "1"
			_1.Parent = Toggle
			_1.BackgroundTransparency = 1.000
			_1.LayoutOrder = 17
			_1.Position = UDim2.new(0.0300043523, 0, 0.217777789, 0)
			_1.Size = UDim2.new(0, 25, 0, 25)
			_1.ZIndex = 2
			_1.Image = "rbxassetid://3926309567"
			_1.ImageColor3 = Color3.fromRGB(175, 175, 175)
			_1.ImageRectOffset = Vector2.new(628, 420)
			_1.ImageRectSize = Vector2.new(48, 48)

			_2.Name = "2"
			_2.Parent = Toggle
			_2.BackgroundTransparency = 1.000
			_2.LayoutOrder = 14
			_2.Position = UDim2.new(0.0299999993, 0, 0.217999995, 0)
			_2.Size = UDim2.new(0, 25, 0, 25)
			_2.Visible = false
			_2.ZIndex = 2
			_2.Image = "rbxassetid://3926309567"
			_2.ImageColor3 = Color3.fromRGB(175, 175, 175)
			_2.ImageRectOffset = Vector2.new(784, 420)
			_2.ImageRectSize = Vector2.new(48, 48)

			ToggleTxt.Name = "ToggleTxt"
			ToggleTxt.Parent = Toggle
			ToggleTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleTxt.BackgroundTransparency = 1.000
			ToggleTxt.BorderSizePixel = 0
			ToggleTxt.Position = UDim2.new(0.126888216, 0, 0, 0)
			ToggleTxt.Size = UDim2.new(0, 276, 0, 50)
			ToggleTxt.Font = Enum.Font.GothamBlack
			ToggleTxt.Text = "Toggle"
			ToggleTxt.TextColor3 = Color3.fromRGB(175, 175, 175)
			ToggleTxt.TextSize = 13.000
			ToggleTxt.TextXAlignment = Enum.TextXAlignment.Left

			ToggleButton.Name = "ToggleButton"
			ToggleButton.Parent = Toggle
			ToggleButton.BackgroundColor3 = Color3.fromRGB(48, 61, 84)
			ToggleButton.Position = UDim2.new(0.782477319, 0, 0.265882581, 0)
			ToggleButton.Size = UDim2.new(0, 49, 0, 20)
			ToggleButton.Font = Enum.Font.SourceSans
			ToggleButton.Text = ""
			ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			ToggleButton.TextSize = 14.000

			UICorner_12.CornerRadius = UDim.new(1, 0)
			UICorner_12.Parent = ToggleButton

			Circle.Name = "Circle"
			Circle.Parent = ToggleButton
			Circle.BackgroundColor3 = Color3.fromRGB(72, 91, 125)
			Circle.Position = UDim2.new(0.183673471, 0, 0.25000003, 0)
			Circle.Size = UDim2.new(0, 9, 0, 9)
			Circle.Font = Enum.Font.SourceSans
			Circle.Text = ""
			Circle.TextColor3 = Color3.fromRGB(0, 0, 0)
			Circle.TextSize = 14.000

			UICorner_13.CornerRadius = UDim.new(1, 0)
			UICorner_13.Parent = Circle
			
			ToggleButton.MouseButton1Click:Connect(function()
				value = bool
				if bool == false then
					bool = true
					tweenService:Create(Circle,
						TweenInfo.new(.1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
						{Position = UDim2.new(0.694, 0,0.25, 0)}
					):Play()
				elseif bool == true then
					bool = false
					tweenService:Create(Circle,
						TweenInfo.new(.1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
						{Position = UDim2.new(0.122, 0,0.25, 0)}
					):Play()					
				end
				pcall(function()
					callback(value)
				end)
			end)
		end
		return contents;
	end
	return libTabs;
end
