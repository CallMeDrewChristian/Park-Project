local m = script.Parent.Parent.Parent.Parent.Misc.RearDoor
local b = script.Parent.Parent
local Debounce = false
local first = false
function onChange()
	if script.Parent.EngineValue.Value == 0 then
		Off()
	elseif script.Parent.EngineValue.Value == 1 then
		Electrics()
	elseif script.Parent.EngineValue.Value == 2 and Debounce == false then
		Engine()
		nsscreen()
	end
end

function Off()
	b.EN1.engineoff:Play()
	script.Parent.ACEnable.Value = false
	script.Parent.HeatEnable.Value = false
	script.Parent.ScriptHeat.Disabled = true 
	script.Parent.ScriptAC.Disabled =true 
	script.Parent.IntLightsEnable.Value = false
	b.TopLight1.SurfaceLight.Enabled = false
	b.EN1.Idle.Volume = 0
	b.EN1.Engine.Volume = 0
	b.EN1.Heat.Volume = 0
	b.EN1.AC.Volume = 0
	
	b.LightParts.HLights.L1.Material = ("SmoothPlastic")
	script.Parent.HLValue.Value=0
end

function Electrics()
	b.IL2.Material = ("Neon")
	b.IL2.Transparency = 0
	b.TopLight1.SurfaceLight.Enabled = true
	b.LightParts.HLights.L1.Transparency = 0
	b.LightParts.HLights.L1.Material = ("Neon")
	script.Parent.HLValue.Value=1
	b.Destination.DisplayFront.SurfaceGui.Enabled = false
	b.Destination.DisplaySide.SurfaceGui.Enabled = false
	b.Destination.DisplayRear.SurfaceGui.Enabled = false
	wait(0.5)
	b.Horn.Tick1:Play()
	wait(0.5)
	b.Horn.Tick2:Play()
	b.Destination.DisplayFront.SurfaceGui.Enabled = true
	b.Destination.DisplaySide.SurfaceGui.Enabled = true
	b.Destination.DisplayRear.SurfaceGui.Enabled = true
	wait(1.5)
	b.Horn.Tick1:Play()
	wait(0.5)
	b.Horn.Tick2:Play()
	wait(1.5)
	b.Horn.Tick1:Play()
	wait(0.5)
	b.Horn.Tick2:Play()

end

function Engine()
	b.EN1.EngineStartup:Play()
	b.IL2.Material = ("SmoothPlastic")
	script.Parent.IntLightsEnable.Value = false
	b.TopLight1.SurfaceLight.Enabled = false
	
	b.LightParts.HLights.L1.Material = ("SmoothPlastic")
	script.Parent.HLValue.Value=0
	
	b.Destination.DisplayFront.SurfaceGui.Enabled = true
	b.Destination.DisplaySide.SurfaceGui.Enabled = true
	b.Destination.DisplayRear.SurfaceGui.Enabled = true
	wait(0.2)
	script.Parent.ScriptHeat.Disabled = false 
	script.Parent.ScriptAC.Disabled = false 
	script.Parent.HLValue.Value=1
	script.Parent.IntLightsEnable.Value = true
	b.EN1.Idle.Volume = 1
	b.EN1.Engine.Volume = 1
	b.TopLight1.SurfaceLight.Enabled = true
	
	b.LightParts.HLights.L1.Material = ("Neon")
	
	b.Destination.DisplayFront.SurfaceGui.Enabled = false
	b.Destination.DisplaySide.SurfaceGui.Enabled = false
	b.Destination.DisplayRear.SurfaceGui.Enabled = false
	wait(1.4)
	b.Destination.DisplayFront.SurfaceGui.Enabled = true
	b.Destination.DisplaySide.SurfaceGui.Enabled = true
	b.Destination.DisplayRear.SurfaceGui.Enabled = true
	b.RDL1.DoorSound:Stop()
end

function nsscreen()
	if first == false then
		local Sign = script.Parent.Parent.NNS.Screen.SurfaceGui.TextLabel
	Sign.Parent.Enabled = true
	Sign.Parent.Parent.SurfaceGui.Enabled = false
	Sign.Text = "11056103C 120 AA"
	wait(0.7)
	Sign.Text = ""
	wait(0.1)
	Sign.Text = "RTC FAIL"
	wait(0.7)
	Sign.Text = ""
	wait(0.1)
	Sign.Text = "32K RAM"
	wait(0.7)
	Sign.Text = ""
	wait(0.1)
	Sign.Text = game.Lighting.TimeOfDay
	wait(0.7)
	Sign.Text = ""
	wait(0.1)
	Sign.Text = "serial address = 01"
	wait(0.7)
	Sign.Text = ""
	wait(0.1)
	Sign.Parent.Enabled = false
	Sign.Parent.Parent.SurfaceGui.Enabled = true
	first = true
	end
end
script.Parent.EngineValue.Changed:Connect(onChange)