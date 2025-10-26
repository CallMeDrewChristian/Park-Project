local Destination = script.Parent.Parent.Destination
local Route = Destination.Route
local Slide1 = Destination.Slide1
local Slide2 = Destination.Slide2
local Slide3 = Destination.Slide3
local PR = Destination.PR
local S1Lines
local S2Lines
local S3Lines
local PRLines
local RouteNum = script.Parent.SurfaceGui.Num
local L1 = script.Parent.SurfaceGui.Route
local L2 = script.Parent.SurfaceGui.Dest
local L1Single = script.Parent.SurfaceGui.CS2
local PRSingle = script.Parent.SurfaceGui.CS1
script.Parent.Parent.DestOn.Changed:Connect(function()
	if script.Parent.Parent.DestOn.Value == false then
		script.Parent.SurfaceGui.Enabled = false
		RouteNum.Text = ""
		L1.Text = ""
		L2.Text = ""
		L1Single.Text = ""
		PRSingle.Text = ""
	elseif script.Parent.Parent.DestOn.Value == true then
		script.Parent.SurfaceGui.Enabled = true
		RouteNum.Text = ""
		L1.Text = ""
		L2.Text = ""
		L1Single.Text = ""
		PRSingle.Text = ""
		RouteNum.Visible = true
		L1.Visible = true
		L2.Visible = true
		L1Single.Visible = true
		PRSingle.Visible = true

		if Slide1.S1L1.Value == "" and Slide1.S1L2.Value == "" then
			S1Lines = 0
		elseif Slide1.S1L1.Value ~= "" and Slide1.S1L2.Value == "" then
			S1Lines = 1
		elseif Slide1.S1L1.Value ~= "" and Slide1.S1L2.Value ~= "" then
			S1Lines = 2
		end

		if Slide2.S2L1.Value == "" and Slide2.S2L2.Value == "" then
			S2Lines = 0
		elseif Slide2.S2L1.Value ~= "" and Slide2.S2L2.Value == "" then
			S2Lines = 1
		elseif Slide2.S2L1.Value ~= "" and Slide2.S2L2.Value ~= "" then
			S2Lines = 2
		end

		if Slide3.S3L1.Value == "" and Slide3.S3L2.Value == "" then
			S3Lines = 0
		elseif Slide3.S3L1.Value ~= "" and Slide3.S3L2.Value == "" then
			S3Lines = 1
		elseif Slide3.S3L1.Value ~= "" and Slide3.S3L2.Value ~= "" then
			S3Lines = 2
		end

		if PR.PRL1.Value == "" and PR.PRL2.Value == "" then
			PRLines = 0
		elseif PR.PRL1.Value ~= "" and PR.PRL2.Value == "" then
			PRLines = 1
		elseif PR.PRL1.Value ~= "" and PR.PRL2.Value ~= "" then
			PRLines = 2
		end
		repeat
			wait()
			RouteNum.Text = Route.RouteNum.Value
			--Single Line & No Route Alt--
			if script.Parent.Parent.DestOn.Value == true and Slide1.S1L1.Value ~= "" and Route.SingleSideDest.Value == true and Route.SideDestAlt.Value == false then
				L1.Text = Slide1.S1L1.Value
				L1Single.Text = ""
				L2.Text = ""
				PRSingle.Text = ""
				wait(2.5)
			end
			if script.Parent.Parent.DestOn.Value == true and Slide1.S1L2.Value ~= "" and Slide1.S1L2.Value ~= Slide1.S1L1.Value and Route.SingleSideDest.Value == true and Route.SideDestAlt.Value == false then
				L1.Text = Slide1.S1L2.Value
				L1Single.Text = ""
				L2.Text = ""
				PRSingle.Text = ""
				wait(2.5)
			end
			if script.Parent.Parent.DestOn.Value == true and Slide2.S2L1.Value ~= "" and Slide2.S2L1.Value ~= Slide1.S1L2.Value and Slide2.S2L1.Value ~= Slide1.S1L1.Value and Route.SingleSideDest.Value == true and Route.SideDestAlt.Value == false  then
				L1.Text = Slide2.S2L1.Value
				L1Single.Text = ""
				L2.Text = ""
				PRSingle.Text = ""
				wait(2.5)
			end
			if script.Parent.Parent.DestOn.Value == true and Slide2.S2L2.Value ~= "" and Slide2.S2L2.Value ~= Slide2.S2L1.Value and Slide2.S2L2.Value ~= Slide1.S1L2.Value and Slide2.S2L2.Value ~= Slide1.S1L1.Value and Route.SingleSideDest.Value == true and Route.SideDestAlt.Value == false  then
				L1.Text = Slide2.S2L2.Value
				L1Single.Text = ""
				L2.Text = ""
				PRSingle.Text = ""
				wait(2.5)
			end
			if script.Parent.Parent.DestOn.Value == true and Slide3.S3L1.Value ~= "" and Slide3.S3L1.Value ~= Slide2.S2L2.Value and Slide3.S3L1.Value ~= Slide2.S2L1.Value and Slide3.S3L1.Value ~= Slide1.S1L2.Value and Slide3.S3L1.Value ~= Slide1.S1L1.Value and Route.SingleSideDest.Value == true and Route.SideDestAlt.Value == false  then
				L1.Text = Slide3.S3L1.Value
				L1Single.Text = ""
				L2.Text = ""
				PRSingle.Text = ""
				wait(2.5)
			end
			if script.Parent.Parent.DestOn.Value == true and Slide3.S3L2.Value ~= "" and Slide3.S3L2.Value ~= Slide3.S3L1.Value and Slide3.S3L2.Value ~= Slide2.S2L2.Value and Slide3.S3L2.Value ~= Slide2.S2L1.Value and Slide3.S3L2.Value ~= Slide1.S1L2.Value and Slide3.S3L2.Value ~= Slide1.S1L1.Value and Route.SingleSideDest.Value == true and Route.SideDestAlt.Value == false  then
				L1.Text = Slide3.S3L2.Value
				L1Single.Text = ""
				L2.Text = ""
				PRSingle.Text = ""
				wait(2.5)
			end
			if script.Parent.Parent.DestOn.Value == true and PR.PRL1.Value ~= "" and Route.SingleSideDest.Value == true and Route.SideDestAlt.Value == false  then
				RouteNum.Text = ""
				L1.Text = ""
				L1Single.Text = ""
				L2.Text = ""
				PRSingle.Text = PR.PRL1.Value 
				wait(2.5)
			end
			if script.Parent.Parent.DestOn.Value == true and PR.PRL2.Value ~= ""  and PR.PRL2.Value ~= PR.PRL1.Value and Route.SingleSideDest.Value == true and Route.SideDestAlt.Value == false  then
				RouteNum.Text = ""
				L1.Text = ""
				L1Single.Text = ""
				L2.Text = ""
				PRSingle.Text = PR.PRL2.Value
				wait(2.5)
			end
		until script.Parent.Parent.DestOn.Value == false
	end
end)