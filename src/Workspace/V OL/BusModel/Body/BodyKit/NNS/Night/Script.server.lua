local Sign = script.Parent.Parent.Screen.SurfaceGui.TextLabel
local Sign2 = script.Parent.Parent.Screen.SurfaceGui.TextLabel2
local LocalDisplay1 = script.Parent.Parent.localstops1
local DisplayExpress1 = script.Parent.Parent.expressstops1
local otherbuttons = script.Parent.Parent

function onClicked()
	Sign.Visible = true
	Sign2.Visible = false
	script.Parent.Parent.Screen.RepeatScript.Disabled = true
	script.Parent.ClickDetector.MaxActivationDistance = 0
	otherbuttons.Local1.ClickDetector.MaxActivationDistance = 0
	otherbuttons.Express1.ClickDetector.MaxActivationDistance = 0
	otherbuttons.SignReset.ClickDetector.MaxActivationDistance = 0
	otherbuttons.Shuttle.ClickDetector.MaxActivationDistance = 0
	otherbuttons.SystemPaused.ClickDetector.MaxActivationDistance = 0
	otherbuttons.MoveBack.ClickDetector.MaxActivationDistance = 0
	script.Parent.beep:Play()
	script.Parent.Parent.speaker.nightservice:Play()
	Sign.Text = "Night Stop Announcements"
	wait(1.5)
	Sign.Text = ""
	script.Parent.ClickDetector.MaxActivationDistance = 20
	otherbuttons.Local1.ClickDetector.MaxActivationDistance = 20
	otherbuttons.Express1.ClickDetector.MaxActivationDistance = 20
	otherbuttons.SignReset.ClickDetector.MaxActivationDistance = 20
	otherbuttons.Shuttle.ClickDetector.MaxActivationDistance = 20
	otherbuttons.SystemPaused.ClickDetector.MaxActivationDistance = 20
	otherbuttons.MoveBack.ClickDetector.MaxActivationDistance = 20
end

script.Parent.ClickDetector.MouseClick:connect(onClicked)