local Sign = script.Parent.Parent.Screen.SurfaceGui.TextLabel
local Sign2 = script.Parent.Parent.Screen.SurfaceGui.TextLabel2
local otherbuttons = script.Parent.Parent

function onClicked()
	Sign.Visible = true
	Sign2.Visible = false
	script.Parent.Parent.Screen.RepeatScript.Disabled = true
	script.Parent.ClickDetector.MaxActivationDistance = 0
	otherbuttons.Local1.ClickDetector.MaxActivationDistance = 0
	otherbuttons.Express1.ClickDetector.MaxActivationDistance = 0
	otherbuttons.Night.ClickDetector.MaxActivationDistance = 0
	otherbuttons.Shuttle.ClickDetector.MaxActivationDistance = 0
	otherbuttons.SystemPaused.ClickDetector.MaxActivationDistance = 0
	otherbuttons.MoveBack.ClickDetector.MaxActivationDistance = 0
	Sign.Parent.Enabled = true
	Sign.Parent.Parent.SurfaceGui.Enabled = false
	script.Parent.beep:Play()
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
	script.Parent.ClickDetector.MaxActivationDistance = 20
	otherbuttons.Local1.ClickDetector.MaxActivationDistance = 20
	otherbuttons.Express1.ClickDetector.MaxActivationDistance = 20
	otherbuttons.Night.ClickDetector.MaxActivationDistance = 20
	otherbuttons.Shuttle.ClickDetector.MaxActivationDistance = 20
	otherbuttons.SystemPaused.ClickDetector.MaxActivationDistance = 20
	otherbuttons.MoveBack.ClickDetector.MaxActivationDistance = 20
end

script.Parent.ClickDetector.MouseClick:connect(onClicked)