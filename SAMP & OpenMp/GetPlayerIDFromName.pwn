// GetPlayerIDFromName Function
// Author: @Southclaws (Function from Southclaws/ScavengeSurvive)
// Original Post By: @iPollo
// Maintainers: @iPollo

// This function returns the player's ID by name, with the possibility of entering only part of the name.
stock GetPlayerIDFromName(const name[], bool:ignorecase = false, bool:partialname = false)
{
    // Declaring the necessary variables
	new
		playerid = INVALID_PLAYER_ID,
		comparison[MAX_PLAYER_NAME];

	if(partialname) // We check if the parameter has been set to true
	{
        // Loop through the players
		foreach(new i : Player)
		{
            // Get the player name of that index ID
			GetPlayerName(i, comparison, MAX_PLAYER_NAME);

            // Checks whether part of the name entered is actually in the player's name
			if(!strfind(comparison, name, ignorecase))
			{
                // If finds, we break the loop and set our variable to return it later.
				playerid = i;
				break;
			}
		}
	}
	else // If the parameter was not set to true, we check the full name
	{
        // Loop through the players
		foreach(new i : Player)
		{
            // Get the player name of that index ID
			GetPlayerName(i, comparison, MAX_PLAYER_NAME);

            // We compare all the given name with the name we have
			if(!strcmp(name, comparison, ignorecase))
			{
                // If is equal, we break the loop and set our variable to return it later.
				playerid = i;
				break;
			}
		}
	}

    // Return our variable
	return playerid;
}