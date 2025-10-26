script.Parent.Changed:Connect(function()
	if script.Parent.Parent=="PlayerGui" then
		local Vehicle = script.Parent.Bus.Value
		local player    = game.Players.LocalPlayer
		local uis = game:GetService("UserInputService")

		uis.InputBegan:Connect(function(input)
			if (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.R then
				if Vehicle.BusModel.Body.BodyKit.EN1.Heat.IsPlaying == false then
					Vehicle.BusModel.Body.BodyKit.EN1.Heat:Play()
					Vehicle.BusModel.Body.BodyKit.EN1.AC:Stop()
				elseif Vehicle.BusModel.Body.BodyKit.EN1.Heat.IsPlaying == true then
					Vehicle.BusModel.Body.BodyKit.EN1.Heat:Stop()
				end
			end
			if (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.T then
				if Vehicle.BusModel.Body.BodyKit.EN1.AC.IsPlaying == false then
					Vehicle.BusModel.Body.BodyKit.EN1.AC:Play()
					Vehicle.BusModel.Body.BodyKit.EN1.Heat:Stop()
				elseif Vehicle.BusModel.Body.BodyKit.EN1.AC.IsPlaying == true then
					Vehicle.BusModel.Body.BodyKit.EN1.AC:Stop()
				end
			end
		end)

		local Vehicle = game.Workspace:FindFirstChild(game.Players.LocalPlayer.PlayerGui.TGUI.Value.Value)
		local player    = game.Players.LocalPlayer
		local uis = game:GetService("UserInputService")

		uis.InputBegan:Connect(function(input)
			if (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.S then
				Vehicle.BusModel.Body.BodyKit.Brake.BrakeNeu:Play()
			elseif (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.H then
				Vehicle.BusModel.Body.BodyKit.Horn.bushorn.Volume = 1.5
			elseif (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.J then
				Vehicle.BusModel.Body.BodyKit.Brake.BrakeNeu:Play()
			elseif (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.V then
				if Vehicle.BusModel.Body.BodyKit.EN1.Idle.SoundId == "rbxassetid://3595370121" then
					Vehicle.BusModel.Body.BodyKit.EN1.PtoN:Play()
					wait(1)
					Vehicle.BusModel.Body.BodyKit.EN1.Idle.SoundId = "rbxassetid://5914799841"
				else 
					Vehicle.BusModel.Body.BodyKit.EN1.Idle.SoundId = "rbxassetid://3595370121"
				end
			end
		end)

		uis.InputEnded:Connect(function(input)
			if (uis:GetFocusedTextBox()== nil) and input.KeyCode == Enum.KeyCode.H then
				Vehicle.BusModel.Body.BodyKit.Horn.bushorn.Volume = 0
			end
		end)

	end
end)