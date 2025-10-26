local visible = false
script.Parent.MouseButton1Click:Connect(function()
	if visible == false then
		visible = true
		script.Parent.Parent.FrameMain.Visible = true
	else
		visible = false
		script.Parent.Parent.FrameMain.Visible = false
	end
end)