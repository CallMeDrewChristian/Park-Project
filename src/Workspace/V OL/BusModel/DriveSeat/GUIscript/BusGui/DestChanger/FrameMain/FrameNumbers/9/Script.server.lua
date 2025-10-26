function click()
	local bus = script.Parent.Parent.Parent.Parent.Parent.Bus.Value
	bus.DriveSeat.GUIscript.BusGui.DestChanger.FrameMain.Input.Text = bus.DriveSeat.GUIscript.BusGui.DestChanger.FrameMain.Input.Text .. script.Parent.Text
	gui = script.Parent.Parent.Parent
	gui.Input.Text = gui.Input.Text .. script.Parent.Text
end
script.Parent.MouseButton1Click:connect(click)