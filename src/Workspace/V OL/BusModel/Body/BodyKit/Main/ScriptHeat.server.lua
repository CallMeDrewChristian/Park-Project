function onChange()
	if script.Parent.HeatEnable.Value == true then
		Enable()
	elseif script.Parent.HeatEnable.Value == false then
		Disable()
	end
end

function Enable()
	script.Parent.Parent.EN1.Heat.Volume = 0.4
	script.Parent.ACEnable.Value = false
end

function Disable()
	script.Parent.Parent.EN1.Heat.Volume = 0
end

script.Parent.HeatEnable.Changed:Connect(onChange)