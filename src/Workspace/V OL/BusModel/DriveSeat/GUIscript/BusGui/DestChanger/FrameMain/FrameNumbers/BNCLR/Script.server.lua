function click()
	local bus = script.Parent.Parent.Parent.Parent.Parent.Bus.Value
	bus.DriveSeat.GUIscript.BusGui.DestChanger.FrameMain.Input.Text = ""
	gui = script.Parent.Parent.Parent
	gui.Input.Text = ""
end
script.Parent.MouseButton1Click:connect(click)