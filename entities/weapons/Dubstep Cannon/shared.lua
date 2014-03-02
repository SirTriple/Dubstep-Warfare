
AddCSLuaFile( "shared.lua" )

SWEP.Author			= "Triple"
SWEP.Instructions	= "Power up the cannon!"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.ViewModel			= "models/weapons/v_IRifle.mdl"
SWEP.WorldModel			= "models/weapons/w_IRifle.mdl"

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Delay = .1
SWEP.Primary.Sound = "sound/fire_sound/main.mp3"


SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.PrintName			= "Dubstep Cannon"			
SWEP.Slot				= 3
SWEP.SlotPos			= 1
SWEP.DrawAmmo			= false
SWEP.DrawCrosshair		= false

local ShootSound = Sound("sound/fire_sound/main.mp3")

function SWEP:PrimaryAttack()

	self.Weapon:SetNextPrimaryFire( CurTime() + self.Primary.Delay )

	self.Weapon:EmitSound( ShootSound )
	self:ShootEffects( self )
	
	if (!SERVER) then return end
	
end

function SWEP:SecondaryAttack()
	
end

function SWEP:ShouldDropOnDie()
	return false
end