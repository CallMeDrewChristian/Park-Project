seat = script.Parent
s = script
---------------------------------------------------------------
function onChildAdded(child)
	if child.Name == "SeatWeld" then
		local human = child.part1.Parent:findFirstChild("Humanoid")
		if (human ~= nil) then
			s.TGUI:clone().Parent = game.Players:findFirstChild(human.Parent.Name).PlayerGui
		end
	end
end

function onChildRemoved(child)
	if (child.Name == "SeatWeld") then	
		local human = child.part1.Parent:findFirstChild("Humanoid")
		if (human ~= nil) then
			game.Players:findFirstChild(human.Parent.Name).PlayerGui.TGUI:remove()
		end
	end
end


script.Parent.ChildAdded:connect(onChildAdded)
script.Parent.ChildRemoved:connect(onChildRemoved)