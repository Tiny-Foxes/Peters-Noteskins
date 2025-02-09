--If a Command has "NOTESKIN:GetMetricA" in it, that means it gets the command from the metrics.ini, else use function(self) to define command.
--If you dont know how "NOTESKIN:GetMetricA" works here is an explanation.
--NOTESKIN:GetMetricA("The [Group] in the metrics.ini", "The actual Command to fallback on in the metrics.ini");

return Def.ActorFrame {
	Def.Sprite {
		Texture=NOTESKIN:GetPath( '_down', 'Receptor tex' ),
		InitCommand=function(self) self:effectclock("beat"):diffuseramp():effectcolor1(0.1,0.1,0.1,1):effectcolor2(1,1,1,1):effectperiod(0.5):effecttiming(0.25,0.50,0,0.25):effectoffset(-0.25) end,
		NoneCommand=NOTESKIN:GetMetricA("ReceptorArrow", "NoneCommand"),
		PressCommand=NOTESKIN:GetMetricA("ReceptorArrow", "PressCommand"),
		LiftCommand=NOTESKIN:GetMetricA("ReceptorArrow", "LiftCommand"),
		W5Command=NOTESKIN:GetMetricA("ReceptorArrow", "W5Command"),
		W4Command=NOTESKIN:GetMetricA("ReceptorArrow", "W4Command"),
		W3Command=NOTESKIN:GetMetricA("ReceptorArrow", "W3Command"),
		W2Command=NOTESKIN:GetMetricA("ReceptorArrow", "W2Command"),
		W1Command=NOTESKIN:GetMetricA("ReceptorArrow", "W1Command"),
		ProW1Command=NOTESKIN:GetMetricA("ReceptorArrow", "W1Command"),
		ProW2Command=NOTESKIN:GetMetricA("ReceptorArrow", "W1Command"),
		ProW3Command=NOTESKIN:GetMetricA("ReceptorArrow", "W1Command"),
		ProW4Command=NOTESKIN:GetMetricA("ReceptorArrow", "W1Command"),
		ProW5Command=NOTESKIN:GetMetricA("ReceptorArrow", "W1Command")
	},
	Def.Sprite {
		Texture=NOTESKIN:GetPath( '_down', 'Receptor tex' ),
		InitCommand=function(self) self:blend('add'):diffusealpha(0) end,
		NoneCommand=NOTESKIN:GetMetricA("ReceptorArrow", "NoneCommand"),
		PressCommand=function(self) self:diffusealpha(0.2) end,
		LiftCommand=function(self) self:diffusealpha(0) end,
		W5Command=NOTESKIN:GetMetricA("ReceptorArrow", "W5Command"),
		W4Command=NOTESKIN:GetMetricA("ReceptorArrow", "W4Command"),
		W3Command=NOTESKIN:GetMetricA("ReceptorArrow", "W3Command"),
		W2Command=NOTESKIN:GetMetricA("ReceptorArrow", "W2Command"),
		W1Command=NOTESKIN:GetMetricA("ReceptorArrow", "W1Command"),
		ProW1Command=NOTESKIN:GetMetricA("ReceptorArrow", "W1Command"),
		ProW2Command=NOTESKIN:GetMetricA("ReceptorArrow", "W1Command"),
		ProW3Command=NOTESKIN:GetMetricA("ReceptorArrow", "W1Command"),
		ProW4Command=NOTESKIN:GetMetricA("ReceptorArrow", "W1Command"),
		ProW5Command=NOTESKIN:GetMetricA("ReceptorArrow", "W1Command")
	},
}

--[[
Effecttiming Info

Effecttiming is one of the most anoying commands I have ever used
Because there was no one able to tell me how it works
But I found out how

The basic command is effecttiming,0,0,0,0
It is beat based so effecttiming,0.25,0.25,0.25,0.25 is equal as 1 beat (when you have effectclock,"beat" in use)
The first 0 is the amount of time to transfer from effectcolor1 to effectcolor2
The second 0 is the ammount of time effectcolor1 stays
The third 0 is the amount of time to transfer from effectcolor2 to effectcolor1
The last 0 is the ammount of tume effectcolor2 stays
Every 0 can change value to as high as possible

An example of effectcolor1 and effectcolor2 going from 1 color to the other with no transfer is effecttiming,0,0.50,0,0.50
An example of effectcolor1 and effectcolor2 going from effectcolor1 to the other with a transfer is effecttiming,0.25,0.50,0,0.25
]]
