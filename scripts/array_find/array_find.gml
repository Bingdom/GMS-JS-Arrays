///@function array_find(array, predicate)
///@arg {Array<Any*>} array The array to work with.
///@arg {Function} predicate A function returning true or false on elements in the array.
///@return {Any*}
///@desc Return the first value in the array satisfying the predicate. If not found, return undefined.
function array_find(array, predicate){
	//Feather disable GM1061
	for(var i=0; i<array_length(array); i++) {
		if (predicate(array[i], i, array)) {
			return array[i];
		}
	}
	//Feather disable GM1045
	return undefined;
}
