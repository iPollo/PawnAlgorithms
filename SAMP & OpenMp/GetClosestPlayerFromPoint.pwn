// GetClosestPlayerFromPoint Function
// Author: @Southclaws (Function from Southclaws/ScavengeSurvive)
// Original Post By: @iPollo
// Maintainers: @iPollo

// This function returns the distance between three points in a three-dimensional space (need to the other function)
stock Float:GetDistance3D(Float:xPosPoint1, Float:yPosPoint1, Float:zPosPoint1, Float:xPosPoint2, Float:yPosPoint2, Float:zPosPoint2)
	return floatsqroot((((xPosPoint1-xPosPoint2)*(xPosPoint1-xPosPoint2))+((yPosPoint1-yPosPoint2)*(yPosPoint1-yPosPoint2))+((zPosPoint1-zPosPoint2)*(zPosPoint1-zPosPoint2))));

// This function returns the closest player in a given range at a given point.
// You can also put an exception id if you don't want a specific player to be part of the search.
stock GetClosestPlayerFromPoint(Float:pointX, Float:pointY, Float:pointZ, &Float:range = 10000.0, exceptionid = INVALID_PLAYER_ID){
	// Declaring the necessary variables
    new
		Float:playerX,
		Float:playerY,
		Float:playerZ,
		Float:distance,
		closestplayer = -1;

    // Looping through the players
	foreach(new i : Player){

        // Check if it is the exceptionid
		if(i == exceptionid) continue;

        // If not, get the player position and then get his distance from the point
		GetPlayerPos(i, playerX, playerY, playerZ);
		distance = GetDistance3D(playerX, playerY, playerZ, pointX, pointY, pointZ);

        // Check if he is inside the given range
        // If he is, save his ID to return later
		if(distance < range){
			range = distance;
			closestplayer = i;
		}
	}

    // Return the player ID
	return closestplayer;
}