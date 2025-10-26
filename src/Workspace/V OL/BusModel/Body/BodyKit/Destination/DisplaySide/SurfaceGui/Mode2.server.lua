--dest,cs1
while wait(0.1) do
script.Parent.Num.Visible = true
script.Parent.Route.Visible = true
script.Parent.Dest.Visible = false
script.Parent.CS1.Visible = false
wait(3)
script.Parent.Num.Visible = true
script.Parent.Route.Visible = false
script.Parent.Dest.Visible = true
script.Parent.CS1.Visible = false
wait(3)
script.Parent.Num.Visible = false
script.Parent.Route.Visible = false
script.Parent.Dest.Visible = false
script.Parent.CS1.Visible = true
wait(1.4)
end
