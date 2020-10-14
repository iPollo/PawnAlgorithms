// GetDistance3D Function
// Original Post By: @iPollo
// Maintainers: @iPollo

// This function returns the distance between three points in a three-dimensional space
stock Float:GetDistance3D(Float:xPosPoint1, Float:yPosPoint1, Float:zPosPoint1, Float:xPosPoint2, Float:yPosPoint2, Float:zPosPoint2)
	return floatsqroot((((xPosPoint1-xPosPoint2)*(xPosPoint1-xPosPoint2))+((yPosPoint1-yPosPoint2)*(yPosPoint1-yPosPoint2))+((zPosPoint1-zPosPoint2)*(zPosPoint1-zPosPoint2))));
// GetDistance3D
// INPUT: (1, 2, 3, 8, 2, 5) Distance between 1,2,3 and 8,2,5
// OUTPUT: 7.28