local m = script.Parent.Parent.Parent.Parent.Misc.RearDoor
local b = script.Parent.Parent

function onChange()
	if script.Parent.RearDoorLight.Value == true then
		Enable()
	elseif script.Parent.RearDoorLight.Value == false then
		Disable()
	end
end

function Enable()
	b.IAISs.Emitter.SREnabled.Value = 0
	b.IAISs.Triggers.SR1.ClickDetector.MaxActivationDistance = 0
	b.IAISs.Triggers.SR2.ClickDetector.MaxActivationDistance = 0
	b.IAISs.Triggers.SR3.ClickDetector.MaxActivationDistance = 0
	---
	b.RDL1.DoorSound1:Play()
	b.RDL1.DoorSound1:Play()
	b.RDL1.DoorThump:Play()
	wait(0.2)
	b.RDL1.Material = ("Neon")
	b.RDL0.Material = ("Neon")
	b.Plate.PlateScript.Disabled = false
	b.Plate.PlateScript2.Disabled = false
end

function Disable()
	b.IAISs.Emitter.SREnabled.Value = 0
	b.IAISs.Triggers.SR1.ClickDetector.MaxActivationDistance = 50
	b.IAISs.Triggers.SR2.ClickDetector.MaxActivationDistance = 50
	b.IAISs.Triggers.SR3.ClickDetector.MaxActivationDistance = 50
	---
	b.RDL1.DoorThump1:Play()
	b.RDL1.Material = ("Glass")
	b.RDL0.Material = ("SmoothPlastic")
	b.Plate.PlateScript.Disabled = true
	b.Plate.PlateScript2.Disabled = true
end

script.Parent.RearDoorLight.Changed:Connect(onChange)