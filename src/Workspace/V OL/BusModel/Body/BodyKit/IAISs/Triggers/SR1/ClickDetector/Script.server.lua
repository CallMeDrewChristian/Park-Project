function onClick(player)
script.Parent.Parent.Parent.Parent.Emitter.SREnabled.Value = 1
script.Parent.MaxActivationDistance = 0
script.Parent.Parent.Parent.SR2.ClickDetector.MaxActivationDistance = 0
script.Parent.Parent.Parent.SR3.ClickDetector.MaxActivationDistance = 0
end
script.Parent.MouseClick:Connect(onClick)