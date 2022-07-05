function array_every(array, predicate) {
	for(var i=0; i<array_length(array); i++) {
		if (!predicate(array[i], i, array)) {
			return false;	
		}
	}
	return true;
}