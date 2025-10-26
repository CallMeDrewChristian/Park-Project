local EN1 = script.Parent.Parent.EN1

function onChange()
	if script.Parent.GearValue.Value == -1 then
		Reverse()
	elseif script.Parent.GearValue.Value == 0 then
		ReverseOff()

	elseif script.Parent.GearValue.Value == 1 then

	elseif script.Parent.GearValue.Value == 2 then
		
	elseif script.Parent.GearValue.Value == 3 then
		
	elseif script.Parent.GearValue.Value == 4 then
		
	elseif script.Parent.GearValue.Value == 5 then
		
	elseif script.Parent.GearValue.Value == 6 then
		
	end
end

script.Parent.GearValue.Changed:Connect(onChange)

function Reverse()
	script.Parent.Parent.VL1.ReverseBeep:Play()
	script.Parent.Parent.VL1.Material = ("Neon")
	script.Parent.Parent.VL2.Transparency = 0
	script.Parent.Parent.VL2.Material = ("Neon")
	script.Parent.Parent.VL3.Transparency = 0
	script.Parent.Parent.VL3.Material = ("Neon")
end

function ReverseOff()
	script.Parent.Parent.VL1.ReverseBeep:Stop()
	script.Parent.Parent.VL1.Material = ("SmoothPlastic")
	script.Parent.Parent.VL2.Transparency = 0
	script.Parent.Parent.VL2.Material = ("SmoothPlastic")
	script.Parent.Parent.VL3.Transparency = 0
	script.Parent.Parent.VL3.Material = ("SmoothPlastic")
end