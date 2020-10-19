// GetClosestPlayerFromPlayer Function
// Author: @Southclaws (Function from Southclaws/ScavengeSurvive)
// Original Post By: @iPollo
// Maintainers: @iPollo

// This function returns the distance between three points in a three-dimensional space (need to the other function)
stock Float:GetDistance3D(Float:xPosPoint1, Float:yPosPoint1, Float:zPosPoint1, Float:xPosPoint2, Float:yPosPoint2, Float:zPosPoint2)
	return floatsqroot((((xPosPoint1-xPosPoint2)*(xPosPoint1-xPosPoint2))+((yPosPoint1-yPosPoint2)*(yPosPoint1-yPosPoint2))+((zPosPoint1-zPosPoint2)*(zPosPoint1-zPosPoint2))));

// This function returns the closest player in a given range from the player
stock GetClosestPlayerFromPlayer(playerid, &Float:range = 10000.0){
    // Declaring the necessary variables
    new
		Float:playerX,
		Float:playerY,
		Float:playerZ,
        Float:closestPlayerX,
		Float:closestPlayerY,
		Float:closestPlayerZ,
		Float:distance,
		closestplayer = -1;

    // Getting the player position
	GetPlayerPos(playerid, playerX, playerY, playerZ);

    // Looping through the others
	foreach(new i : Player){

        // Getting their position and then getting the distance between they and the playerid
		GetPlayerPos(i, closestPlayerX, closestPlayerY, closestPlayerZ);
		distance = Distance(closestPlayerX, closestPlayerY, closestPlayerZ, playerX, playerY, playerZ);

        // Checking if they're in the range
		if(distance < range){
			lowestdistance = distance;
			closestplayer = i;
		}
	}

    // Returning the player (-1 if not found)
	return closestplayer;
}
