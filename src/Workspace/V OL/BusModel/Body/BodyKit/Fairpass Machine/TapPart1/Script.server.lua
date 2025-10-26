local TapPart1 = script.Parent

function tuched(h)
	if h.Parent.Name == "FairPass Card" then
		if h.Parent.Script.TapEnabled.Value == true and h.Parent.Script.Balance.Value > 0 and TapPart1.BrickColor.Name == ("Really black") then
			TapPart1.BrickColor = BrickColor.new("Lime green")
			h.Parent.Script.Balance.Value = h.Parent.Script.Balance.Value - 1
		script.Parent.Parent.Screen.SurfaceGui.TextLabel.Text = "Fare Accepted"
		script.Parent.Sound1:Play()
		script.Parent.Sound2:Play()
		script.Parent.Sound3:Play()
		wait(2)
		script.Parent.Parent.Screen.SurfaceGui.TextLabel.Text = "Tap here to validate your fare."
		TapPart1.BrickColor = BrickColor.new("Really black")

elseif h.Parent.Script.TapEnabled.Value == true and h.Parent.Script.Balance.Value < 1 and TapPart1.BrickColor.Name == ("Really black")then
	TapPart1.BrickColor = BrickColor.new("Really red")
	script.Parent.Parent.Screen.SurfaceGui.TextLabel.Text = "Insufficient Funds"
	script.Parent.Sound4:Play()
	wait(0.3)
	script.Parent.Sound4:Play()
	wait(2)
	script.Parent.Parent.Screen.SurfaceGui.TextLabel.Text = "Tap here to validate your fare."
	TapPart1.BrickColor = BrickColor.new("Really black")
end
end
end
script.Parent.Touched:Connect(tuched)