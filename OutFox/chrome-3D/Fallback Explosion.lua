--If a Command has "NOTESKIN:GetMetricA" in it, that means it gets the command from the metrics.ini, else use function(self) to define command.
--If you dont know how "NOTESKIN:GetMetricA" works here is an explanation.
--NOTESKIN:GetMetricA("The [Group] in the metrics.ini", "The actual Command to fallback on in the metrics.ini");

--The NOTESKIN:LoadActor() just tells us the name of the image the Actor redirects on.
--Oh and if you wonder about the "Button" in the "NOTESKIN:LoadActor( )" it means that it will check for that direction.
--So you dont have to do "Down" or "Up" or "Left" etc for every direction which will save space ;)
local cw5 = BoostColor(JudgmentLineToColor("JudgmentLine_W5"), 1.1)
local cw4 = BoostColor(JudgmentLineToColor("JudgmentLine_W4"), 1.1)
local cw3 = BoostColor(JudgmentLineToColor("JudgmentLine_W3"), 1.1)
local cw2 = BoostColor(JudgmentLineToColor("JudgmentLine_W2"), 1.1)
local cw1 = BoostColor(JudgmentLineToColor("JudgmentLine_W1"), 1.1)
local cwpro5 = BoostColor(JudgmentLineToColor("JudgmentLine_ProW5"), 1.2)
local cwpro4 = BoostColor(JudgmentLineToColor("JudgmentLine_ProW4"), 1.2)
local cwpro3 = BoostColor(JudgmentLineToColor("JudgmentLine_ProW3"), 1.2)
local cwpro2 = BoostColor(JudgmentLineToColor("JudgmentLine_ProW2"), 1.2)
local cwpro1 = BoostColor(JudgmentLineToColor("JudgmentLine_ProW1"), 1.2)

return Def.ActorFrame {
	--Hold Explosion Commands
	NOTESKIN:LoadActor( Var "Button", "Hold Explosion" ) .. {
		HoldingOnCommand=NOTESKIN:GetMetricA("HoldGhostArrow", "HoldingOnCommand");
		HoldingOffCommand=NOTESKIN:GetMetricA("HoldGhostArrow", "HoldingOffCommand");
		InitCommand=function(self) self:playcommand("HoldingOff"):finishtweening() end;
	},
	--Roll Explosion Commands
	NOTESKIN:LoadActor( Var "Button", "Hold Explosion" ) .. {
		RollOnCommand=NOTESKIN:GetMetricA("HoldGhostArrow", "RollOnCommand");
		RollOffCommand=NOTESKIN:GetMetricA("HoldGhostArrow", "RollOffCommand");
		InitCommand=function(self) self:playcommand("RollOff"):finishtweening() end;
	},
	--Dim Explosion Commands
	NOTESKIN:LoadActor( Var "Button", "Tap Explosion Dim" ) .. {
		InitCommand=function(self) self:diffusealpha(0) end,
		W5Command=function (self) self:finishtweening():stopeffect():diffuse(cw5):diffusealpha(1.2):zoom(1.1):accelerate(0.15):zoom(1):diffusealpha(0) end,
		W4Command=function (self) self:finishtweening():stopeffect():diffuse(cw4):diffusealpha(1.2):zoom(1.1):accelerate(0.15):zoom(1):diffusealpha(0) end,
		W3Command=function (self) self:finishtweening():stopeffect():diffuse(cw3):diffusealpha(1.2):zoom(1.1):accelerate(0.15):zoom(1):diffusealpha(0) end,
		W2Command=function (self) self:finishtweening():stopeffect():diffuse(cw2):diffusealpha(1.2):zoom(1.1):accelerate(0.15):zoom(1):diffusealpha(0) end,
		W1Command=function (self) self:finishtweening():diffuse(cw1):diffusealpha(1.2):zoom(1.1):accelerate(0.15):zoom(1):diffusealpha(0):glowshift():effectperiod(0.05):effectcolor1(1,1,1,0):effectcolor2(1,1,1,0.5) end,
		ProW1Command=function (self) self:finishtweening():diffuse(cwpro1):diffusealpha(1.2):zoom(1.2):accelerate(0.15):zoom(1):diffusealpha(0):glowshift():effectperiod(0.05):effectcolor1(1,1,1,0):effectcolor2(1,1,1,0.5) end,
		ProW2Command=function (self) self:finishtweening():diffuse(cwpro2):diffusealpha(1.2):zoom(1.2):accelerate(0.15):zoom(1):diffusealpha(0):glowshift():effectperiod(0.05):effectcolor1(1,1,1,0):effectcolor2(1,1,1,0.5) end,
		ProW3Command=function (self) self:finishtweening():diffuse(cwpro3):diffusealpha(1.2):zoom(1.2):accelerate(0.15):zoom(1):diffusealpha(0):glowshift():effectperiod(0.05):effectcolor1(1,1,1,0):effectcolor2(1,1,1,0.5) end,
		ProW4Command=function (self) self:finishtweening():diffuse(cwpro4):diffusealpha(1.2):zoom(1.2):accelerate(0.15):zoom(1):diffusealpha(0):glowshift():effectperiod(0.05):effectcolor1(1,1,1,0):effectcolor2(1,1,1,0.5) end,
		ProW5Command=function (self) self:finishtweening():diffuse(cwpro5):diffusealpha(1.2):zoom(1.2):accelerate(0.15):zoom(1):diffusealpha(0):glowshift():effectperiod(0.05):effectcolor1(1,1,1,0):effectcolor2(1,1,1,0.5) end,
		JudgmentCommand=function(self) self:finishtweening() end,
		BrightCommand=function(self) self:visible(true) end,
		DimCommand=function(self) self:visible(true) end
	},
	NOTESKIN:LoadActor( Var "Button", "Tap Explosion Dim" ) .. {
		InitCommand=function(self) self:diffusealpha(0) end,
		HeldCommand=function (self) self:finishtweening():stopeffect():diffuse(cw2):diffusealpha(1.2):zoom(1.1):accelerate(0.09):zoom(1):diffusealpha(0) end,
		BrightCommand=function(self) self:visible(true) end,
		DimCommand=function(self) self:visible(true) end
	},
	--Mine Explosion Commands
	NOTESKIN:LoadActor( Var "Button", "HitMine Explosion" ) .. {
		InitCommand=function(self) self:blend("BlendMode_Add"):diffusealpha(0) end,
		HitMineCommand=NOTESKIN:GetMetricA("GhostArrowBright", "HitMineCommand")
	}
}