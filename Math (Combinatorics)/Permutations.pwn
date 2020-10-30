// Permutations Algorithm
// Original Post By: @iPollo
// Maintainers: @iPollo

// This function calculates the total number of possible permutations using iteration
stock Permutations(numberOfElements, numberOfSelectedElements){

    // We first need to verify that if it is a valid set of elements
    if(numberOfSelectedElements > numberOfElements) return 0;

    //Declaring a base variable to hold the returning value.
	new baseResult = numberOfElements;

    // Here we loop applying the principle of counting in mathematics.
	for(new i = 1; i < numberOfSelectedElements; i++)
		baseResult *= numberOfElements - i;

    // So we return de value.
	return baseResult;
}
// Permutations
// INPUT: (10, 5)
// OUTPUT: 30240
