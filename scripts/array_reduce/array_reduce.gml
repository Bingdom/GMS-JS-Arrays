///@function array_reduce(array, callbackFn, [initialValue])
function array_reduce(array, callbackFn, initialValue) {
	var previousValue = initialValue ?? array[0];
	
	for(var i= !is_undefined(initialValue) ? 0 : 1; i<array_length(array); i++) {
		previousValue = callbackFn(previousValue, array[i], i);
	}
	
	return previousValue;
}