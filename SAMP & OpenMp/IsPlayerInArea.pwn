// IsVehicleUpsideDown Function
// Author: @Southclaws (Function from Southclaws/ScavengeSurvive)
// Original Post By: @iPollo
// Maintainers: @iPollo

// This function checks if a player is in a certain area given the minimum and maximum coordinates
stock IsPlayerInArea(playerid, Float:MinX, Float:MinY, Float:MaxX, Float:MaxY){
	// Declaring the necessary variables
    new
		Float:x,
		Float:y,
		Float:pz;

    // Get the player position to compare
	GetPlayerPos(playerid,x,y,pz);

    // Now we check if the player is within the given limits, if so return true
	if(x >= MinX && x < MaxX && y >= MinY && y < MaxY)
		return 1;

    // If not return false
	return 0;
}