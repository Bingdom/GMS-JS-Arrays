function array_some(array, predicate){
	for(var i=0; i<array_length(array); i++) {
		if (predicate(array[i], i, array)) {
			return true;	
		}
	}
	return false;
}