// IsVehicleUpsideDown Function
// Author: @Southclaws (Function from Southclaws/ScavengeSurvive)
// Original Post By: @iPollo
// Maintainers: @iPollo

// This function checks whether a vehicle is upside down.
stock IsVehicleUpsideDown(vehicleid)
{
    // Declaring the necessary variables
	new
		Float:w,
		Float:x,
		Float:y,
		Float:z;

    // Here we get the vehicle rotation on all axes as a quaternion.
	GetVehicleRotationQuat(vehicleid, w, x, y, z);
    
    // Here we reverse the angles and get inversed value of an arc tangent of y/x, expressed in radians.
	new Float:angle = atan2(((y * z) + (w * x)) * 2.0, (w * w) - (x * x) - (y * y) + (z * z));

    // Now we check based on the angle we got
	return ((angle > 90.0) || (angle < -90.0));
}