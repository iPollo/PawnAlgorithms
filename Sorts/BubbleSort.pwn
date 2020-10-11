// Bubble Sort Algorithm
// Original Post By: @iPollo
// Maintainers: @iPollo

// This algorithm (Bubble Sort) orders a chain of numbers
// based on a single analysis between two values ​​in a loop.
// If, in the loop, the next value to be checked is less than
// the current value, the code simply changes the values ​​in the array, and so on.
// For more INFO: https://pt.wikipedia.org/wiki/Bubble_sort

// This model sorts the values ​​in ascending order from lowest to highest index.

// Function responsible for exchanging two values ​​in the array
stock swapValues(&value_1, &value_2) {
    new temp_Value = value_1;
    value_1 = value_2;
    value_2 = temp_Value;
}

// Main function, which loops through the array and sort the values.
stock bubbleSort(yourArray[], yourArraySize){
    for (new i = 0; i < yourArraySize - 1; i++){                
        new swapped = false;
        for (new j = 0; j < yourArraySize - 1 - i; j++)
            if (yourArray[j] > yourArray[j + 1]){  swapValues(yourArray[j], yourArray[j + 1]); swapped = true; }
        if (!swapped) break;
    }
}

// This function is optional to test the algorithm, just select
// a value in 'arraySize' and the code will generate random values 
// for each index, printing them out then sorting and printing them again.
stock testFunction() {
    const arraySize = 10;
    new testArray[arraySize];

    for (new i = 0; i < arraySize; i++) { testArray[i] = random(100); printf("Index[%i]: %d", i, testArray[i]); }

    bubbleSort(testArray, arraySize);
    print("----");

    for (new i = 0; i < arraySize; i++) { printf("Index[%i]: %d", i, testArray[i]); }
}
