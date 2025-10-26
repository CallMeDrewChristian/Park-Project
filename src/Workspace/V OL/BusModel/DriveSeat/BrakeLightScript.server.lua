local b = script.Parent.Parent.Body.BodyKit

while wait() do
	if script.Parent.Throttle == 1 then
		script.Parent.Parent.Body.BodyKit.RVL0.Material = ("Glass")
		script.Parent.Parent.Body.BodyKit.RVL4.Material = ("Glass")
		script.Parent.Parent.Body.BodyKit.RVL1.Material = ("SmoothPlastic")
		script.Parent.Parent.Body.BodyKit.RVL2.Material = ("SmoothPlastic")
		script.Parent.Parent.Body.BodyKit.RVL3.Material = ("SmoothPlastic")
	elseif script.Parent.Throttle ~= 1 then
		script.Parent.Parent.Body.BodyKit.RVL0.Material = ("Neon")
		script.Parent.Parent.Body.BodyKit.RVL4.Material = ("Neon")
		script.Parent.Parent.Body.BodyKit.RVL1.Material = ("Neon")
		script.Parent.Parent.Body.BodyKit.RVL2.Material = ("Neon")
		script.Parent.Parent.Body.BodyKit.RVL3.Material = ("Neon")
	end
end


