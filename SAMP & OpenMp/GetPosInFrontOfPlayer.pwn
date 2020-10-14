// GetPosInFrontOfPlayer Function
// This function is as an example function in the documentation of SA-MP functions see more: https://www.open.mp/docs/scripting/functions/floatsin
// Original Post By: @iPollo
// Maintainers: @iPollo

// This function returns the coordinates of the position in front of the player, based on a given distance.
stock GetPosInFrontOfPlayer(playerid, Float:distance, &Float:x, &Float:y, &Float:z){
    if (GetPlayerPos(playerid, x, y, z)){ // First of all, we need to get the actual player position.
       
        new Float:z_angle;
        GetPlayerFacingAngle(playerid, z_angle);
        x += distance * floatsin(-z_angle, degrees); // angles in GTA go counter-clockwise, so we need to reverse the retrieved angle
        y += distance * floatcos(-z_angle, degrees);
        return 1; // return 1 on success, the actual coordinates are returned by reference
    }
    return 0; // return 0 if the player isn't connected
}
// GetPosInFrontOfPlayer
// INPUT: (1, 10, x, y, z) These parameters will return, 10 of distance away from the player, the coordinates of that position.
// OUTPUT: The function will return the values ​​by reference to the variables that you pass as parameters in it.