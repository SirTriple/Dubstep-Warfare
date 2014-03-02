AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
 
include( 'shared.lua' )

// Some gamemode base settings

function GM:PlayerSpawn( ply )
    self.BaseClass:PlayerSpawn( ply )   
 
    ply:SetGravity  ( 1 )  
    ply:SetMaxHealth( 100, true )  
 
    ply:SetWalkSpeed( 190 )  
    ply:SetRunSpeed ( 235 ) 
 
end

// What you get when you spawn

function GM:PlayerLoadout( ply )

	ply:SetArmor( 5 )
	
// Making teams fair
 
local team = math.random( 1, 2 )
	if team = 1 then
		ply:SetTeam( 1 )
	elseif
		team = 2 then 
			ply:SetTeam( 2 )
		end
	end
	
end

function GM:PlayerInitialSpawn( ply )
	   ply:PrintMessage( HUD_PRINTTALK, "Welcome, " .. ply:Name() .. "to Dubstep WarFare, a gamemode by Triple and Boss" )
end



