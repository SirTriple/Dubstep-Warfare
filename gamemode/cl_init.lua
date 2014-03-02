include( 'shared.lua' )

function CoolHUD() // Creating my sexy yet basic custom HUD

	local ply = LocalPlayer()
	local HP = ply:Health()
	local Armor = ply:Armor()

	draw.RoundedBox( 4, 130, 1000, 300, 50, Color( 0, 255, 500, 100) )
	draw.RoundedBox( 4, 130, 920, 300, 50, Color( 100, 255, 500, 100) )
	draw.RoundedBox( 4, 130, 1000, math.Clamp( HP, 0, 200)*3, 50, Color( 255, 0, 0, 255) )
	draw.RoundedBox( 4, 130, 1000, math.Clamp( HP, 0, 200)*3, 50, Color( 255, 0, 0, 255) )
	draw.RoundedBox( 4, 130, 920, math.Clamp( Armor, 0, 200)*3, 50, Color( 0, 0, 255, 255) )
	
end

hook.Add( "HUDPaint", "CoolHUD", CoolHUD )

function GM:HUDPaint( ply ) // Creating and adding the "Health" and "Armor" text on screen
surface.CreateFont("ScoreboardText", {
size = 20,
weight = 900,
antialias = true,
shadow = false,
font = "Arial"})
	draw.SimpleText("Health", "ScoreboardText", 75, 1015, Color(255,255,255,255))
	draw.SimpleText("Armor", "ScoreboardText", 75, 925, Color(255,255,255,255))
	
end

function hidehud(name) // Remove the shit default HUD
	for k, v in pairs({"CHudHealth", "CHudBattery", "CHudAmmo", "CHudSecondaryAmmo", })do
		if name == v then return false end
	end
end

hook.Add("HUDShouldDraw", "HideOurHud:D", hidehud)