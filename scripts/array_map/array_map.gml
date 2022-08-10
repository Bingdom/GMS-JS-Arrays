///@function array_map(array, func)
///@arg {Array<Any>} array The array to work with.
///@arg {Function} func A function to run on each entry in the array and return a value.
///@return {Array<Any>}
///@desc Return a new array populated with the result of calling the provided function on each array entry.
function array_map(array, func){
	var arr_cpy = array_create(array_length(array));
	
	for(var i=0; i<array_length(arr_cpy); i++) {
		arr_cpy[i] = func(array[i], i, array);
	}
	
	return arr_cpy;
}
