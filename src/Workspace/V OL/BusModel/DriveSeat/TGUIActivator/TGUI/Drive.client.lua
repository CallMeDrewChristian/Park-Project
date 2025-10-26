local v = game.Workspace:FindFirstChild(game.Players.LocalPlayer.PlayerGui.TGUI.Value.Value)
local s = v.BusModel.BodyKit.VehicleSeat
local ms = s.MaxSpeed

s.Changed:Connect(function(property)
	while wait() do
		if property == "Throttle" then
			if s.Throttle == 1 then
				v.BusModel.NonWeld.Chassis.RL.R.MotorHinge.AngularVelocity = 20
				v.BusModel.NonWeld.Chassis.RR.R.MotorHinge.AngularVelocity = 20
			elseif s.Throttle == -1 then
				v.BusModel.NonWeld.Chassis.RL.R.MotorHinge.AngularVelocity = 0
				v.BusModel.NonWeld.Chassis.RR.R.MotorHinge.AngularVelocity = 0
			end
		elseif property == "Steer" then
			if s.Steer == 1 then
				v.BusModel.NonWeld.Chassis.FL.R.RotateHinge.TargetAngle = 45
				v.BusModel.NonWeld.Chassis.FR.R.RotateHinge.TargetAngle = 45
			elseif s.Steer == -1 then
				v.BusModel.NonWeld.Chassis.FL.R.RotateHinge.TargetAngle = -45
				v.BusModel.NonWeld.Chassis.FR.R.RotateHinge.TargetAngle = -45
			elseif s.Steer == 0 then
				v.BusModel.NonWeld.Chassis.FL.R.RotateHinge.TargetAngle = 0
				v.BusModel.NonWeld.Chassis.FR.R.RotateHinge.TargetAngle = 0
			end
		end
	end
end)