///@function array_filter(array, predicate)
function array_filter(array, predicate){
	var array_cpy = [];
	
	for(var i=0; i<array_length(array); i++) {
		if (predicate(array[i], i, array)) {
			array_push(array_cpy, array[i]);	
		}
	}
	
	return array_cpy;
}