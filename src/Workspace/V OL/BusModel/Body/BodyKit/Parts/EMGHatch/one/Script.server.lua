local one = script.Parent.Parent.one
local two = script.Parent.Parent.two
local three = script.Parent.Parent.three
local four = script.Parent.Parent.four
local open = one.Open
local close = one.Close

function onClicked()
   if one.Transparency == 0 then
		one.Transparency = 1
		two.Transparency = 0
		open:Play()
	elseif two.Transparency == 0 then
		two.Transparency = 1
		three.Transparency = 0
		open:Play()
elseif three.Transparency == 0 then
		three.Transparency = 1
		four.Transparency = 0
		open:Play()
elseif four.Transparency == 0 then
		four.Transparency = 1
		one.Transparency = 0
		close:Play()
end
end
script.Parent.ClickDetector.MouseClick:Connect(onClicked)
