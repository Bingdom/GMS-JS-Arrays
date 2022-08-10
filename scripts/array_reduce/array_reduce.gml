///@function array_reduce(array, callbackFn, [initialValue])
///@arg {Array} array The array to work with.
///@arg {Function} callbackFn A function to call iteratively, accepting a previous value, a current value, and a position value.
///@arg initialValue (Optional) The starting value to begin reducing if the array is empty.
///@return {Any}
///@desc Execute the callback on each element of the array, in order, passing in the return value of the preceding call and the current element. Return the final result.
function array_reduce(array, callbackFn, initialValue) {
	//Feather disable GM1061
	var previousValue = initialValue ?? array[0];
	
	for(var i= !is_undefined(initialValue) ? 0 : 1; i<array_length(array); i++) {
		previousValue = callbackFn(previousValue, array[i], i);
	}
	
	return previousValue;
}
