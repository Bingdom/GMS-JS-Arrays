///@function array_map(array, func)
function array_map(array, func){
	var arr_cpy = array_create(array_length(array));
	
	for(var i=0; i<array_length(arr_cpy); i++) {
		arr_cpy[i] = func(array[i], i, array);
	}
	
	return arr_cpy;
}