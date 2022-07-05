///@function array_find(array, predicate
function array_find(array, predicate){
	for(var i=0; i<array_length(array); i++) {
		if (predicate(array[i], i, array)) {
			return array[i];
		}
	}	
	return undefined;
}