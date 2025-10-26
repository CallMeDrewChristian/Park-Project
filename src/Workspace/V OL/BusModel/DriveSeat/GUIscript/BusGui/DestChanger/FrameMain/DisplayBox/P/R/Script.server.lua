function click()
	gui = script.Parent.Parent.Parent
	script.Parent.Parent.Parent.Submit.DestA.Disabled = true
	script.Parent.Parent.Parent.Submit.PR.Disabled = false
	script.Parent.Parent.Parent.DestinationBox.Visible = false
	gui.Type.Text = ""
	wait(0.05)
	gui.Type.Text = "P/R:"
end
script.Parent.MouseButton1Click:connect(click)