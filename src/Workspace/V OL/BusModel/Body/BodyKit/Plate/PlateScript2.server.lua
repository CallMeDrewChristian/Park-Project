local m = script.Parent.Parent.Parent.Parent.Misc.RearDoor
local b = script.Parent.Parent
local Close = true

function Open(PersonOpened)
	if Close == true then
		if PersonOpened.Parent:FindFirstChild("Humanoid")  then
			Close = false
			m.RD3.HingeConstraint.TargetAngle = 180
			m.RD4.HingeConstraint.TargetAngle = 360
			b.RDB2.CanCollide = false
			wait(3)
			b.RDL1.DoorPressure1:Play()
			wait(2)
			m.RD3.HingeConstraint.TargetAngle = -90
			m.RD4.HingeConstraint.TargetAngle = -90
			wait(1)
			Close = true
			b.RDB2.CanCollide = true
	end
	end
end

script.Parent.Plate2.Touched:Connect(Open)