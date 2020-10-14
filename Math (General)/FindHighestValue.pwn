// Find Highest Value Algorithm
// Original Post By: @iPollo
// Maintainers: @iPollo

// This algorithm finds the highest value in a number chain for a given Array
// It loops through the Array, starting with the index "0" as the highest value.
// In this loop, it checks the current value against the current Array index value,
// if our current value is less than the value contained in this given array index
// the program assigns the array value to our 'currentMaxValue' variable and so on.

// So for example, if we have the list of values: 4 7 3 2 8 3
// The initial 'currentMaxValue' will be 4, then will see the next index,
// 7 is greater than ours 'currentMaxValue' so this value will be assigned to our variable.
// Our currentMaxValue is greater than 3 and 2, so nothing will happen here, but 
// 8 is greater than ours 'currentMaxValue' (wich is 7) so this value will be assigned to our variable.
// And so the code determines the highest value.

stock FindHighestValue(baseArray[], arraySize) { 
    new currentMaxValue = baseArray[0]; // Determines index "0" as the highest initial value
    for (new i = 1; i < arraySize; i++) // Loops
        if (baseArray[i] > currentMaxValue) currentMaxValue = baseArray[i]; // Checks if it is greater, if so, 'currentMaxValue' assumes this value.
    return currentMaxValue; // Returns the highest value
} 
// FindHighestValue
// INPUT: 42 99 8 61 42 25 98 7 67 50
// OUTPUT: 99

// This function is optional to test the algorithm, just select
// a value in 'arraySize' and the code will generate random values 
// for each index, printing them out then finding the highest value.
stock testFunction() {
    const arraySize = 10;
    new testArray[arraySize];
    for (new i = 0; i < arraySize; i++) { testArray[i] = random(100); printf("Index[%i]: %d", i, testArray[i]); }
    printf("Highest Value: %d", FindHighestValue(testArray, arraySize));
}