function onChange()
	if script.Parent.IntLightsEnable.Value == true then
		Enable()
	elseif script.Parent.IntLightsEnable.Value == false then
		Disable()
	end
end

function Enable()
	script.Parent.Parent.IL1.Material = ("Neon")
	script.Parent.Parent.IL2.Material = ("Neon")
	script.Parent.Parent.TopLight1.SurfaceLight.Enabled = true
end

function Disable()
	script.Parent.Parent.IL1.Material = ("SmoothPlastic")
	script.Parent.Parent.IL2.Material = ("SmoothPlastic")
	script.Parent.Parent.TopLight1.SurfaceLight.Enabled = false
end

script.Parent.IntLightsEnable.Changed:Connect(onChange)