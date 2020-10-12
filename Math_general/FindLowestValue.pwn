// Find Lowest Value Algorithm
// Original Post By: @iPollo
// Maintainers: @iPollo

// This algorithm finds the lowest value in a number chain for a given Array
// It loops through the Array, starting with the index "0" as the lowest value.
// In this loop, it checks the current value against the current Array index value,
// if our current value is greater than the value contained in this given array index
// the program assigns the array value to our 'currentMinValue' variable and so on.

// So for example, if we have the list of values: 4 7 3 2 8 3
// The initial 'currentMinValue' will be 4, then will see the next index,
// 7 is greater than ours 'currentMinValue' so this value will not be assigned to our variable.
// Our currentMinValue (wich is 4) is greater than 3, so this value will be assigned to our variable.
// Our currentMinValue (wich is 3) is now greater than 2, so this value will be assigned to our variable.
// 8 is greater than ours 'currentMinValue' (wich is 2) so this value will not be assigned to our variable.
// And so the code determines the lowest value.

stock FindLowestValue(baseArray[], arraySize) { 
    new currentMinValue = baseArray[0]; // Determines index "0" as the lowest initial value
    for (new i = 1; i < arraySize; i++)  // Loops
    	if (baseArray[i] < currentMinValue) currentMinValue = baseArray[i]; // Checks if it is lowest, if so, 'currentMainValue' assumes this value.
    return currentMinValue; // Returns the lowest value
} 
// FindHighestValue
// INPUT: 94 40 92 50 77 52 25 66 11 47
// OUTPUT: 11
  
// This function is optional to test the algorithm, just select
// a value in 'arraySize' and the code will generate random values 
// for each index, printing them out then finding the lowest value.
stock testFunction() {
    const arraySize = 10;
    new testArray[arraySize];
    for (new i = 0; i < arraySize; i++) { testArray[i] = random(100); printf("Index[%i]: %d", i, testArray[i]); }
    printf("Lowest Value: %d", FindLowestValue(testArray, arraySize));
}