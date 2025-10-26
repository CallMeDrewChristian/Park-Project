function onChange()
	if script.Parent.ACEnable.Value == true then
		Enable()
	elseif script.Parent.ACEnable.Value == false then
		Disable()
	end
end

function Enable()
	script.Parent.Parent.EN1.AC.Volume = 1
	script.Parent.HeatEnable.Value = false
end

function Disable()
	script.Parent.Parent.EN1.AC.Volume = 0
end

script.Parent.ACEnable.Changed:Connect(onChange)