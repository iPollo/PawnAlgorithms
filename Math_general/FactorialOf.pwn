// Recursive Factorial Algorithm
// Original Post By: @iPollo
// Maintainers: @iPollo
  
// This function calculates the factorial of a number using recursion.
// Factorial of a number is the product of all positive integers less than or equal to it.
// Factorial of 5 (or 5!) = 5 * 4 * 3 * 1
// Note: 0! = 1

stock FactorialOf(value)
	return value > 1 ? value * FactorialOf(value - 1) : 1;

// INPUT: 5
// OUTPUT: 120
