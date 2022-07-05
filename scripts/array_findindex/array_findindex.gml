///@function array_findIndex(array, predicate)
function array_findIndex(array, predicate){
	for(var i=0; i<array_length(array); i++) {
		if (predicate(array[i], i, array)) {
			return i;	
		}
	}
	return -1;
}