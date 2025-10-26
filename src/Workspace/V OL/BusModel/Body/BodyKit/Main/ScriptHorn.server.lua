function onChange()
	if script.Parent.HornEnable.Value == true then
		Enable()
	elseif script.Parent.HornEnable.Value == false then
		Disable()
	end
end

function Enable()
	script.Parent.Parent.Horn.bushorn:Play()
end

function Disable()
	script.Parent.Parent.Horn.bushorn:Stop()
end

script.Parent.HornEnable.Changed:Connect(onChange)
script.Parent.HornEndEnable.Changed:Connect(onChange)