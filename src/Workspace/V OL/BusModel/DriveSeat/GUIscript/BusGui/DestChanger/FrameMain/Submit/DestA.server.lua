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
	script.Parent.Parent.DestOn.Value = false
	Bus.Body.BodyKit.Destination.DestOn.Value = false
	if game.ReplicatedStorage.Destination.PresetsD:FindFirstChild("Code" .. Code) then
		print ("Found")
		local PresetD = game.ReplicatedStorage.Destination.PresetsD:FindFirstChild("Code" .. Code)
		--Local Destination Sign--
		Bus.Body.BodyKit.Destination.Code.Value = Code
		---
		Destination.Route.RouteNum.Value = PresetD.Route.RouteNum.Value
		Destination.Route.SideDestAlt.Value = PresetD.Route.SideDestAlt.Value
		Destination.Route.SingleSideDest.Value = PresetD.Route.SingleSideDest.Value
		---
		Destination.Slide1.S1L1.Value = PresetD.Slide1.S1L1.Value 
		Destination.Slide1.S1L1Bold.Value = PresetD.Slide1.S1L1Bold.Value
		Destination.Slide1.S1L2.Value = PresetD.Slide1.S1L2.Value 
		Destination.Slide1.S1L2Bold.Value = PresetD.Slide1.S1L2Bold.Value
		---
		Destination.Slide2.S2L1.Value = PresetD.Slide2.S2L1.Value 
		Destination.Slide2.S2L1Bold.Value = PresetD.Slide2.S2L1Bold.Value
		Destination.Slide2.S2L2.Value = PresetD.Slide2.S2L2.Value 
		Destination.Slide2.S2L2Bold.Value = PresetD.Slide2.S2L2Bold.Value
		---
		Destination.Slide3.S3L1.Value = PresetD.Slide3.S3L1.Value 
		Destination.Slide3.S3L1Bold.Value = PresetD.Slide3.S3L1Bold.Value
		Destination.Slide3.S3L2.Value = PresetD.Slide3.S3L2.Value 
		Destination.Slide3.S3L2Bold.Value = PresetD.Slide3.S3L2Bold.Value
		---
		Destination.PR.PRL1.Value = PresetD.PR.PRL1.Value
		Destination.PR.PRL1Bold.Value = PresetD.PR.PRL1Bold.Value
		Destination.PR.PRL2.Value = PresetD.PR.PRL2.Value
		Destination.PR.PRL2Bold.Value = PresetD.PR.PRL2Bold.Value
		---
		script.Parent.Parent.Input.Text = ""
		script.Parent.Parent.Type.Text = ""
		--Main Destination Sign--
		BusDest.Route.RouteNum.Value = PresetD.Route.RouteNum.Value
		BusDest.Route.SideDestAlt.Value = PresetD.Route.SideDestAlt.Value
		BusDest.Route.SingleSideDest.Value = PresetD.Route.SingleSideDest.Value
		---
		BusDest.Slide1.S1L1.Value = PresetD.Slide1.S1L1.Value 
		BusDest.Slide1.S1L1Bold.Value = PresetD.Slide1.S1L1Bold.Value
		BusDest.Slide1.S1L2.Value = PresetD.Slide1.S1L2.Value 
		BusDest.Slide1.S1L2Bold.Value = PresetD.Slide1.S1L2Bold.Value
		---
		BusDest.Slide2.S2L1.Value = PresetD.Slide2.S2L1.Value 
		BusDest.Slide2.S2L1Bold.Value = PresetD.Slide2.S2L1Bold.Value
		BusDest.Slide2.S2L2.Value = PresetD.Slide2.S2L2.Value 
		BusDest.Slide2.S2L2Bold.Value = PresetD.Slide2.S2L2Bold.Value
		---
		BusDest.Slide3.S3L1.Value = PresetD.Slide3.S3L1.Value 
		BusDest.Slide3.S3L1Bold.Value = PresetD.Slide3.S3L1Bold.Value
		BusDest.Slide3.S3L2.Value = PresetD.Slide3.S3L2.Value 
		BusDest.Slide3.S3L2Bold.Value = PresetD.Slide3.S3L2Bold.Value
		---
		BusDest.PR.PRL1.Value = PresetD.PR.PRL1.Value
		BusDest.PR.PRL1Bold.Value = PresetD.PR.PRL1Bold.Value
		BusDest.PR.PRL2.Value = PresetD.PR.PRL2.Value
		BusDest.PR.PRL2Bold.Value = PresetD.PR.PRL2Bold.Value
		wait(1)
		script.Parent.Parent.DestOn.Value = true
		Bus.Body.BodyKit.Destination.DestOn.Value = true
	else
		print ("Not Found")
		script.Parent.Parent.DestinationBox.Visible = true
		script.Parent.Parent.DestinationBox.Text = "EXCEEDED RANGE OR INVALID MESSAGE NO."
		wait(2.5)
		script.Parent.Parent.DestinationBox.Visible = false
		script.Parent.Parent.DestinationBox.Text  = ""
		script.Parent.Parent.DestOn.Value = true
		Bus.Body.BodyKit.Destination.DestOn.Value = true
	end
end)