local Sign = script.Parent.Parent.Screen.SurfaceGui.TextLabel
local Sign2 = script.Parent.Parent.Screen.SurfaceGui.TextLabel2
local otherbuttons = script.Parent.Parent

function onClicked()
	Sign.Visible = true
	Sign2.Visible = false
	script.Parent.Parent.Screen.RepeatScript.Disabled = true
	script.Parent.ClickDetector.MaxActivationDistance = 0
	otherbuttons.Express1.ClickDetector.MaxActivationDistance = 0
	otherbuttons.Night.ClickDetector.MaxActivationDistance = 0
	otherbuttons.SignReset.ClickDetector.MaxActivationDistance = 0
	otherbuttons.Shuttle.ClickDetector.MaxActivationDistance = 0
	otherbuttons.SystemPaused.ClickDetector.MaxActivationDistance = 0
	otherbuttons.Local1.ClickDetector.MaxActivationDistance = 0
	script.Parent.beep:Play()
	script.Parent.Parent.speaker.moveback:Play()
	Sign.Text = "Please Move To The Back"
	wait(1)
	Sign.Text = "Of The Vehicle"
	wait(1)
	Sign.Text = "Please Move To The Back"
	wait(1)
	Sign.Text = "Of The Vehicle"
	wait(0.1)
	Sign.Text = ""
	script.Parent.ClickDetector.MaxActivationDistance = 20
	otherbuttons.Express1.ClickDetector.MaxActivationDistance = 20
	otherbuttons.Night.ClickDetector.MaxActivationDistance = 20
	otherbuttons.SignReset.ClickDetector.MaxActivationDistance = 20
	otherbuttons.Shuttle.ClickDetector.MaxActivationDistance = 20
	otherbuttons.SystemPaused.ClickDetector.MaxActivationDistance = 20
	otherbuttons.Local1.ClickDetector.MaxActivationDistance = 20
end

script.Parent.ClickDetector.MouseClick:connect(onClicked)