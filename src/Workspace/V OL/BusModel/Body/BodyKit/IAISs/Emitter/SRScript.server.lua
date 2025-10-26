local screen1 = script.Parent
local em = script.Parent
local srv = script.Parent.SREnabled

function onChange()
	if srv.Value == 1 then
		em.SR1:Play()
		script.Parent.Parent.ESR1.Material = ("Neon")
	elseif srv.Value == 2 then
	
	elseif srv.Value == 0 then
		script.Parent.Parent.ESR1.Material = ("SmoothPlastic")
	end
end
srv.Changed:Connect(onChange)