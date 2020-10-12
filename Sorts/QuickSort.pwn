// Quick Sort Algorithm
// Original Post By: @iPollo
// Maintainers: @iPollo

// This algorithm is responsible for ordering a given value chain in an Array.
// Compared to many other types of sort algorithms, this one becomes one of
// the most efficient as it uses recursion to organize values.
// Recursion is when a given function refers to itself, being called within its own structure.

// The function of the algorithm is based on the choice of what we call pivot,
// the choice of the pivot can very differentiate the efficiency of the algorithm.
// as a default, the first or last index of the array is adopted.
// But, in code, you can choose randomly. But know that the more average
// the pivot value is in relation to all the values ​​of the array, the better the algorithm will be.
// After the code establishes a pivot, a loop is performed through the array, organizing the
// values ​​lower than the pivot on the left and the largest on the right (to ascending order).
// With the pivot in its final position, we will have lower values ​​on the left and higher
// values ​​on the right, this procedure, in this case, is called Partition.
// We now have two subpartitions, now we just need to do the same procedure
// for both, choosing a pivot, organizing the values, creating new subpartitions.
// If we continue like this at a certain moment, the entire array will be ordered.

// Example, suppose we have the sequence of numbers: 492815
// We chose the last value "5" as the pivot.
// We organize smaller than the pivot to the left and the largest ones to the right.
// So we have: 421(5)98. Now we do the same for: 421 and 98. so on
// For more detailed INFO: https://pt.wikipedia.org/wiki/Quicksort

// Function responsible for exchanging two values
stock swapValues(&value_1, &value_2) {
    new temp_Value = value_1;
    value_1 = value_2;
    value_2 = temp_Value;
}

// This function uses QuickSort and organizes the values ​​in an ascending way;
stock QuickSort_Asc(baseArray[], lowestIndex, highestIndex){
	if(lowestIndex < highestIndex){

        // We declare the necessary variables
		new pivotValue = baseArray[highestIndex]; // We take the pivot as the value of the last index
		new pivotRelativeIndex = lowestIndex; // We start a new value with the relative position of the pivot (position that we will assume after in the partition)

        // We perform the partition (it is usually done in a separate function)
		for(new i = lowestIndex; i < highestIndex; i++) // Loop through lowest index to highest index
			if(baseArray[i] <= pivotValue){ swapValues(baseArray[i], baseArray[pivotRelativeIndex]); pivotRelativeIndex++; } //If the value of the current position in the loop is less or equals than the position where the pivot will relatively stop, this value must be on the left, then we swap.
		swapValues(baseArray[highestIndex], baseArray[pivotRelativeIndex]); // We swap the pivot (value of the last index) with the relative position one it should be to divide the larger and smaller values.

        // Once ordened in relation to the pivot, we call this same function for the two subpartitions created.
		QuickSort_Asc(baseArray, lowestIndex, pivotRelativeIndex - 1); // Here we do the same process for values ​​greater than the pivot
		QuickSort_Asc(baseArray, pivotRelativeIndex + 1, highestIndex); // Here we do the same process for values lower than the pivot
	}
}
// QuickSort_Asc
// INPUT: 12 98 37 70 4 35 44 39 97 3
// OUTPUT: 3 4 12 35 37 39 44 70 97 98

// This function uses QuickSort and organizes the values ​​in an descending way;
stock QuickSort_Des(baseArray[], lowestIndex, highestIndex){
	if(lowestIndex < highestIndex){

        // We declare the necessary variables
		new pivotValue = baseArray[highestIndex]; // We take the pivot as the value of the last index
		new pivotRelativeIndex = lowestIndex; // We start a new value with the relative position of the pivot (position that we will assume after in the partition)

        // We perform the partition (it is usually done in a separate function)
		for(new i = lowestIndex; i < highestIndex; i++) // Loop through lowest index to highest index
			if(baseArray[i] >= pivotValue){ swapValues(baseArray[i], baseArray[pivotRelativeIndex]); pivotRelativeIndex++; } //If the value of the current position in the loop is greater or equals than the position where the pivot will relatively stop, this value must be on the left, then we swap.
		swapValues(baseArray[highestIndex], baseArray[pivotRelativeIndex]); // We swap the pivot (value of the last index) with the relative position one it should be to divide the larger and smaller values.

        // Once ordened in relation to the pivot, we call this same function for the two subpartitions created.
		QuickSort_Des(baseArray, lowestIndex, pivotRelativeIndex - 1); // Here we do the same process for values ​​greater than the pivot
		QuickSort_Des(baseArray, pivotRelativeIndex + 1, highestIndex); // Here we do the same process for values lower than the pivot
	}
}
// QuickSort_Des
// INPUT: 37 41 3 36 5 45 91 39 76 98
// OUTPUT: 98 91 76 45 41 39 37 36 5 3

// OBS: when calling it is important to remove 1 from the max size of the array,
// remember that the assignment of the values ​​starts with zero.
// So an array exArr[4] would be: exArr[0], exArr[1], exArr[2], exArr[3]
// So to order it you would use: QuickSort_Asc(exArr, 0, 3) AND NOT QuickSort_Asc(exArr, 0, 4)

// This function is optional to test the algorithm, just select
// a value in 'arraySize' and the code will generate random values 
// for each index, printing them out then sorting and printing them again.
stock testFunction(){

	//Define the Array
	const arraySize = 10;
    new testArray[arraySize];

    //Generate Random values for each index and then print the Array
    for (new i = 0; i < arraySize; i++) { testArray[i] = random(100); printf("Index[%i]: %d", i, testArray[i]); }

    //Call the QuickSort_Asc function
    QuickSort_Asc(testArray, 0, arraySize - 1);
    print("----");

    //Print the Array again
    for (new i = 0; i < arraySize; i++) { printf("Index[%i]: %d", i, testArray[i]); }
}
