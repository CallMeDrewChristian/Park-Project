local stat= script.Parent.HLValue
local MainBeam= script.Parent.Parent.LightParts.HLights.FL1.Light
local SideBeam= script.Parent.Parent.LightParts.HLights.FL2.Light
stat.Changed:Connect(function()
	if stat.Value==0 then
		MainBeam.Enabled=false
		MainBeam.Range=0
		MainBeam.Parent.Material="Glass"
		SideBeam.Enabled=false
		SideBeam.Range=0
		SideBeam.Parent.Material="Glass"
	elseif stat.Value==1 then
		MainBeam.Enabled=false
		MainBeam.Range=0
		MainBeam.Parent.Material="Glass"
		SideBeam.Enabled=true
		SideBeam.Range=20
		SideBeam.Parent.Material="Neon"	
	elseif stat.Value==2 then
		MainBeam.Enabled=true
		MainBeam.Range=35
		MainBeam.Parent.Material="Neon"
		SideBeam.Enabled=true
		SideBeam.Range=20
		SideBeam.Parent.Material="Neon"	
		
		
	end
end)
