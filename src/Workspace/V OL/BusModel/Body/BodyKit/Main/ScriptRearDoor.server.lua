local m = script.Parent.Parent.Parent.Parent.Misc.RearDoor
local b = script.Parent.Parent

function onChange()
	if script.Parent.RearDoorEnable.Value == true then
		Enable()
	elseif script.Parent.RearDoorEnable.Value == false then
		Disable()
	end
end

function Enable()
	b.IAISs.Emitter.SREnabled.Value = 0
	b.IAISs.Triggers.SR1.ClickDetector.MaxActivationDistance = 0
	b.IAISs.Triggers.SR2.ClickDetector.MaxActivationDistance = 0
	b.IAISs.Triggers.SR3.ClickDetector.MaxActivationDistance = 0
	---
	b.RDL1.DoorThump:Play()
	b.RDL1.DoorSound1:Play()
	wait(.2)
	b.RDL1.Material = ("Neon")
	b.RDL0.Material = ("Neon")
	wait(1)
	m.RD1.HingeConstraint.TargetAngle = 180
	m.RD2.HingeConstraint.TargetAngle = 360
	m.RD3.HingeConstraint.TargetAngle = 180
	m.RD4.HingeConstraint.TargetAngle = 360
	b.RDB.CanCollide = false
	b.RDB2.CanCollide = false
end

function Disable()
	b.RDL1.DoorPressure0:Play()
	wait(2)
	m.RD1.HingeConstraint.TargetAngle = -90
	m.RD2.HingeConstraint.TargetAngle = -90
	m.RD3.HingeConstraint.TargetAngle = -90
	m.RD4.HingeConstraint.TargetAngle = -90
	wait(1)
	b.IAISs.Emitter.SREnabled.Value = 0
	b.IAISs.Triggers.SR1.ClickDetector.MaxActivationDistance = 50
	b.IAISs.Triggers.SR2.ClickDetector.MaxActivationDistance = 50
	b.IAISs.Triggers.SR3.ClickDetector.MaxActivationDistance = 50
	---
	b.RDL1.DoorThump1:Play()
	b.RDL1.Material = ("Glass")
	b.RDL0.Material = ("SmoothPlastic")
	b.RDB.CanCollide = true
	b.RDB2.CanCollide = true
end

script.Parent.RearDoorEnable.Changed:Connect(onChange)