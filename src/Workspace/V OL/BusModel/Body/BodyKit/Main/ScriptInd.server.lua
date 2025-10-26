local b = script.Parent.Parent
local lm = b.LightParts

function onChange()
	if script.Parent.IndicatorValue.Value == 0 then
		O()
	elseif script.Parent.IndicatorValue.Value == 1 then
		L()
	elseif script.Parent.IndicatorValue.Value == 2 then
		R()
	elseif script.Parent.IndicatorValue.Value == 3 then
		H()
	end
end

function O()
	while script.Parent.IndicatorValue.Value == 0 do
		b.Horn.blinkers.Volume = 0
		lm.LeftInd.LL1.Material = ("SmoothPlastic")
		lm.LeftInd.LL2.Material = ("SmoothPlastic")
		lm.LeftInd.LL3.Material = ("SmoothPlastic")
		lm.LeftInd.LL4.Material = ("SmoothPlastic")
	
		lm.RightInd.RL1.Material = ("SmoothPlastic")
		lm.RightInd.RL2.Material = ("SmoothPlastic")
		lm.RightInd.RL3.Material = ("Glass")
		lm.RightInd.RL4.Material = ("SmoothPlastic")
		wait(.5)
		lm.LeftInd.LL1.Material = ("SmoothPlastic")
		lm.LeftInd.LL3.Material = ("SmoothPlastic")
		lm.LeftInd.LL4.Material = ("SmoothPlastic")
	
		lm.RightInd.RL1.Material = ("SmoothPlastic")
		lm.RightInd.RL2.Material = ("SmoothPlastic")
		lm.RightInd.RL3.Material = ("Glass")
		lm.RightInd.RL4.Material = ("SmoothPlastic")
		wait(.5)
		if script.Parent.IndicatorValue.Value ~= 0 then
			b.Horn.blinkers.Volume = 0
			break
		end
	end
end

function R()
	while script.Parent.IndicatorValue.Value == 2 do
		b.Horn.blinkers.Volume = 0.25
		lm.LeftInd.LL1.Material = ("SmoothPlastic")
		lm.LeftInd.LL2.Material = ("SmoothPlastic")
		lm.LeftInd.LL3.Material = ("SmoothPlastic")
		lm.LeftInd.LL4.Material = ("SmoothPlastic")
	
		lm.RightInd.RL1.Material = ("SmoothPlastic")
		lm.RightInd.RL2.Material = ("SmoothPlastic")
		lm.RightInd.RL3.Material = ("Glass")
		lm.RightInd.RL4.Material = ("SmoothPlastic")
		wait(.5)
		lm.RightInd.RL1.Material = ("Neon")
		lm.RightInd.RL2.Material = ("Neon")
		lm.RightInd.RL3.Material = ("Neon")
		lm.RightInd.RL4.Material = ("Neon")
		wait(.5)
		if script.Parent.IndicatorValue.Value ~= 2 then
		b.Horn.blinkers.Volume = 0
		break
		end
	end
end

function L()
	while script.Parent.IndicatorValue.Value == 1 do
		b.Horn.blinkers.Volume = 0.25
		lm.LeftInd.LL1.Material = ("SmoothPlastic")
		lm.LeftInd.LL2.Material = ("SmoothPlastic")
		lm.LeftInd.LL3.Material = ("SmoothPlastic")
		lm.LeftInd.LL4.Material = ("SmoothPlastic")
	
		lm.RightInd.RL1.Material = ("SmoothPlastic")
		lm.RightInd.RL2.Material = ("SmoothPlastic")
		lm.RightInd.RL3.Material = ("Glass")
		lm.RightInd.RL4.Material = ("SmoothPlastic")
		wait(.5)
		lm.LeftInd.LL1.Material = ("Neon")
		lm.LeftInd.LL2.Material = ("Neon")
		lm.LeftInd.LL3.Material = ("Neon")
		lm.LeftInd.LL4.Material = ("Neon")
		wait(.5)
		if script.Parent.IndicatorValue.Value ~= 1 then
			b.Horn.blinkers.Volume = 0
			break
		end
	end
end

function H()
	while script.Parent.IndicatorValue.Value == 3 do
		b.Horn.blinkers.Volume = 0.25
		lm.LeftInd.LL1.Material = ("SmoothPlastic")
		lm.LeftInd.LL2.Material = ("SmoothPlastic")
		lm.LeftInd.LL3.Material = ("SmoothPlastic")
		lm.LeftInd.LL4.Material = ("SmoothPlastic")
	
		lm.RightInd.RL1.Material = ("SmoothPlastic")
		lm.RightInd.RL2.Material = ("SmoothPlastic")
		lm.RightInd.RL3.Material = ("Glass")
		lm.RightInd.RL4.Material = ("SmoothPlastic")
		wait(.5)
		lm.LeftInd.LL1.Material = ("Neon")
		lm.LeftInd.LL2.Material = ("Neon")
		lm.LeftInd.LL3.Material = ("Neon")
		lm.LeftInd.LL4.Material = ("Neon")
		
		lm.RightInd.RL1.Material = ("Neon")
		lm.RightInd.RL2.Material = ("Neon")
		lm.RightInd.RL3.Material = ("Neon")
		lm.RightInd.RL4.Material = ("Neon")
		wait(.5)
		if script.Parent.IndicatorValue.Value ~= 3 then
			b.Horn.blinkers.Volume = 0
			break
		end
	end
end

script.Parent.IndicatorValue.Changed:Connect(onChange)