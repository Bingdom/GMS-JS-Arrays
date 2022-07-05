function array_flat(array, depth = 1){
	var array_cpy = [];
	for(var i=0; i<array_length(array); i++) {
		var element = array[i];
		if (is_array(element) and depth > 0) {
			 array_cpy = array_concat(array_cpy, array_flat(element, depth - 1));
		} else {
			array_push(array_cpy, element);	
		}
	}
	return array_cpy;
}