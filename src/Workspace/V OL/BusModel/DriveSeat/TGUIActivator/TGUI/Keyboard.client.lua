local Vehicle = game.Workspace:FindFirstChild(game.Players.LocalPlayer.PlayerGui.TGUI.Value.Value)
local player    = game.Players.LocalPlayer
local mouse     = player:GetMouse()
local ac = script.Parent.Parent:WaitForChild("A-Chassis Interface")
local uis = game:GetService("UserInputService")

uis.InputBegan:Connect(function(input)
	if (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.M then
		Vehicle.BusModel.Body.BodyKit.Main.FrontDoorEvent:FireServer()
	elseif (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.N then
		Vehicle.BusModel.Body.BodyKit.Main.RearDoorEvent:FireServer()
	elseif (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.B then
		Vehicle.BusModel.Body.BodyKit.Main.RearDoorLightEvent:FireServer()
	elseif (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.Q then
		Vehicle.BusModel.Body.BodyKit.Main.LeftIndEvent:FireServer()
	elseif (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.E then
		Vehicle.BusModel.Body.BodyKit.Main.RightIndEvent:FireServer()
	elseif (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.X then
		Vehicle.BusModel.Body.BodyKit.Main.HazardIndEvent:FireServer()
	elseif (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.Z then
		Vehicle.BusModel.Body.BodyKit.Main.EngineEvent:FireServer()
		EngineCheck()
	elseif (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.C then
		Vehicle.BusModel.Body.BodyKit.Main.PBrakeEvent:FireServer()
	elseif (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.LeftBracket then
		Vehicle.BusModel.Body.BodyKit.Main.GearDownEvent:FireServer()
	elseif (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.RightBracket then
		Vehicle.BusModel.Body.BodyKit.Main.GearUpEvent:FireServer()
	elseif (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.K then
		Vehicle.BusModel.Body.BodyKit.Main.KDownEvent:FireServer()
	elseif (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.P then
		Vehicle.BusModel.Body.BodyKit.Main.PDownEvent:FireServer()
	elseif (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.L then
		Vehicle.BusModel.Body.BodyKit.Main.HLEvent:FireServer()
	----------------
	elseif (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.W then
		Vehicle.BusModel.Body.BodyKit.Main.WDownEvent:FireServer()
	elseif (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.S then
		Vehicle.BusModel.Body.BodyKit.Main.SDownEvent:FireServer()
		Vehicle.BusModel.Body.BodyKit.Main.BrakeNeuEvent:FireServer()
	elseif (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.R then
		Vehicle.BusModel.Body.BodyKit.Main.HeatEvent:FireServer()
	elseif (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.T then
		Vehicle.BusModel.Body.BodyKit.Main.ACEvent:FireServer()
	elseif (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.H then
		Vehicle.BusModel.Body.BodyKit.Main.HornEvent:FireServer()
	elseif (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.J then
		Vehicle.BusModel.Body.BodyKit.Main.IntLightsEvent:FireServer()
	end
end)

uis.InputEnded:Connect(function(input)
	if (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.W then
		Vehicle.BusModel.Body.BodyKit.Main.WUpEvent:FireServer()
	elseif (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.S then
		Vehicle.BusModel.Body.BodyKit.Main.SUpEvent:FireServer()
	elseif (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.K then
		Vehicle.BusModel.Body.BodyKit.Main.KUpEvent:FireServer()
	elseif (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.P then
		Vehicle.BusModel.Body.BodyKit.Main.PUpEvent:FireServer()
	elseif (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.H then
		Vehicle.BusModel.Body.BodyKit.Main.HornEndEvent:FireServer()
	end
end)

function EngineCheck()
	if Vehicle.BusModel.Body.BodyKit.Main.EngineValue.Value == 1 then
		ac.IsOn.Value = true
	elseif Vehicle.BusModel.Body.BodyKit.Main.EngineValue.Value ~= 1 then
		ac.IsOn.Value = false
	end
end

