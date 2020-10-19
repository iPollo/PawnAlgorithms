// TeleportPlayerToPlayer Function
// Author: @Southclaws (Function from Southclaws/ScavengeSurvive)
// Original Post By: @iPollo
// Maintainers: @iPollo

// This function teleports one player to another, with extra checks
stock TeleportPlayerToPlayer(playerid, targetid){
	// Declaring the necessary variables
	new
		Float:playerXpos,
		Float:playerYpos,
		Float:playerZpos,
		Float:angleValue,
		Float:velocityXpos,
		Float:velocityYpos,
		Float:velocityZpos,
		virtualworld = GetPlayerVirtualWorld(targetid),
		interior = GetPlayerInterior(targetid);

	if(IsPlayerInAnyVehicle(targetid)){
		new vehicleid = GetPlayerVehicleID(targetid);
		GetVehiclePos(vehicleid, playerXpos, playerYpos, playerZpos);
		GetVehicleZAngle(vehicleid, angleValue);
		GetVehicleVelocity(vehicleid, velocityXpos, velocityYpos, velocityZpos);
		playerZpos += 2.0;
	}
	else{
		GetPlayerPos(targetid, playerXpos, playerYpos, playerZpos);
		GetPlayerFacingAngle(targetid, angleValue);
		GetPlayerVelocity(targetid, velocityXpos, velocityYpos, velocityZpos);
		playerXpos -= floatsin(-angleValue, degrees);
		playerYpos -= floatcos(-angleValue, degrees);
	}

	SetPlayerVirtualWorld(playerid, virtualworld);
	SetPlayerInterior(playerid, interior);

	if(IsPlayerInAnyVehicle(playerid)){
		new vehicleid = GetPlayerVehicleID(playerid);
		SetVehiclePos(vehicleid, playerXpos, playerYpos, playerZpos);
		SetVehicleZAngle(vehicleid, angleValue);
		SetVehicleVelocity(vehicleid, velocityXpos, velocityYpos, velocityZpos);
		SetVehicleVirtualWorld(vehicleid, virtualworld);
		LinkVehicleToInterior(vehicleid, interior);
	}
	else{
		SetPlayerPos(playerid, playerXpos, playerYpos, playerZpos);
		SetPlayerFacingAngle(playerid, angleValue);
		SetPlayerVelocity(playerid, velocityXpos, velocityYpos, velocityZpos);
	}
}