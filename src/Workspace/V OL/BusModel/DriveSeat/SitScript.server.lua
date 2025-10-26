local m = script.Parent.Parent.Parent
local seat = script.Parent
seat.Changed:Connect(function(property)
    if property ~= 'Occupant' then return end
    local occupant = seat.Occupant
    if occupant then
        local character = occupant.Parent
        local player = game.Players:GetPlayerFromCharacter(character)
        if player then
			
        	end
    	else
		m.BusModel.Body.BodyKit.Main.PBrakeEnable.Value = false
		m.BusModel.Body.BodyKit.Main.GearValue.Value = 0
    end
end)
