// Square Geometry
// Original Post By: @iPollo
// Maintainers: @iPollo @coool9

// Get the Square Area
stock Float:SquareArea(Float:sideLength)
    return sideLength * sideLength;
// SquareArea
// INPUT: 2.0
// OUTPUT: 4.0

// Get the Square Perimeter
stock Float:SquarePerimeter(Float:sideLength)
    return 4 * sideLength;
// SquareArea
// INPUT: 2.0
// OUTPUT: 8.0

// Get the Square Diagonal
stock Float:SquareDiagonal(Float:sideLength)
    return sideLength * floatsqroot(2.0);
// SquareDiagonal
// INPUT: 2.0
// OUTPUT: 2.828427

// Get the Square Side By Perimeter
stock Float:SquareSideByPerimeter(Float:perimeterValue)
	return perimeterValue/4;
// SquareSideByPerimeter
// INPUT: 8.0
// OUTPUT: 2.0

// Get the Square Side By Area
stock Float:SquarePerimeterByArea(Float:areaValue)
	return floatsqroot(areaValue) * 4;
// SquarePerimeterByArea
// INPUT: 4.0
// OUTPUT: 8.0
