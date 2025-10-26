local s = script.Parent:WaitForChild("SpringR")

while wait(.1) do
	if s.MinLength <= 3.2 then
	s.MinLength = s.MinLength + .05
		s.MaxLength = s.MaxLength + .05
		end
end