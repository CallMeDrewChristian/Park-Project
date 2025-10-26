local b = script.Parent.Parent
local m = b.Parent.Parent.Misc

function onChange()
	if script.Parent.RampEnable.Value == false then
		Disable()
	elseif script.Parent.RampEnable.Value == true then
		Enable()
	end
end

function Enable()
	b.Speaker.KneelBeep:Play()
	b.K1.Material = ("Neon")
	b.K1.Transparency = 0
	wait(1)
	b.K1.Material = ("SmoothPlastic")
	b.K1.Transparency = 0.5
	m.Ramp.RampPart.HingeConstraint.ActuatorType = ("Servo")
	m.Ramp.RampPart.HingeConstraint.TargetAngle = 179
	wait(1)
	b.K1.Material = ("Neon")
	b.K1.Transparency = 0
	wait(1)
	b.K1.Material = ("SmoothPlastic")
	b.K1.Transparency = 0.5
	wait(1)
	b.K1.Material = ("Neon")
	b.K1.Transparency = 0
	wait(1)
	b.K1.Material = ("SmoothPlastic")
	b.K1.Transparency = 0.5
	wait(1)
	b.K1.Material = ("Neon")
	b.K1.Transparency = 0
	wait(1)
	b.K1.Material = ("SmoothPlastic")
	b.K1.Transparency = 0.5
	m.Ramp.RampPart.HingeConstraint.ActuatorType = ("None")
	wait(1)
	b.K1.Material = ("Neon")
	b.K1.Transparency = 0
	wait(1)
	b.K1.Material = ("SmoothPlastic")
	b.K1.Transparency = 0.5
	m.Ramp.RampPart.Anchored = true
	b.Speaker.KneelBeep:Stop()
end

function Disable()
	b.Speaker.KneelBeep:Play()
	m.Ramp.RampPart.Anchored = false
	b.K1.Material = ("Neon")
	b.K1.Transparency = 0
	wait(1)
	b.K1.Material = ("SmoothPlastic")
	b.K1.Transparency = 0.5
	m.Ramp.RampPart.HingeConstraint.ActuatorType = ("Servo")
	m.Ramp.RampPart.HingeConstraint.TargetAngle = 89
	wait(1)
	b.K1.Material = ("Neon")
	b.K1.Transparency = 0
	m.Ramp.RampPart.HingeConstraint.ActuatorType = ("Servo")
	m.Ramp.RampPart.HingeConstraint.TargetAngle = 0
	wait(1)
	b.K1.Material = ("SmoothPlastic")
	b.K1.Transparency = 0.5
	wait(1)
	b.K1.Material = ("Neon")
	b.K1.Transparency = 0
	wait(1)
	b.K1.Material = ("SmoothPlastic")
	b.K1.Transparency = 0.5
	wait(1)
	b.K1.Material = ("Neon")
	b.K1.Transparency = 0
	wait(1)
	b.K1.Material = ("SmoothPlastic")
	b.K1.Transparency = 0.5
	wait(1)
	b.K1.Material = ("Neon")
	b.K1.Transparency = 0
	wait(1)
	b.K1.Material = ("SmoothPlastic")
	b.K1.Transparency = 0.5
	b.Speaker.KneelBeep:Stop()
end

script.Parent.RampEnable.Changed:Connect(onChange)