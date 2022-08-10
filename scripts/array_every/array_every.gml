///@function array_every(array, predicate)
///@arg {Array} array The array to work with.
///@arg {Function} predicate A function returning true or false on elements in the array.
///@return {bool}
///@desc Return whether every entry in the array satisfies the predicate.
function array_every(array, predicate) {
	//Feather disable GM1061
	for(var i=0; i<array_length(array); i++) {
		if (!predicate(array[i], i, array)) {
			return false;	
		}
	}
	return true;
}
