function click()
	wait(0.2)
	local bus = script.Parent.Parent.Parent.Parent.Parent.Bus.Value
	gui = script.Parent.Parent.Parent
	gui.Input.Text = gui.Input.Text .. "1"
end
script.Parent.MouseButton1Click:connect(click)