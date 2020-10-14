// Square Geometry
// Original Post By: @iPollo
// Maintainers: @iPollo

// Get the Square Area
stock SquareArea(Float:sideLength)
    return sideLength * sideLength;
// SquareArea
// INPUT: 2
// OUTPUT: 4

// Get the Square Perimeter
stock SquarePerimeter(Float:sideLength)
    return 4 * sideLength;
// SquareArea
// INPUT: 2
// OUTPUT: 8

// Get the Square Diagonal
stock SquareDiagonal(Float:sideLength)
    return sideLength * floatsqroot(2.0);
// SquareDiagonal
// INPUT: 2
// OUTPUT: 2.828427

// Get the Square Side By Perimeter
stock SquareSideByPerimeter(Float:perimeterValue)
	return perimeterValue/4;
// SquareSideByPerimeter
// INPUT: 8
// OUTPUT: 2

// Get the Square Side By Area
stock SquarePerimeterByArea(Float:areaValue)
	return floatsqroot(areaValue) * 4;
// SquarePerimeterByArea
// INPUT: 4
// OUTPUT: 8