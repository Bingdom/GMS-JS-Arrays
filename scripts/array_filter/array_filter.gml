///@function array_filter(array, predicate)
///@arg {Array<Any*>} array The array to work with.
///@arg {Function} predicate A function returning true or false on elements in the array.
///@return {Array<Any*>}
///@desc Return a new array containing only entries from the original array that satisfy the predicate.
function array_filter(array, predicate){
	var array_cpy = [];
	
	for(var i=0; i<array_length(array); i++) {
		if (predicate(array[i], i, array)) {
			array_push(array_cpy, array[i]);
		}
	}
	
	return array_cpy;
}
