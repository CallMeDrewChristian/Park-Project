local b = script.Parent.Parent
local c = b.Parent.Parent

function onChange()
	if script.Parent.KneelValue.Value == -1 then
		KneelDown()
	elseif script.Parent.KneelValue.Value == 0 then
		KneelOff()
	elseif script.Parent.KneelValue.Value == 1 then
		KneelUp()
	end
end

function KneelDown()
	b.Speaker.KneelBeep:Play()
	b.Speaker.KneelPressure:Play()
	b.K1.Script.Disabled = false
	c.Wheels.FL.KneelerScript.Disabled = false
	c.Wheels.FR.KneelerScript.Disabled = false
	c.Wheels.FL.KneelerScript2.Disabled = true
	c.Wheels.FR.KneelerScript2.Disabled = true
end

function KneelOff()
	c.Wheels.FL.KneelerScript.Disabled = true
	c.Wheels.FR.KneelerScript.Disabled = true
	c.Wheels.FL.KneelerScript2.Disabled = true
	c.Wheels.FR.KneelerScript2.Disabled = true
	b.Speaker.KneelBeep:Stop()
	b.Speaker.KneelPressure:Stop()
	b.K1.Script.Disabled = true
	wait(.5)
	b.K1.Transparency = .5
	b.K1.Material = ("SmoothPlastic") 
end

function KneelUp()
	b.Speaker.KneelBeep:Play()
	b.K1.Script.Disabled = false
	c.Wheels.FL.KneelerScript2.Disabled = false
	c.Wheels.FR.KneelerScript2.Disabled = false
	c.Wheels.FL.KneelerScript.Disabled = true
	c.Wheels.FR.KneelerScript.Disabled = true
end
script.Parent.KneelValue.Changed:Connect(onChange)