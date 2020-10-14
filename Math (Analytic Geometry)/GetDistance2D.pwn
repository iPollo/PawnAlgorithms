// GetDistance2D Function
// Original Post By: @iPollo
// Maintainers: @iPollo

// This function returns the distance between two points in a two-dimensional space
stock Float:GetDistance2D(Float:xPosPoint1, Float:yPosPoint1, Float:xPosPoint2, Float:yPosPoint2)
	return floatsqroot((((xPosPoint1-xPosPoint2)*(xPosPoint1-xPosPoint2))+((yPosPoint1-yPosPoint2)*(yPosPoint1-yPosPoint2))));
// GetDistance2D
// INPUT: (1, 2, 8, 2) Distance between 1,2 and 8,2
// OUTPUT: 7