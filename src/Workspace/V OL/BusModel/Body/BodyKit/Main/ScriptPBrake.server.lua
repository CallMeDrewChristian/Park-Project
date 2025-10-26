local b = script.Parent.Parent

function onChange()
	if script.Parent.PBrakeEnable.Value == false then
		Disable()
	elseif script.Parent.PBrakeEnable.Value == true then
		Enable()
	end
end

function Enable()
	b.Brake.PBrakeOn:Play()
	b.Parent.Parent.Wheels.RL.Anchored = true
	--b.Parent.Parent.Wheels.RR.Anchored = true
end

function Disable()
	b.Brake.PBrakeOff:Play()
	b.Parent.Parent.Wheels.RL.Anchored = false
	--b.Parent.Parent.Wheels.RR.Anchored = false	
end

script.Parent.PBrakeEnable.Changed:Connect(onChange)