script.Parent.Touched:Connect(function(Part)
	if Part.Name == "E2" then
		script.Parent.Parent.Screen.RepeatScript.Disabled = false
		script.Parent.Parent.Screen.SurfaceGui.TextLabel.Text = "Viking Terminal"
		script.Parent.Parent.Screen.SurfaceGui.TextLabel2.Text = "  Express Service"
		script.Parent.Parent.speaker.thisisanexpressvehicle:Play()
		wait(2)
		script.Parent.Parent.speaker.nextstop:Play()
	elseif Part.Name == "EBlank" then
		script.Parent.Parent.Screen.RepeatScript.Disabled = true
		script.Parent.Parent.Screen.SurfaceGui.TextLabel.Text = ""
		script.Parent.Parent.Screen.SurfaceGui.TextLabel2.Text = ""
	elseif Part.Name == "E1" then
		script.Parent.Parent.Screen.RepeatScript.Disabled = false
		script.Parent.Parent.Screen.SurfaceGui.TextLabel.Text = "Cherry Steet West"
		script.Parent.Parent.Screen.SurfaceGui.TextLabel2.Text = "  Express Service"
		script.Parent.Parent.speaker.thisisanexpressvehicle:Play()
		wait(2)
		script.Parent.Parent.speaker.nextstop:Play()
	elseif Part.Name == "drive" then
		script.Parent.Parent.Screen.RepeatScript.Disabled = false
		script.Parent.Parent.Screen.SurfaceGui.TextLabel.Text = "Bit Drive"
		script.Parent.Parent.Screen.SurfaceGui.TextLabel2.Text = "  Express Service"
		script.Parent.Parent.speaker.thisisanexpressvehicle:Play()
		wait(2)
		script.Parent.Parent.speaker.nextstop:Play()
		wait(0.9)
		script.Parent.Parent.speaker.drive:Play()
		end
end)