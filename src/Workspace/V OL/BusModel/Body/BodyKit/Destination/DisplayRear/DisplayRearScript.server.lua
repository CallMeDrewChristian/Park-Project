local Destination = script.Parent.Parent.Destination
local Route = Destination.Route
local Slide1 = Destination.Slide1
local Slide2 = Destination.Slide2
local Slide3 = Destination.Slide3
local PR = Destination.PR
local RouteNum = script.Parent.SurfaceGui.Num
local L1Single = script.Parent.SurfaceGui.CS2
local PRSingle = script.Parent.SurfaceGui.CS1
script.Parent.Parent.DestOn.Changed:Connect(function()
	if script.Parent.Parent.DestOn.Value == false then
		script.Parent.SurfaceGui.Enabled = false
		RouteNum.Text = ""
		L1Single.Visible = false
		PRSingle.Visible = false
	elseif script.Parent.Parent.DestOn.Value == true then
		script.Parent.SurfaceGui.Enabled = true
		RouteNum.Text = Destination.Route.RouteNum.Value
		RouteNum.Visible = true
		L1Single.Visible = false
		PRSingle.Visible = false
	end
end)