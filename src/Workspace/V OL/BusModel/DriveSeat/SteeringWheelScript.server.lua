while wait() do
	if script.Parent.Steer == 1 then
		script.Parent.Parent.Body.BodyKit.MeshPart.HingeConstraint.TargetAngle = -85
	elseif script.Parent.Steer == -1 then
		script.Parent.Parent.Body.BodyKit.MeshPart.HingeConstraint.TargetAngle = 85
	elseif script.Parent.Steer == 0 then
		script.Parent.Parent.Body.BodyKit.MeshPart.HingeConstraint.TargetAngle = 0
	end
end


