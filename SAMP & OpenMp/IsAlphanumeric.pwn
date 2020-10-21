// IsAlphanumeric Function
// Author: @Southclaws (Function from Southclaws/ScavengeSurvive)
// Original Post By: @iPollo
// Maintainers: @iPollo

// This function checks whether a given character is alphanumeric
stock IsAlphanumeric(chr){

    // Here we check if its between a and z, A and Z, or 0 and 9.
	if('a' <= chr <= 'z' || 'A' <= chr <= 'Z' || '0' <= chr <= '9') return 1;
    return 0;
}
// IsAlphanumeric
// INPUT: 3
// OUTPUT: 1 (true)

// IsAlphanumeric
// INPUT: 'h'
// OUTPUT: 1 (true)

// IsAlphanumeric
// INPUT: '['
// OUTPUT: 0 (false)