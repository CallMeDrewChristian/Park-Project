local act = script.Parent.Parent.Parent.Parent:FindFirstChild("A-Chassis Tune")
local aci = act:FindFirstChild("A-Chassis Interface")
local debounce = false
script.Parent.WDownEvent.OnServerEvent:Connect(function()
	if script.Parent.EngineValue.Value == 2 then
		script.Parent.TInputValue.Value = 1
	end
end)

script.Parent.SDownEvent.OnServerEvent:Connect(function()
	if script.Parent.EngineValue.Value == 2 then
		script.Parent.TInputValue.Value = -1
	end
end)

script.Parent.WUpEvent.OnServerEvent:Connect(function()
	if script.Parent.EngineValue.Value == 2 then
		script.Parent.TInputValue.Value = 0
	end
end)

script.Parent.SUpEvent.OnServerEvent:Connect(function()
	if script.Parent.EngineValue.Value == 2 then
		script.Parent.TInputValue.Value = 0
	end
end)

script.Parent.FrontDoorEvent.OnServerEvent:Connect(function()
	if script.Parent.EngineValue.Value == 2 then
			script.Parent.FrontDoorEnable.Value = not script.Parent.FrontDoorEnable.Value
		end
	end)

script.Parent.RearDoorEvent.OnServerEvent:Connect(function()
	if script.Parent.EngineValue.Value == 2 then
		if script.Parent.PBrakeEnable.Value == true then
			if script.Parent.RearDoorLight.Value == false then
				script.Parent.RearDoorEnable.Value = not script.Parent.RearDoorEnable.Value
			end
		end
	end
end)

script.Parent.RearDoorLightEvent.OnServerEvent:Connect(function()
	if script.Parent.EngineValue.Value == 2 then
		if script.Parent.PBrakeEnable.Value == true then
			if script.Parent.RearDoorEnable.Value == false then
				script.Parent.RearDoorLight.Value = not script.Parent.RearDoorLight.Value
			end
		end
	end
end)

script.Parent.LeftIndEvent.OnServerEvent:Connect(function()
	if script.Parent.EngineValue.Value == 2 then
		if script.Parent.IndicatorValue.Value == 1 then script.Parent.IndicatorValue.Value = 0
			elseif script.Parent.IndicatorValue.Value ~= 1 then script.Parent.IndicatorValue.Value = 1
		end
	end
end)

script.Parent.RightIndEvent.OnServerEvent:Connect(function()
	if script.Parent.EngineValue.Value == 2 then
		if script.Parent.IndicatorValue.Value == 2 then script.Parent.IndicatorValue.Value = 0
			elseif script.Parent.IndicatorValue.Value ~= 2 then script.Parent.IndicatorValue.Value = 2
		end
	end
end)

script.Parent.HazardIndEvent.OnServerEvent:Connect(function()
	if script.Parent.EngineValue.Value == 2 then
		if script.Parent.IndicatorValue.Value == 3 then script.Parent.IndicatorValue.Value = 0
			elseif script.Parent.IndicatorValue.Value ~= 3 then script.Parent.IndicatorValue.Value = 3
		end	
	end
end)

script.Parent.EngineEvent.OnServerEvent:Connect(function()
	if script.Parent.EngineValue.Value == 0 then script.Parent.EngineValue.Value = 1
		aci.IsOn.Value = false
		debounce = true
		wait(2.3)
		debounce = false
	elseif script.Parent.EngineValue.Value == 1 and debounce == false then script.Parent.EngineValue.Value = 2
		aci.IsOn.Value = true
	elseif script.Parent.EngineValue.Value == 2 then script.Parent.EngineValue.Value = 0
		aci.IsOn.Value = false
	end
end)

script.Parent.PBrakeEvent.OnServerEvent:Connect(function()
	if script.Parent.Parent.EN1.Velocity.Magnitude < 1 then
		script.Parent.PBrakeEnable.Value = not script.Parent.PBrakeEnable.Value
	end
end)

script.Parent.GearUpEvent.OnServerEvent:Connect(function()
	if script.Parent.GearValue.Value ~= 6 then
		script.Parent.GearValue.Value = script.Parent.GearValue.Value + 1
	end
end)
	
script.Parent.GearDownEvent.OnServerEvent:Connect(function()
	if script.Parent.GearValue.Value ~= -1 then
		script.Parent.GearValue.Value = script.Parent.GearValue.Value - 1
	end
end)

script.Parent.KDownEvent.OnServerEvent:Connect(function()
	if script.Parent.EngineValue.Value == 2 then
		if script.Parent.PBrakeEnable.Value == true then
			script.Parent.KneelValue.Value = -1
		end
	end
end)

script.Parent.KUpEvent.OnServerEvent:Connect(function()
	if script.Parent.EngineValue.Value == 2 then
		if script.Parent.PBrakeEnable.Value == true then
			script.Parent.KneelValue.Value = 0
		end
	end
end)

script.Parent.PDownEvent.OnServerEvent:Connect(function()
	if script.Parent.EngineValue.Value == 2 then
		if script.Parent.PBrakeEnable.Value == true then
			script.Parent.KneelValue.Value = 1
		end
	end
end)

script.Parent.PUpEvent.OnServerEvent:Connect(function()
	if script.Parent.EngineValue.Value == 2 then
		if script.Parent.PBrakeEnable.Value == true then
			script.Parent.KneelValue.Value = 0
		end
	end
end)

script.Parent.RampEvent.OnServerEvent:Connect(function()
	if script.Parent.EngineValue.Value == 2 then
		if script.Parent.PBrakeEnable.Value == true then
			script.Parent.RampEnable.Value = not script.Parent.RampEnable.Value
		end
	end
end)

script.Parent.HLEvent.OnServerEvent:Connect(function()
	if script.Parent.EngineValue.Value >0 then
		if script.Parent.HLValue.Value<2 then
			script.Parent.HLValue.Value=script.Parent.HLValue.Value+1
		elseif script.Parent.HLValue.Value==2 then
			script.Parent.HLValue.Value=0
		end
	end
end)

script.Parent.IntLightsEvent.OnServerEvent:Connect(function()
	if script.Parent.EngineValue.Value < 3 then
		script.Parent.IntLightsEnable.Value = not script.Parent.IntLightsEnable.Value
	end
end)

script.Parent.HeatEvent.OnServerEvent:Connect(function()
	if script.Parent.EngineValue.Value < 3 then
		script.Parent.HeatEnable.Value = not script.Parent.HeatEnable.Value
	end
end)

script.Parent.ACEvent.OnServerEvent:Connect(function()
	if script.Parent.EngineValue.Value < 3 then
		script.Parent.ACEnable.Value = not script.Parent.ACEnable.Value
	end
end)

script.Parent.HornEvent.OnServerEvent:Connect(function()
	script.Parent.HornEnable.Value = true
end)

script.Parent.HornEndEvent.OnServerEvent:Connect(function()
	script.Parent.HornEnable.Value = false
end)

script.Parent.BrakeNeuEvent.OnServerEvent:Connect(function()
	script.Parent.BrakeNeuEnable.Value = not script.Parent.BrakeNeuEnable.Value
end)