///@function array_findIndex(array, predicate)
///@arg {Array} array The array to work with.
///@arg {Function} predicate A function returning true or false on elements in the array.
///@return {real}
///@desc Return the first index of the array that satisfies the predicate. If not found, return -1.
function array_findIndex(array, predicate){
	//Feather disable GM1061
	for(var i=0; i<array_length(array); i++) {
		if (predicate(array[i], i, array)) {
			return i;	
		}
	}
	return -1;
}
