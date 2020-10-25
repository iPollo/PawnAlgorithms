// Average Algorithm
// Original Post By: @iPollo
// Maintainers: @iPollo, @coool9

// This function finds the average of certain numbers in an array.
stock Float:Average(const baseArray[], arraySize = sizeof(baseArray)) {

    // Declaring a base variable to hold the returning value.
    new Float:baseValue = 0;

    // Looping through the array and adding up all values.
    for (new i = 0 ; i < arraySize; i++)
        baseValue += float(baseArray[i]);

    // Returning the value;
    return baseValue / arraySize;
}
// Average
// INPUT: (arrayTest, 10) (Values in each index are respectively: 1, 2, 3, 4, 5, 6, 7, 8, 9)
// OUTPUT: 4.5
