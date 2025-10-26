local s = script.Parent:WaitForChild("SpringL")

while wait(.1) do
	s.MinLength = s.MinLength - .05
	s.MaxLength = s.MaxLength - .05
end