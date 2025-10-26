while wait() do
if script.Parent.Velocity.Magnitude > 5 then
if script.Parent.Engine.IsPlaying == false then
script.Parent.Engine:Play()
end
script.Parent.Engine.Pitch = 1 + script.Parent.Velocity.Magnitude/80
script.Parent.Idle:Stop()
else
script.Parent.Engine:Stop()
if script.Parent.Idle.IsPlaying == false then
    script.Parent.Idle:Play()
end
script.Parent.Idle.Pitch = 1 + script.Parent.Velocity.Magnitude/260
end
end

