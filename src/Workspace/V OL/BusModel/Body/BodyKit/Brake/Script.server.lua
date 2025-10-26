while wait() do
	if script.Parent.Velocity.Magnitude > 7 then
		if script.Parent.BrakeNeu.Volume == 1 then
			script.Parent.BrakeNeu.Volume = 0
		end
	else
		script.Parent.BrakeNeu.Volume = 1
		end
	end
