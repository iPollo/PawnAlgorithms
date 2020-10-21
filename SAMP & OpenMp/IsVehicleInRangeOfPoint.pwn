// IsVehicleInRangeOfPoint Function
// Author: @Southclaws (Function from Southclaws/ScavengeSurvive)
// Original Post By: @iPollo
// Maintainers: @iPollo

// This function returns the distance between three points in a three-dimensional space (need to the other function)
stock Float:GetDistance3D(Float:xPosPoint1, Float:yPosPoint1, Float:zPosPoint1, Float:xPosPoint2, Float:yPosPoint2, Float:zPosPoint2)
	return floatsqroot((((xPosPoint1-xPosPoint2)*(xPosPoint1-xPosPoint2))+((yPosPoint1-yPosPoint2)*(yPosPoint1-yPosPoint2))+((zPosPoint1-zPosPoint2)*(zPosPoint1-zPosPoint2))));

// This function checks whether a given vehicle is within a given range for a given position.
stock IsVehicleInRangeOfPoint(vehicleid, Float:range, Float:pointX, Float:pointY, Float:pointZ){
    // Declaring the necessary variables
	new
		Float:vehicleX,
		Float:vehicleY,
		Float:vehicleZ;

    // Here we get the actual vehicle position
	GetVehiclePos(vehicleid, vehicleX, vehicleY, vehicleZ);

    // Now we get the distance from the point and check if it is within the range
	if(GetDistance3D(pointX, pointY, pointZ, vehicleX, vehicleY, vehicleZ) < range) return 1; 

    // If not return 0 (false)
	return 0;
}