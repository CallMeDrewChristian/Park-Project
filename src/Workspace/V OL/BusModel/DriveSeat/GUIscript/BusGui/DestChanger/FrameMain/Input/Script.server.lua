script.Parent.Changed:Connect(function()
	script.Parent.Parent.Code.Value = script.Parent.Text
end)