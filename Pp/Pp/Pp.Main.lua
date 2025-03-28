local plr = game.Players.LocalPlayer
local StartGui = plr.PlayerGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = StartGui

local Frame = Instance.new("Frame")
local FrameuiCo = Instance.new("UICorner")
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0,430,0,400)
Frame.Position = UDim2.new(0.600,0,0.175,0)
FrameuiCo.Parent = Frame
FrameuiCo.CornerRadius = UDim.new(0,15)
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.5
Frame.Visible = false

local OpBut = Instance.new("TextButton")
local OpButuicorn = Instance.new("UICorner")
OpButuicorn.Parent = OpBut
OpBut.Parent = ScreenGui
OpBut.Text = "Open" OpBut.TextScaled = true
OpBut.Size = UDim2.new(0,70,0,70)
OpBut.Position = UDim2.new(0.17,0,0.28,0)
OpBut.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
OpBut.BackgroundTransparency = 0.5
OpBut.TextColor3 = Color3.fromRGB(255, 255, 255)
OpButuicorn.CornerRadius = UDim.new(0,15)
OpBut.Font = Enum.Font.SourceSansBold
local dragstart = nil
local startpos = nil

OpBut.InputBegan:Connect(function(input,gameProcecssed)
	if gameProcecssed then return end

	if input.UserInputType == Enum.UserInputType.MouseButton1 then

		dragstart = input.Position
		startpos = OpBut.Position

	end
end)

OpBut.InputChanged:Connect(function(input)
	if dragstart then

		if input.UserInputType == Enum.UserInputType.MouseMovement then
			local delta = input.Position - dragstart
			OpBut.Position = UDim2.new(startpos.X.Scale, startpos.X.Offset + delta.X, startpos.Y.Scale, startpos.Y.Offset + delta.Y)
		end
	end
end)

OpBut.InputEnded:Connect(function(input)

	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragstart = nil
		startpos = nil
	end
end)

local CloseBut = Instance.new("TextButton")
local CloseButuicorn = Instance.new("UICorner")
CloseButuicorn.Parent = CloseBut
CloseBut.Parent = ScreenGui
CloseBut.Text = "X" CloseBut.TextScaled = true
CloseBut.Size = UDim2.new(0,40,0,40)
CloseBut.Position = UDim2.new(0.590,0,0.140,0)
CloseBut.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CloseBut.BackgroundTransparency = 0.5
CloseBut.TextColor3 = Color3.fromRGB(170, 0, 0)
CloseButuicorn.CornerRadius = UDim.new(0,10)
CloseBut.Font = Enum.Font.SourceSansBold
CloseBut.Visible = false

OpBut.MouseButton1Up:Connect(function()
	Frame.Visible = not Frame.Visible
	CloseBut.Visible = not CloseBut.Visible
end)

CloseBut.MouseButton1Up:Connect(function()
	Frame.Visible = not Frame.Visible
	CloseBut.Visible = not CloseBut.Visible
end)

local But1addStamina = Instance.new("TextButton")
local but1staui = Instance.new("UICorner")
But1addStamina.Parent = Frame
But1addStamina.Position = UDim2.new(0,0,0,0)
But1addStamina.Size = UDim2.new(0,200,0,50)
But1addStamina.BackgroundColor3 = Color3.fromRGB(85, 0, 0)
But1addStamina.BackgroundTransparency = 0.7
But1addStamina.Text = "Add100Stamina" But1addStamina.TextScaled = true But1addStamina.TextTransparency = 0.2
But1addStamina.TextColor3 = Color3.fromRGB(255, 255, 255)
but1staui.Parent = But1addStamina
but1staui.CornerRadius = UDim.new(0,8)
But1addStamina.Font = Enum.Font.SourceSansBold

But1addStamina.MouseButton1Click:Connect(function()
	local stamina = 100
	game:GetService("ReplicatedStorage"):WaitForChild("WorkoutHandler_increaseStaminaEvent"):FireServer(stamina)
end)

local Warn = Instance.new("TextLabel")
local Wrnstaui = Instance.new("UICorner")
Warn.Parent = Frame
Warn.Position = UDim2.new(0.470,0,0,0)
Warn.Size = UDim2.new(0,200,0,50)
Warn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Warn.BackgroundTransparency = 0.7
Warn.Text = "DO NOT ADD MANY STAMINS" Warn.TextScaled = true Warn.TextTransparency = 0.2
Warn.TextColor3 = Color3.fromRGB(255, 255, 255)
Wrnstaui.Parent = Warn
Wrnstaui.CornerRadius = UDim.new(0,8)
Warn.Font = Enum.Font.SourceSansBold

local AutoClick = Instance.new("TextButton")
local AtUiCor = Instance.new("UICorner")
AutoClick.Parent = Frame
AutoClick.Position = UDim2.new(-0,0,0.15,0)
AutoClick.Size = UDim2.new(0,200,0,50)
AutoClick.BackgroundColor3 = Color3.fromRGB(85, 0, 0)
AutoClick.BackgroundTransparency = 0.7
AutoClick.Text = "AutoClick" AutoClick.TextScaled = true AutoClick.TextTransparency = 0.2
AutoClick.TextColor3 = Color3.fromRGB(255, 255, 255)
AtUiCor.Parent = AutoClick
AtUiCor.CornerRadius = UDim.new(0,8)
AutoClick.Font = Enum.Font.SourceSansBold

local OnOffLabel = Instance.new("TextLabel")
local OnOffCor = Instance.new("UICorner")
OnOffLabel.Parent = Frame
OnOffLabel.Position = UDim2.new(0.470,0,0.15,0)
OnOffLabel.Size = UDim2.new(0,50,0,50)
OnOffLabel.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
OnOffLabel.BackgroundTransparency = 0.3
OnOffLabel.Text = "Off" OnOffLabel.TextScaled = true OnOffLabel.TextTransparency = 0.2
OnOffLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
OnOffCor.Parent = OnOffLabel
OnOffCor.CornerRadius = UDim.new(0,10)
OnOffLabel.Font = Enum.Font.SourceSansBold

local False = false

AutoClick.MouseButton1Click:Connect(function()
	if not False then
		False = true
		OnOffLabel.Text = "On"
		while False do
		game:GetService("ReplicatedStorage").WorkoutHandler_playerClicked:FireServer()
		wait(0.1)
	end
	else
		False = false
		OnOffLabel.Text = "Off"
	end
end)
