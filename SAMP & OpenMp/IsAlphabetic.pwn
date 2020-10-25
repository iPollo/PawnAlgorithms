// IsAlphabetic Function
// Author: @Southclaws (Function from Southclaws/ScavengeSurvive)
// Original Post By: @iPollo
// Maintainers: @iPollo

// This function checks whether a given character is alphabetic
stock IsAlphabetic(chr){

    // Here we check if its between a and z or A and Z.
	if('a' <= chr <= 'z' || 'A' <= chr <= 'Z') return 1;
	return 0;
}
// IsAlphabetic
// INPUT: 3
// OUTPUT: 0 (false)

// IsAlphabetic
// INPUT: 'h'
// OUTPUT: 1 (true)