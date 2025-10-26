local m = script.Parent.Parent.Parent.Parent.Misc.RearDoor
local b = script.Parent.Parent
local Close = true

function Open(PersonOpened)
	if Close == true then
		if PersonOpened.Parent:FindFirstChild("Humanoid")  then
			Close = false
			m.RD1.HingeConstraint.TargetAngle = 180
			m.RD2.HingeConstraint.TargetAngle = 360
			b.RDB.CanCollide = false
			wait(3)
			b.RDL1.DoorPressure0:Play()
			wait(2)
			m.RD1.HingeConstraint.TargetAngle = -90
			m.RD2.HingeConstraint.TargetAngle = -90
			wait(1)
			Close = true
			b.RDB.CanCollide = true
	end
	end
end

script.Parent.Plate.Touched:Connect(Open)