a = script.BusGui -- change this to where ever the gui is
b = a:Clone()
local player
function onChildAdded(child)
	if child.Name == "SeatWeld" then
		if child.Part1.Name == "HumanoidRootPart" then
			local player = game.Players:GetPlayerFromCharacter(child.Part1.Parent)
			if player ~= nil then
				tool = b:Clone()
				tool.Parent = player.PlayerGui
				wait(1)
				tool.Bus.Value = script.Parent.Parent
				local dd = tool.DestChanger.FrameMain.FrameLetters
				local ee = tool.DestChanger.FrameMain.DisplayBox
				for i,v in pairs (dd:GetChildren()) do
					for i,child in pairs (v:GetChildren()) do
						if child:IsA("Script") then
							child.Disabled = false
						end
					end
				end
				for i,v in pairs (ee:GetChildren()) do
					for i,child in pairs (v:GetChildren()) do
						if child:IsA("Script") then
							child.Disabled = false
						end
					end
				end
				print ("Disabled False")
			end
		end
	end
end

function onChildRemoved(child)
	if tool ~= nil then
		tool:Remove()
		local player = game.Players:GetPlayerFromCharacter(child.Part1.Parent)
	end
end

script.Parent.ChildAdded:connect(onChildAdded)
script.Parent.ChildRemoved:connect(onChildRemoved)

-- Put it in the seat you want to give a gui to.
