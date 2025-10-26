local m = script.Parent.Parent.Parent.Parent.Misc.FrontDoor
local b = script.Parent.Parent

function onChange()
	if script.Parent.FrontDoorEnable.Value == true then
		Enable()
	elseif script.Parent.FrontDoorEnable.Value == false then
		Disable()
	end
end

function Enable()
	b.Speaker.DoorPressureOpen:Play()
	b.Speaker.DoorPressureClose:Stop()
	wait(1)
	b.IAISs.Emitter.SREnabled.Value = 0
	b.IAISs.Triggers.SR1.ClickDetector.MaxActivationDistance = 0
	b.IAISs.Triggers.SR2.ClickDetector.MaxActivationDistance = 0
	b.IAISs.Triggers.SR3.ClickDetector.MaxActivationDistance = 0
	---
	script.Parent.Parent.FDB.CanCollide = false
	m.MovingPart.DML.PrismaticConstraint.TargetPosition = 0.8
	m.MovingPart.DML.HingeConstraint.TargetAngle = 180
	m.MovingPart.DMR.PrismaticConstraint.TargetPosition = 0.8
	m.MovingPart.DMR.HingeConstraint.TargetAngle = 360
	b.FDL.Material = "Neon"
	b.FDL.Transparency = 0
	b.TopLight0.SurfaceLight.Enabled = true
	b.IL0.Transparency = 0
	b.IL0.Material = "Neon"
	if game.Workspace.ExteriorAnn:FindFirstChild(script.Parent.Parent.Destination.Code.Value) 	
	then
		wait(1)
		local a = game.Workspace.ExteriorAnn[script.Parent.Parent.Destination.Code.Value]
		script.Parent.Parent.Speaker.Exterior.SoundId = a.SoundId 
		script.Parent.Parent.Speaker.Exterior:Play()
	end
	script.Parent.Parent.Speaker.ExternalRepeat.Disabled = false
end

function Disable()
	b.IAISs.Emitter.SREnabled.Value = 0
	b.IAISs.Triggers.SR1.ClickDetector.MaxActivationDistance = 50
	b.IAISs.Triggers.SR2.ClickDetector.MaxActivationDistance = 50
	b.IAISs.Triggers.SR3.ClickDetector.MaxActivationDistance = 50
	---
	b.Speaker.DoorPressureClose:Play()
	b.Speaker.DoorPressureOpen:Stop()
	wait(0.05)
	script.Parent.Parent.FDB.CanCollide = true
	m.MovingPart.DML.HingeConstraint.TargetAngle = 270
	m.MovingPart.DMR.HingeConstraint.TargetAngle = 270
	m.MovingPart.DMR.PrismaticConstraint.TargetPosition = 1.9
	m.MovingPart.DML.PrismaticConstraint.TargetPosition = 1.9
	b.FDL.Material = "SmoothPlastic"
	b.FDL.Transparency = 0.5
	b.IL0.Transparency = 0.5
	b.IL0.Material = "SmoothPlastic"
	b.TopLight0.SurfaceLight.Enabled = false
	b.Speaker.DoorPressure:Stop()
	script.Parent.Parent.Speaker.ExternalRepeat.Disabled = true
end

script.Parent.FrontDoorEnable.Changed:Connect(onChange)