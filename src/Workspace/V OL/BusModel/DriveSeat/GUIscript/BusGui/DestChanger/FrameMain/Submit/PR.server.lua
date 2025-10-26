local Bus = script.Parent.Parent.Parent.Parent.Bus.Value
local Destination = script.Parent.Parent.Destination
local ReplicatedStorage = game.ReplicatedStorage.Destination
local BusDest = Bus.Body.BodyKit.Destination.Destination
script.Parent.MouseButton1Click:Connect(function()
	local input = script.Parent.Parent.Input.Text
	local input2 = script.Parent.Parent.Input
	local input3 = script.Parent.Parent.Parent.Parent.Bus.Value.DriveSeat.GUIscript.BusGui.DestChanger.FrameMain.Input.Text
	local Code = script.Parent.Parent.Code.Value
	print ("Code" .. input)
	print ("Code" .. Code)
	wait(0.5)
	Bus.Body.BodyKit.Destination.DisplayFront.Script.Disabled = true
	script.Parent.Parent.DestOn.Value = false
	Bus.Body.BodyKit.Destination.DestOn.Value = false
	if game.ReplicatedStorage.Destination.PresetsP:FindFirstChild("Code" .. Code) then
		print ("Found")
		local PresetD = game.ReplicatedStorage.Destination.PresetsP:FindFirstChild("Code" .. Code)
		--Local Destination Sign--
		---
		Destination.PR.PRL1.Value = PresetD.PR.PRL1.Value
		Destination.PR.PRL1Bold.Value = PresetD.PR.PRL1Bold.Value
		Destination.PR.PRL2.Value = PresetD.PR.PRL2.Value
		Destination.PR.PRL2Bold.Value = PresetD.PR.PRL2Bold.Value
		---
		script.Parent.Parent.Input.Text = ""
		script.Parent.Parent.Type.Text = ""
		--Main Destination Sign--
		BusDest.PR.PRL1.Value = PresetD.PR.PRL1.Value
		BusDest.PR.PRL1Bold.Value = PresetD.PR.PRL1Bold.Value
		BusDest.PR.PRL2.Value = PresetD.PR.PRL2.Value
		BusDest.PR.PRL2Bold.Value = PresetD.PR.PRL2Bold.Value
		wait(1)
		Bus.Body.BodyKit.Destination.DisplayFront.Script.Disabled = false
		script.Parent.Parent.DestOn.Value = true
		Bus.Body.BodyKit.Destination.DestOn.Value = true
	else
		print ("Not Found")
		script.Parent.Parent.DestinationBox.Visible = true
		script.Parent.Parent.DestinationBox.Text = "EXCEEDED RANGE OR INVALID MESSAGE NO."
		wait(1)
		script.Parent.Parent.DestOn.Value = true
		Bus.Body.BodyKit.Destination.DestOn.Value = true
		Bus.Body.BodyKit.Destination.DisplayFront.Script.Disabled = false
		wait(1.5)
		script.Parent.Parent.DestinationBox.Visible = false
		script.Parent.Parent.DestinationBox.Text  = ""
	end
end)