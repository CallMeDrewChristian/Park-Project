function onChange()
	if script.Parent.BrakeNeuEnable.Value == true then
		Enable()
		elseif script.Parent.BrakeNeuEnable.Value == false then
			Disable()
	end
end

function Enable()
	script.Parent.Parent.Brake.BrakeNeu:Play()
end

function Disable()
	script.Parent.Parent.Brake.BrakeNeu:Play()
end


script.Parent.BrakeNeuEnable.Changed:Connect(onChange)